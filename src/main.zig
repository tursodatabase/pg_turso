const std = @import("std");
const testing = std.testing;

const pg = @cImport({
    @cInclude("postgres.h");
    @cInclude("replication/logical.h");
    @cInclude("utils/memutils.h");
    @cInclude("utils/builtins.h");
    @cInclude("utils/lsyscache.h");
});

const print_insert = @import("util.zig").print_insert;
const print_update = @import("util.zig").print_update;
const print_delete = @import("util.zig").print_delete;
const send = @import("util.zig").send;
const span_text = @import("util.zig").span_text;

// Magic PostgreSQL symbols to indicate it's a loadable module
pub const PG_MAGIC_FUNCTION_NAME = Pg_magic_func;
pub const PG_MAGIC_FUNCTION_NAME_STRING = "Pg_magic_func";

pub const PGModuleMagicFunction = ?*const fn () callconv(.C) [*c]const Pg_magic_struct;
pub const Pg_magic_struct = extern struct {
    len: c_int,
    version: c_int,
    funcmaxargs: c_int,
    indexmaxkeys: c_int,
    namedatalen: c_int,
    float8byval: c_int,
    abi_extra: [32]u8,
};

pub export fn Pg_magic_func() [*c]const Pg_magic_struct {
    const Pg_magic_data = struct {
        const static: Pg_magic_struct = Pg_magic_struct{
            .len = @bitCast(@as(c_uint, @truncate(@sizeOf(Pg_magic_struct)))),
            .version = @divTrunc(@as(c_int, 150000), @as(c_int, 100)),
            .funcmaxargs = @as(c_int, 100),
            .indexmaxkeys = @as(c_int, 32),
            .namedatalen = @as(c_int, 64),
            .float8byval = @as(c_int, 1),
            .abi_extra = [32]u8{ 'P', 'o', 's', 't', 'g', 'r', 'e', 'S', 'Q', 'L', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 },
        };
    };
    return &Pg_magic_data.static;
}
// end of magic PostgreSQL symbols

pub export fn _PG_output_plugin_init(arg_cb: [*c]pg.OutputPluginCallbacks) void {
    std.debug.print("Welcome to pgturso\n", .{});
    var cb = arg_cb;
    cb.*.startup_cb = &pgturso_startup;
    cb.*.shutdown_cb = &pgturso_shutdown;
    cb.*.begin_cb = &pgturso_begin_txn;
    cb.*.change_cb = &pgturso_change;
    cb.*.commit_cb = &pgturso_commit_txn;
    cb.*.truncate_cb = &pgturso_truncate;
    cb.*.filter_by_origin_cb = &pgturso_filter;

    // NOTICE: optional, not used in pgturso at the moment
    //    cb.*.message_cb = &pgturso_message;
    //    cb.*.filter_prepare_cb = &pgturso_filter_prepare;
    //    cb.*.begin_prepare_cb = &pgturso_begin_prepare_txn;
    //    cb.*.prepare_cb = &pgturso_prepare_txn;
    //    cb.*.commit_prepared_cb = &pgturso_commit_prepared_txn;
    //    cb.*.rollback_prepared_cb = &pgturso_rollback_prepared_txn;
    //    cb.*.stream_start_cb = &pgturso_stream_start;
    //    cb.*.stream_stop_cb = &pgturso_stream_stop;
    //    cb.*.stream_abort_cb = &pgturso_stream_abort;
    //    cb.*.stream_prepare_cb = &pgturso_stream_prepare;
    //    cb.*.stream_commit_cb = &pgturso_stream_commit;
    //    cb.*.stream_change_cb = &pgturso_stream_change;
    //    cb.*.stream_message_cb = &pgturso_stream_message;
    //    cb.*.stream_truncate_cb = &pgturso_stream_truncate;
}

// Context for the whole plugin
const PgTursoData = struct {
    context: pg.MemoryContext,
    url: []u8,
    auth: []u8,
    table_name: []u8, // TODO: we can go wild with configuration later, make it a list of tables, etc.
};

// Context for a single transaction
const PgTursoTxnData = struct {
    stmt_list: std.json.Array,
};

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const allocator = gpa.allocator();

pub fn pgturso_startup(arg_ctx: [*c]pg.LogicalDecodingContext, arg_opt: [*c]pg.OutputPluginOptions, arg_is_init: bool) callconv(.C) void {
    std.debug.print("pgturso_startup\n", .{});

    var ctx = arg_ctx;
    var opt = arg_opt;
    _ = arg_is_init;
    // NOTICE: temporarily unused, but that's the place to insert the Turso URL and auth
    var data: *PgTursoData = undefined;
    data = @as(*PgTursoData, @ptrCast(@alignCast(pg.palloc0(@sizeOf(PgTursoData)))));
    data.*.context = pg.AllocSetContextCreateInternal(ctx.*.context, "text conversion context", 0, 8 * 1024, 8 * 1024 * 1024);
    // TODO: verify what all this stuff actually means
    ctx.*.output_plugin_private = @as(?*anyopaque, @ptrCast(data));
    opt.*.output_type = @bitCast(pg.OUTPUT_PLUGIN_TEXTUAL_OUTPUT);
    opt.*.receive_rewrites = true;

    var option: [*c]pg.ListCell = undefined;
    var option__state: pg.ForEachState = pg.ForEachState{
        .l = ctx.*.output_plugin_options,
        .i = 0,
    };
    while ((if ((option__state.l != null) and (option__state.i < option__state.l.*.length)) blk: {
        option = &(blk_1: {
            const tmp = option__state.i;
            if (tmp >= 0) break :blk_1 option__state.l.*.elements + @as(usize, @intCast(tmp)) else break :blk_1 option__state.l.*.elements - ~@as(usize, @bitCast(@as(isize, @intCast(tmp)) +% -1));
        }).*;
        break :blk @as(c_int, 1);
    } else blk: {
        option = null;
        break :blk @as(c_int, 0);
    }) != 0) : (option__state.i += 1) {
        var elem: [*c]pg.DefElem = @as([*c]pg.DefElem, @ptrCast(@alignCast(option.*.ptr_value)));
        // FIXME: accept URLs and tokens longer than 256B
        if (std.mem.eql(u8, elem.*.defname[0..3], "url")) {
            const url_string = std.mem.span(@as([*c]pg.String, @ptrCast(@alignCast(elem.*.arg))).*.sval);
            data.*.url = std.fmt.allocPrint(allocator, "{s}", .{url_string}) catch unreachable;
        } else if (std.mem.eql(u8, elem.*.defname[0..4], "auth") or std.mem.eql(u8, elem.*.defname[0..5], "token")) {
            const auth_string = std.mem.span(@as([*c]pg.String, @ptrCast(@alignCast(elem.*.arg))).*.sval);
            data.*.auth = std.fmt.allocPrint(allocator, "Bearer {s}", .{auth_string}) catch unreachable;
        } else if (std.mem.eql(u8, elem.*.defname[0..10], "table_name")) {
            const table_name_string = std.mem.span(@as([*c]pg.String, @ptrCast(@alignCast(elem.*.arg))).*.sval);
            data.*.table_name = std.fmt.allocPrint(allocator, "{s}", .{table_name_string}) catch unreachable;
        } else {
            std.debug.print("pgturso_startup: unknown option: {s}\n", .{elem.*.defname});
        }
        std.debug.print("Replicated table name: {s}\n", .{data.*.table_name});
    }

    // TODO: what's streaming?
    ctx.*.streaming = false;
}

pub fn pgturso_shutdown(arg_ctx: [*c]pg.LogicalDecodingContext) callconv(.C) void {
    var data: *PgTursoData = @as(*PgTursoData, @ptrCast(@alignCast(arg_ctx.*.output_plugin_private)));
    allocator.free(data.*.url);
    allocator.free(data.*.auth);
    allocator.free(data.*.table_name);
    pg.MemoryContextDelete(data.*.context);
}

pub fn pgturso_begin_txn(ctx: [*c]pg.LogicalDecodingContext, txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
    // NOTICE: PgTursoTxnData is lazily allocated on first statement, to avoid allocations on empty blocks
    _ = ctx;
    _ = txn;
}

// We could create the full JSON object here, but it's more efficient to operate on a list of statements,
// and only wrap them into an object right before sending them to Turso.
fn init_stmt_list() !std.json.Array {
    return std.json.Array.initCapacity(allocator, 3);
}

pub fn pgturso_change(ctx: [*c]pg.LogicalDecodingContext, txn: [*c]pg.ReorderBufferTXN, relation: pg.Relation, change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    var data: *PgTursoData = @as(*PgTursoData, @ptrCast(@alignCast(ctx.*.output_plugin_private)));
    var txndata: ?*PgTursoTxnData = @as(?*PgTursoTxnData, @ptrCast(@alignCast(txn.*.output_plugin_private)));
    var class_form: pg.Form_pg_class = relation.*.rd_rel;
    var tupdesc: pg.TupleDesc = relation.*.rd_att;
    var old: pg.MemoryContext = pg.MemoryContextSwitchTo(data.*.context);

    // NOTICE: it's easy to get qualified names with pg_quote_qualified_identifier,
    // but let's simplify it without namespaces for now.
    const table = if (class_form.*.relrewrite != 0) pg.get_rel_name(class_form.*.relrewrite) else @as([*c]u8, @ptrCast(@alignCast(&class_form.*.relname.data)));

    if (!std.mem.eql(u8, std.mem.span(table), data.*.table_name)) {
        std.debug.print("Ignoring table <{s}>, because it's not <{s}>.\n", .{ table, data.*.table_name });
        return;
    }

    // Initialize transaction data if it's not there yet
    if (txndata == null) {
        txndata = @as(?*PgTursoTxnData, @ptrCast(@alignCast(pg.MemoryContextAllocZero(ctx.*.context, @sizeOf(PgTursoTxnData)))));
        txn.*.output_plugin_private = @as(?*anyopaque, @ptrCast(txndata));
        txndata.?.*.stmt_list = init_stmt_list() catch unreachable;
        txndata.?.*.stmt_list.append(std.json.Value{ .string = "BEGIN" }) catch unreachable;
    }

    var stmt_buf: [65536]u8 = undefined; // TODO: is this static limit good enough?

    switch (change.*.action) {
        pg.REORDER_BUFFER_CHANGE_INSERT => {
            const prefix = std.fmt.bufPrint(&stmt_buf, "INSERT INTO {s} ", .{table}) catch unreachable;
            var offset = prefix.len;
            if (change.*.data.tp.newtuple == null) {
                std.debug.print("INSERT: (no-tuple-data)", .{});
            } else {
                offset += print_insert(stmt_buf[offset..], tupdesc, &change.*.data.tp.newtuple.*.tuple) catch unreachable;
                if (offset == 0) {
                    std.debug.print("NO INSERT INFO!!!", .{});
                } else {
                    std.debug.print("Statement: {s}\n", .{stmt_buf[0..offset]});
                    const stmt = std.fmt.allocPrint(allocator, "{s}", .{stmt_buf[0..offset]}) catch unreachable;
                    txndata.?.*.stmt_list.append(std.json.Value{ .string = stmt }) catch unreachable;
                }
            }
        },
        pg.REORDER_BUFFER_CHANGE_UPDATE => {
            const prefix = std.fmt.bufPrint(&stmt_buf, "UPDATE {s} SET ", .{table}) catch unreachable;
            var offset = prefix.len;
            var oldtuple: pg.HeapTuple = null;
            if (change.*.data.tp.oldtuple != null) {
                oldtuple = &change.*.data.tp.oldtuple.*.tuple;
            }
            if (change.*.data.tp.newtuple == null) {
                std.debug.print("UPDATE (no-tuple-data)", .{});
            } else {
                const key_attrs: [*c]pg.Bitmapset = pg.RelationGetIndexAttrBitmap(relation, pg.INDEX_ATTR_BITMAP_PRIMARY_KEY);
                defer pg.bms_free(key_attrs);
                offset += print_update(stmt_buf[offset..], tupdesc, key_attrs, &change.*.data.tp.newtuple.*.tuple, oldtuple) catch unreachable;
                if (offset == 0) {
                    std.debug.print("NO UPDATE INFO!!!", .{});
                } else {
                    std.debug.print("Statement: {s}\n", .{stmt_buf[0..offset]});
                    const stmt = std.fmt.allocPrint(allocator, "{s}", .{stmt_buf[0..offset]}) catch unreachable;
                    txndata.?.*.stmt_list.append(std.json.Value{ .string = stmt }) catch unreachable;
                }
            }
        },
        pg.REORDER_BUFFER_CHANGE_DELETE => {
            const prefix = std.fmt.bufPrint(&stmt_buf, "DELETE FROM {s} ", .{table}) catch unreachable;
            var offset = prefix.len;
            if (change.*.data.tp.oldtuple == null) {
                std.debug.print("DELETE: (no-tuple-data)", .{});
            } else {
                offset += print_delete(stmt_buf[offset..], tupdesc, &change.*.data.tp.oldtuple.*.tuple) catch unreachable;
                if (offset == 0) {
                    std.debug.print("NO DELETE INFO!!!", .{});
                } else {
                    std.debug.print("Statement: {s}\n", .{stmt_buf[0..offset]});
                    const stmt = std.fmt.allocPrint(allocator, "{s}", .{stmt_buf[0..offset]}) catch unreachable;
                    txndata.?.*.stmt_list.append(std.json.Value{ .string = stmt }) catch unreachable;
                }
            }
        },
        else => {
            std.debug.print("Unknown change\n", .{});
        },
    }

    _ = pg.MemoryContextSwitchTo(old);
    pg.MemoryContextReset(data.*.context);
}

pub fn pgturso_commit_txn(ctx: [*c]pg.LogicalDecodingContext, txn: [*c]pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
    _ = arg_commit_lsn;
    var data: *PgTursoData = @as(*PgTursoData, @ptrCast(@alignCast(ctx.*.output_plugin_private)));

    var txndata: ?*PgTursoTxnData = @as(?*PgTursoTxnData, @ptrCast(@alignCast(txn.*.output_plugin_private)));
    if (txndata == null) {
        std.debug.print("pgturso_commit_txn: no txndata\n", .{});
        return;
    }

    txndata.?.*.stmt_list.append(std.json.Value{ .string = "COMMIT" }) catch unreachable;
    defer txndata.?.*.stmt_list.deinit();

    var object_map = std.json.ObjectMap.init(allocator);
    defer object_map.deinit();
    object_map.put("statements", std.json.Value{ .array = txndata.?.*.stmt_list }) catch unreachable;
    const json_payload = std.json.Value{ .object = object_map };

    send(data.*.url, data.*.auth, json_payload) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
    };

    _ = txndata.?.*.stmt_list.pop(); // popping COMMIT
    for (txndata.?.*.stmt_list.items[1..]) |stmt| { // skipping BEGIN
        allocator.free(stmt.string);
    }

    pg.pfree(@as(?*anyopaque, @ptrCast(txndata)));
    txn.*.output_plugin_private = null;
}

pub fn pgturso_truncate(ctx: [*c]pg.LogicalDecodingContext, txn: [*c]pg.ReorderBufferTXN, arg_nrelations: c_int, arg_relations: [*c]pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    var nrelations = arg_nrelations;
    var relations = arg_relations;
    _ = arg_change;
    var data = @as(*PgTursoData, @ptrCast(@alignCast(ctx.*.output_plugin_private)));
    var old: pg.MemoryContext = pg.MemoryContextSwitchTo(data.*.context);

    var txndata: ?*PgTursoTxnData = @as(?*PgTursoTxnData, @ptrCast(@alignCast(txn.*.output_plugin_private)));
    // Initialize transaction data if it's not there yet
    if (txndata == null) {
        txndata = @as(?*PgTursoTxnData, @ptrCast(@alignCast(pg.MemoryContextAllocZero(ctx.*.context, @sizeOf(PgTursoTxnData)))));
        txn.*.output_plugin_private = @as(?*anyopaque, @ptrCast(txndata));
        txndata.?.*.stmt_list = init_stmt_list() catch unreachable;
        txndata.?.*.stmt_list.append(std.json.Value{ .string = "BEGIN" }) catch unreachable;
    }

    var i: i32 = 0;
    while (i < nrelations) : (i += 1) {
        // TODO: rephrase this translate-c abomination and deduplicate getting qualified id
        const table = @as([*c]u8, @ptrCast(@alignCast(&(blk: {
            const tmp = i;
            if (tmp >= 0) break :blk relations + @as(usize, @intCast(tmp)) else break :blk relations - ~@as(usize, @intCast(@as(isize, @intCast(tmp)) +% -1));
        }).*.*.rd_rel.*.relname.data)));
        const stmt = std.fmt.allocPrint(allocator, "DELETE FROM {s}", .{table}) catch unreachable;
        txndata.?.*.stmt_list.append(std.json.Value{ .string = stmt }) catch unreachable;
    }

    _ = pg.MemoryContextSwitchTo(old);
    pg.MemoryContextReset(data.*.context);
}

pub fn pgturso_filter(arg_ctx: [*c]pg.LogicalDecodingContext, arg_origin_id: pg.RepOriginId) callconv(.C) bool {
    _ = arg_ctx;
    _ = arg_origin_id;
    return false;
}

// NOTICE: optional, not used in pgturso at the moment

// pub fn pgturso_message(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_lsn: pg.XLogRecPtr, arg_transactional: bool, arg_prefix: [*c]const u8, arg_sz: pg.Size, arg_message: [*c]const u8) callconv(.C) void {
//     std.debug.print("pgturso_message {*} {*} {} {} {*} {} {*}\n", .{ arg_ctx, arg_txn, arg_lsn, arg_transactional, arg_prefix, arg_sz, arg_message });
// }
//
// pub fn pgturso_filter_prepare(arg_ctx: [*c]pg.LogicalDecodingContext, arg_xid: pg.TransactionId, arg_gid: [*c]const u8) callconv(.C) bool {
//     std.debug.print("pgturso_filter_prepare {*} {} {*}\n", .{ arg_ctx, arg_xid, arg_gid });
//     return true;
// }
//
// pub fn pgturso_begin_prepare_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
//     std.debug.print("pgturso_begin_prepare_txn {*} {*}\n", .{ arg_ctx, arg_txn });
// }
//
// pub fn pgturso_prepare_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_prepare_lsn: pg.XLogRecPtr) callconv(.C) void {
//     std.debug.print("pgturso_prepare_txn {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_prepare_lsn });
// }
//
// pub fn pgturso_commit_prepared_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
//     std.debug.print("pgturso_commit_prepared_txn {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_commit_lsn });
// }
//
// pub fn pgturso_rollback_prepared_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_prepare_end_lsn: pg.XLogRecPtr, arg_prepare_time: pg.TimestampTz) callconv(.C) void {
//     std.debug.print("pgturso_rollback_prepared_txn {*} {*} {} {}\n", .{ arg_ctx, arg_txn, arg_prepare_end_lsn, arg_prepare_time });
// }
//
// pub fn pgturso_stream_start(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
//     std.debug.print("pgturso_stream_start {*} {*}\n", .{ arg_ctx, arg_txn });
// }
//
// pub fn pg_output_stream_start(arg_ctx: [*c]pg.LogicalDecodingContext, arg_data: [*c]pg.TestDecodingData, arg_txn: [*c]pg.ReorderBufferTXN, arg_last_write: bool) callconv(.C) void {
//     std.debug.print("pg_output_stream_start {*} {*}\n", .{ arg_ctx, arg_data, arg_txn, arg_last_write });
// }
//
// pub fn pgturso_stream_stop(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
//     std.debug.print("pgturso_stream_stop {*} {*}\n", .{ arg_ctx, arg_txn });
// }
//
// pub fn pgturso_stream_abort(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_abort_lsn: pg.XLogRecPtr) callconv(.C) void {
//     std.debug.print("pgturso_stream_abort {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_abort_lsn });
// }
//
// pub fn pgturso_stream_prepare(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_prepare_lsn: pg.XLogRecPtr) callconv(.C) void {
//     std.debug.print("pgturso_stream_prepare {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_prepare_lsn });
// }
//
// pub fn pgturso_stream_commit(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
//     std.debug.print("pgturso_stream_commit {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_commit_lsn });
// }
//
// pub fn pgturso_stream_change(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_relation: pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
//     std.debug.print("pgturso_stream_change {*} {*} {*} {*}\n", .{ arg_ctx, arg_txn, arg_relation, arg_change });
// }
//
// pub fn pgturso_stream_message(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_lsn: pg.XLogRecPtr, arg_transactional: bool, arg_prefix: [*c]const u8, arg_sz: pg.Size, arg_message: [*c]const u8) callconv(.C) void {
//     std.debug.print("pgturso_stream_message {*} {*} {} {} {*} {} {*}\n", .{ arg_ctx, arg_txn, arg_lsn, arg_transactional, arg_prefix, arg_sz, arg_message });
// }
//
// pub fn pgturso_stream_truncate(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_nrelations: c_int, arg_relations: [*c]pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
//     std.debug.print("pgturso_stream_truncate {*} {*} {} {*} {*}\n", .{ arg_ctx, arg_txn, arg_nrelations, arg_relations, arg_change });
// }

//
// User-defined functions
//

// TODO: make this function accept a schema, translate it to something that Turso understands,
// and send it over the HTTP API.
// Example how to instantiate the function in Postgres:
//     CREATE FUNCTION turso_send(url text, token text, data text) RETURNS text AS '/usr/lib/postgresql/pgturso' LANGUAGE C STRICT;
pub export fn turso_send(arg_fcinfo: pg.FunctionCallInfo) pg.Datum {
    var fcinfo = arg_fcinfo;
    var url: [*c]pg.text = pg.DatumGetTextPP(fcinfo.*.args()[0].value);
    var token: [*c]pg.text = pg.DatumGetTextPP(fcinfo.*.args()[1].value);
    var data: [*c]pg.text = pg.DatumGetTextPP(fcinfo.*.args()[2].value);

    var object_map = std.json.ObjectMap.init(allocator);
    var stmt_list = std.json.Array.initCapacity(allocator, 1) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
        return 0;
    };
    //defer stmt_list.deinit();
    stmt_list.append(std.json.Value{ .string = span_text(data) }) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
        return 0;
    };
    object_map.put("statements", std.json.Value{ .array = stmt_list }) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
        return 0;
    };
    //defer object_map.deinit();
    const json_payload = std.json.Value{ .object = object_map };

    send(span_text(url), span_text(token), json_payload) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
    };

    return pg.PointerGetDatum(data); // return something useful here
}
pub export fn pg_finfo_turso_send() [*c]const pg.Pg_finfo_record {
    const my_finfo = struct {
        const static: pg.Pg_finfo_record = pg.Pg_finfo_record{
            .api_version = 1,
        };
    };
    return &my_finfo.static;
}
