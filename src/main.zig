const std = @import("std");
const testing = std.testing;

const pg = @cImport({
    @cInclude("postgres.h");
    @cInclude("replication/logical.h");
    @cInclude("utils/memutils.h");
    @cInclude("utils/builtins.h");
    @cInclude("utils/lsyscache.h");
});

const util = @import("util.zig");
const print_insert = util.print_insert;
const print_update = util.print_update;
const print_delete = util.print_delete;
const send = util.send;
const span_text = util.span_text;

// Magic PostgreSQL symbols to indicate it's a loadable module
pub const PG_MAGIC_FUNCTION_NAME = Pg_magic_func;
pub const PG_MAGIC_FUNCTION_NAME_STRING = "Pg_magic_func";

pub const PGModuleMagicFunction = ?*const fn () callconv(.C) *const Pg_magic_struct;
pub const Pg_magic_struct = extern struct {
    len: c_int,
    version: c_int,
    funcmaxargs: c_int,
    indexmaxkeys: c_int,
    namedatalen: c_int,
    float8byval: c_int,
    abi_extra: [32]u8,
};

pub export fn Pg_magic_func() *const Pg_magic_struct {
    const Pg_magic_data = struct {
        const static: Pg_magic_struct = Pg_magic_struct{
            .len = @sizeOf(Pg_magic_struct),
            .version = 15_00,
            .funcmaxargs = 100,
            .indexmaxkeys = 32,
            .namedatalen = 64,
            .float8byval = 1,
            .abi_extra = "PostgreSQL".* ++ [1]u8{0} ** 22,
        };
    };
    return &Pg_magic_data.static;
}
// end of magic PostgreSQL symbols

pub export fn _PG_output_plugin_init(cb: *pg.OutputPluginCallbacks) void {
    std.debug.print("Welcome to pg_turso\n", .{});
    cb.startup_cb = &pg_turso_startup;
    cb.shutdown_cb = &pg_turso_shutdown;
    cb.begin_cb = &pg_turso_begin_txn;
    cb.change_cb = &pg_turso_change;
    cb.commit_cb = &pg_turso_commit_txn;
    cb.truncate_cb = &pg_turso_truncate;
    cb.filter_by_origin_cb = &pg_turso_filter;

    // NOTICE: optional, not used in pg_turso at the moment
    //    cb.message_cb = &pg_turso_message;
    //    cb.filter_prepare_cb = &pg_turso_filter_prepare;
    //    cb.begin_prepare_cb = &pg_turso_begin_prepare_txn;
    //    cb.prepare_cb = &pg_turso_prepare_txn;
    //    cb.commit_prepared_cb = &pg_turso_commit_prepared_txn;
    //    cb.rollback_prepared_cb = &pg_turso_rollback_prepared_txn;
    //    cb.stream_start_cb = &pg_turso_stream_start;
    //    cb.stream_stop_cb = &pg_turso_stream_stop;
    //    cb.stream_abort_cb = &pg_turso_stream_abort;
    //    cb.stream_prepare_cb = &pg_turso_stream_prepare;
    //    cb.stream_commit_cb = &pg_turso_stream_commit;
    //    cb.stream_change_cb = &pg_turso_stream_change;
    //    cb.stream_message_cb = &pg_turso_stream_message;
    //    cb.stream_truncate_cb = &pg_turso_stream_truncate;
}

// Context for the whole plugin
const PgTursoData = struct {
    context: pg.MemoryContext,
    url: []u8,
    auth: []u8,
    table_name: []u8, // TODO: we should accept a list of tables
    // TODO: we should also implement optional filtering of columns and values
};

// Context for a single transaction
const PgTursoTxnData = struct {
    stmt_list: std.json.Array,
};

var gpa: std.heap.GeneralPurposeAllocator(.{}) = .{};
const allocator = gpa.allocator();

pub fn pg_turso_startup(c_ctx: ?*pg.LogicalDecodingContext, c_opt: ?*pg.OutputPluginOptions, arg_is_init: bool) callconv(.C) void {
    std.debug.print("pg_turso_startup\n", .{});
    _ = arg_is_init;
    const ctx: *pg.LogicalDecodingContext = c_ctx.?;
    const opt: *pg.OutputPluginOptions = c_opt.?;

    const data: *PgTursoData = @ptrCast(@alignCast(pg.palloc0(@sizeOf(PgTursoData))));
    data.context = pg.AllocSetContextCreateInternal(ctx.context, "text conversion context", 0, 8 * 1024, 8 * 1024 * 1024);
    ctx.output_plugin_private = @ptrCast(data);
    opt.output_type = @bitCast(pg.OUTPUT_PLUGIN_TEXTUAL_OUTPUT);
    opt.receive_rewrites = true;

    const options: []pg.ListCell = options: {
        const list: *pg.List = list: {
            const optional_list: ?*pg.List = ctx.output_plugin_options;
            break :list optional_list.?;
        };

        const elements: [*]pg.ListCell = elements: {
            const optional_elements: ?[*]pg.ListCell = list.elements;
            break :elements optional_elements.?;
        };
        const len: usize = @intCast(list.length);
        break :options elements[0..len];
    };

    for (options) |*option| {
        const elem: *pg.DefElem = @ptrCast(@alignCast(option.ptr_value.?));
        const defname: [:0]const u8 = defname: {
            const optional_defname: ?[*:0]const u8 = elem.defname;
            break :defname std.mem.sliceTo(optional_defname.?, 0);
        };

        const optional_pg_string: ?*pg.String = @ptrCast(@alignCast(elem.arg));

        if (std.mem.startsWith(u8, defname, "url")) {
            const url_string: [:0]const u8 = std.mem.sliceTo(optional_pg_string.?.sval, 0);
            data.url = std.fmt.allocPrint(allocator, "{s}", .{url_string}) catch unreachable;
        } else if (std.mem.startsWith(u8, defname, "auth") or std.mem.startsWith(u8, defname, "token")) {
            const auth_string: [:0]const u8 = std.mem.sliceTo(optional_pg_string.?.sval, 0);
            data.auth = std.fmt.allocPrint(allocator, "Bearer {s}", .{auth_string}) catch unreachable;
        } else if (std.mem.startsWith(u8, defname, "table_name")) {
            const table_name_string: [:0]const u8 = std.mem.sliceTo(optional_pg_string.?.sval, 0);
            data.table_name = std.fmt.allocPrint(allocator, "{s}", .{table_name_string}) catch unreachable;
        } else {
            std.debug.print("pg_turso_startup: unknown option: {s}\n", .{defname});
        }
        std.debug.print("Replicated table name: {s}\n", .{data.table_name});
    }

    // TODO: enable streaming large transactions once we implement b.*.stream_* callbacks
    ctx.streaming = false;
}

pub fn pg_turso_shutdown(c_arg_ctx: ?*pg.LogicalDecodingContext) callconv(.C) void {
    const arg_ctx: *pg.LogicalDecodingContext = c_arg_ctx.?;
    const data: *PgTursoData = @ptrCast(@alignCast(arg_ctx.output_plugin_private));
    allocator.free(data.url);
    allocator.free(data.auth);
    allocator.free(data.table_name);
    pg.MemoryContextDelete(data.context);
}

pub fn pg_turso_begin_txn(c_ctx: ?*pg.LogicalDecodingContext, c_txn: ?*pg.ReorderBufferTXN) callconv(.C) void {
    // NOTICE: PgTursoTxnData is lazily allocated on first statement, to avoid allocations on empty blocks
    _ = c_ctx;
    _ = c_txn;
}

// We could create the full JSON object here, but it's more efficient to operate on a list of statements,
// and only wrap them into an object right before sending them to Turso.
fn init_stmt_list() !std.json.Array {
    return std.json.Array.initCapacity(allocator, 3);
}

pub fn pg_turso_change(c_ctx: ?*pg.LogicalDecodingContext, c_txn: ?*pg.ReorderBufferTXN, c_relation: pg.Relation, c_change: ?*pg.ReorderBufferChange) callconv(.C) void {
    const ctx: *pg.LogicalDecodingContext = c_ctx.?;
    const txn: *pg.ReorderBufferTXN = c_txn.?;
    const relation: *pg.struct_RelationData = c_relation.?;
    const change: *pg.ReorderBufferChange = c_change.?;

    const data: *PgTursoData = @ptrCast(@alignCast(ctx.output_plugin_private));
    const class_form: *pg.FormData_pg_class = relation.rd_rel.?;
    const tupdesc: *pg.TupleDescData = tupdesc: {
        const optional_tupdesc: ?*pg.TupleDescData = relation.rd_att;
        break :tupdesc optional_tupdesc.?;
    };
    var old: *pg.MemoryContextData = old: {
        const optional_old: ?*pg.MemoryContextData = pg.MemoryContextSwitchTo(data.context);
        break :old optional_old.?;
    };
    defer {
        _ = pg.MemoryContextSwitchTo(old);
        pg.MemoryContextReset(data.context);
    }

    // NOTICE: it's easy to get qualified names with pg_quote_qualified_identifier,
    // but let's simplify it without namespaces for now.
    const table: [:0]const u8 = table: {
        const optional_table: ?[*:0]const u8 = if (class_form.relrewrite != 0) pg.get_rel_name(class_form.relrewrite) else @ptrCast(@alignCast(&class_form.relname.data));
        break :table std.mem.sliceTo(optional_table orelse {
            std.debug.print("Table is <NULL>", .{});
            return;
        }, 0);
    };

    if (!std.mem.eql(u8, table, data.table_name)) {
        std.debug.print("Ignoring table <{s}>, because it's not <{s}>.\n", .{ table, data.table_name });
        return;
    }

    const txndata: *PgTursoTxnData = txndata: {
        const optional_txndata: ?*PgTursoTxnData = @ptrCast(@alignCast(txn.output_plugin_private));
        break :txndata optional_txndata orelse init: {
            // Initialize transaction data if it's not there yet
            const init_txndata: *PgTursoTxnData = @ptrCast(@alignCast(pg.MemoryContextAllocZero(ctx.context, @sizeOf(PgTursoTxnData))));
            txn.output_plugin_private = @ptrCast(init_txndata);
            init_txndata.stmt_list = init_stmt_list() catch unreachable;
            init_txndata.stmt_list.append(std.json.Value{ .string = "BEGIN" }) catch unreachable;
            break :init init_txndata;
        };
    };

    // TODO: verify if this static limit is good enough; it's a good use case for a small vector
    var stmt_buf: [64 * 1024]u8 = undefined;
    var stmt_fbs = std.io.fixedBufferStream(&stmt_buf);
    const stmt_writer = stmt_fbs.writer();

    switch (change.action) {
        pg.REORDER_BUFFER_CHANGE_INSERT => insert: {
            stmt_writer.print("INSERT INTO {s} ", .{table}) catch unreachable;
            const newtuple: *pg.ReorderBufferTupleBuf = change.data.tp.newtuple orelse {
                std.debug.print("INSERT: (no-tuple-data)", .{});
                break :insert;
            };

            print_insert(stmt_writer, tupdesc, &newtuple.tuple) catch |err| switch (err) {
                error.NoInsertInfo => {
                    std.debug.print("No insert info found!", .{});
                    break :insert;
                },
                error.NoSpaceLeft => unreachable,
            };
            //if (offset == 0) { always false

            const stmt: []const u8 = stmt_fbs.getWritten();
            std.debug.print("Statement: {s}\n", .{stmt});

            const stmt_allocated: []const u8 = allocator.dupe(u8, stmt) catch unreachable;
            txndata.stmt_list.append(std.json.Value{ .string = stmt_allocated }) catch unreachable;
        },
        pg.REORDER_BUFFER_CHANGE_UPDATE => update: {
            stmt_writer.print("UPDATE {s} SET ", .{table}) catch unreachable;
            const oldtuple: ?*pg.HeapTupleData = if (change.data.tp.oldtuple != null)
                &change.data.tp.oldtuple.*.tuple
            else
                null;

            const newtuple: *pg.ReorderBufferTupleBuf = change.data.tp.newtuple orelse {
                std.debug.print("UPDATE (no-tuple-data)", .{});
                break :update;
            };

            const key_attrs: ?*pg.Bitmapset = pg.RelationGetIndexAttrBitmap(relation, pg.INDEX_ATTR_BITMAP_PRIMARY_KEY);
            defer pg.bms_free(key_attrs);
            print_update(stmt_writer, tupdesc, key_attrs, &newtuple.tuple, oldtuple) catch |err| switch (err) {
                error.NoUpdateInfo => {
                    std.debug.print("No update info found!", .{});
                    break :update;
                },
                error.NoSpaceLeft => unreachable,
            };

            const stmt: []const u8 = stmt_fbs.getWritten();
            std.debug.print("Statement: {s}\n", .{stmt});
            const stmt_allocated: []const u8 = allocator.dupe(u8, stmt) catch unreachable;
            txndata.stmt_list.append(std.json.Value{ .string = stmt_allocated }) catch unreachable;
        },
        pg.REORDER_BUFFER_CHANGE_DELETE => delete: {
            stmt_writer.print("DELETE FROM {s} ", .{table}) catch unreachable;
            const oldtuple: *pg.ReorderBufferTupleBuf = change.data.tp.oldtuple orelse {
                std.debug.print("DELETE: (no-tuple-data)", .{});
                break :delete;
            };

            print_delete(stmt_writer, tupdesc, &oldtuple.tuple) catch |err| switch (err) {
                error.NoDeleteInfo => {
                    std.debug.print("No delete info found!", .{});
                    break :delete;
                },
                error.NoSpaceLeft => unreachable,
            };

            const stmt: []const u8 = stmt_fbs.getWritten();
            std.debug.print("Statement: {s}\n", .{stmt});
            const stmt_allocated: []const u8 = allocator.dupe(u8, stmt) catch unreachable;
            txndata.stmt_list.append(std.json.Value{ .string = stmt_allocated }) catch unreachable;
        },
        else => {
            std.debug.print("Unknown change\n", .{});
        },
    }
}

pub fn pg_turso_commit_txn(c_ctx: ?*pg.LogicalDecodingContext, c_txn: ?*pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
    const ctx: *pg.LogicalDecodingContext = c_ctx.?;
    const txn: *pg.ReorderBufferTXN = c_txn.?;
    _ = arg_commit_lsn;

    const data: *PgTursoData = @ptrCast(@alignCast(ctx.output_plugin_private));

    const txndata: *PgTursoTxnData = txndata: {
        const optional_txndata: ?*PgTursoTxnData = @ptrCast(@alignCast(txn.output_plugin_private));
        break :txndata optional_txndata orelse {
            std.debug.print("pg_turso_commit_txn: no txndata\n", .{});
            return;
        };
    };

    txndata.stmt_list.append(std.json.Value{ .string = "COMMIT" }) catch unreachable;
    defer txndata.stmt_list.deinit();

    var object_map = std.json.ObjectMap.init(allocator);
    defer object_map.deinit();
    object_map.put("statements", std.json.Value{ .array = txndata.stmt_list }) catch unreachable;
    const json_payload = std.json.Value{ .object = object_map };

    send(data.url, data.auth, json_payload) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
    };

    _ = txndata.stmt_list.pop(); // popping COMMIT
    for (txndata.stmt_list.items[1..]) |stmt| { // skipping BEGIN
        allocator.free(stmt.string);
    }

    pg.pfree(@ptrCast(txndata));
    txn.output_plugin_private = null;
}

pub fn pg_turso_truncate(c_ctx: ?*pg.LogicalDecodingContext, c_txn: ?*pg.ReorderBufferTXN, c_nrelations: c_int, c_relations: ?[*]pg.Relation, c_change: ?*pg.ReorderBufferChange) callconv(.C) void {
    const ctx: *pg.LogicalDecodingContext = c_ctx.?;
    const txn: *pg.ReorderBufferTXN = c_txn.?;
    const relations: []pg.Relation = relations: {
        const relations: [*]pg.Relation = c_relations.?;
        const nrelations: usize = @intCast(c_nrelations);
        break :relations relations[0..nrelations];
    };
    _ = c_change;

    const data: *PgTursoData = @ptrCast(@alignCast(ctx.*.output_plugin_private));
    var old: pg.MemoryContext = pg.MemoryContextSwitchTo(data.*.context);

    const txndata: *PgTursoTxnData = txndata: {
        const optional_txndata: ?*PgTursoTxnData = @ptrCast(@alignCast(txn.output_plugin_private));
        break :txndata optional_txndata orelse init: {
            // Initialize transaction data if it's not there yet
            const init_txndata: *PgTursoTxnData = @ptrCast(@alignCast(pg.MemoryContextAllocZero(ctx.context, @sizeOf(PgTursoTxnData))));
            txn.output_plugin_private = @ptrCast(init_txndata);
            init_txndata.stmt_list = init_stmt_list() catch unreachable;
            init_txndata.stmt_list.append(std.json.Value{ .string = "BEGIN" }) catch unreachable;
            break :init init_txndata;
        };
    };

    for (relations) |*relation| {
        const optional_table: ?[*:0]const u8 = @ptrCast(@alignCast(&relation.*.*.rd_rel.*.relname.data));
        const table: [*:0]const u8 = optional_table.?;
        const stmt = std.fmt.allocPrint(allocator, "DELETE FROM {s}", .{table}) catch unreachable;
        txndata.stmt_list.append(std.json.Value{ .string = stmt }) catch unreachable;
    }

    _ = pg.MemoryContextSwitchTo(old);
    pg.MemoryContextReset(data.*.context);
}

pub fn pg_turso_filter(c_ctx: ?*pg.LogicalDecodingContext, c_origin_id: pg.RepOriginId) callconv(.C) bool {
    _ = c_ctx;
    _ = c_origin_id;
    return false;
}

//
// User-defined functions
//

// Sends a JSON payload to Turso.
// Example how to instantiate the function in Postgres:
// CREATE FUNCTION turso_send(url text, token text, data text) RETURNS text AS '$libdir/pg_turso' LANGUAGE C STRICT;
pub export fn turso_send(c_fcinfo: ?*pg.struct_FunctionCallInfoBaseData) pg.Datum {
    const fcinfo: *pg.struct_FunctionCallInfoBaseData = c_fcinfo.?;

    const optional_url: ?[*]pg.text = pg.DatumGetTextPP(fcinfo.*.args()[0].value);
    const optional_token: ?[*]pg.text = pg.DatumGetTextPP(fcinfo.*.args()[1].value);
    const optional_data: ?[*]pg.text = pg.DatumGetTextPP(fcinfo.*.args()[2].value);

    const url: []u8 = span_text(optional_url.?);
    const token: []u8 = span_text(optional_token.?);
    const data: []u8 = span_text(optional_data.?);

    var stmt_list = std.json.Array.initCapacity(allocator, 1) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
        return 0;
    };
    defer stmt_list.deinit();
    stmt_list.append(std.json.Value{ .string = data }) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
        return 0;
    };

    var object_map = std.json.ObjectMap.init(allocator);
    defer object_map.deinit();
    object_map.put("statements", std.json.Value{ .array = stmt_list }) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
        return 0;
    };

    const json_payload = std.json.Value{ .object = object_map };
    send(url, token, json_payload) catch |err| {
        std.debug.print("Failed to replicate: {}\n", .{err});
    };

    // warning: if argument is not a pointer,
    // it can cause error that is horrible to read:
    // /usr/lib64/zig/9999/lib/std/zig/c_translation.zig:24:58: error: expected pointer, found '[]u8'
    //              return castInt(DestType, @intFromPtr(target));
    //                                                   ^~~~~~
    //  and that's it, no more notes etc, "-freference-trace" didn't help.
    return pg.PointerGetDatum(data.ptr); // return something useful here
}
pub export fn pg_finfo_turso_send() *const pg.Pg_finfo_record {
    const my_finfo = struct {
        const static: pg.Pg_finfo_record = pg.Pg_finfo_record{
            .api_version = 1,
        };
    };
    return &my_finfo.static;
}
