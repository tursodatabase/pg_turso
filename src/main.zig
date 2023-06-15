const std = @import("std");
const testing = std.testing;

const pg = @cImport({
    @cInclude("postgres.h");
    @cInclude("replication/logical.h");
    @cInclude("utils/memutils.h");
    @cInclude("utils/builtins.h");
    @cInclude("utils/lsyscache.h");
});

const tuple_to_stringinfo = @import("util.zig").tuple_to_stringinfo;

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
            .len = @bitCast(c_int, @truncate(c_uint, @sizeOf(Pg_magic_struct))),
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
    std.debug.print("Initializing pgturso plugin!!!!!!!!111\n", .{});
    var cb = arg_cb;
    cb.*.startup_cb = &pgturso_startup;
    cb.*.begin_cb = &pgturso_begin_txn;
    cb.*.change_cb = &pgturso_change;
    cb.*.truncate_cb = &pgturso_truncate;
    cb.*.commit_cb = &pgturso_commit_txn;
    cb.*.filter_by_origin_cb = &pgturso_filter;
    cb.*.shutdown_cb = &pgturso_shutdown;
    cb.*.message_cb = &pgturso_message;
    cb.*.filter_prepare_cb = &pgturso_filter_prepare;
    cb.*.begin_prepare_cb = &pgturso_begin_prepare_txn;
    cb.*.prepare_cb = &pgturso_prepare_txn;
    cb.*.commit_prepared_cb = &pgturso_commit_prepared_txn;
    cb.*.rollback_prepared_cb = &pgturso_rollback_prepared_txn;
    cb.*.stream_start_cb = &pgturso_stream_start;
    cb.*.stream_stop_cb = &pgturso_stream_stop;
    cb.*.stream_abort_cb = &pgturso_stream_abort;
    cb.*.stream_prepare_cb = &pgturso_stream_prepare;
    cb.*.stream_commit_cb = &pgturso_stream_commit;
    cb.*.stream_change_cb = &pgturso_stream_change;
    cb.*.stream_message_cb = &pgturso_stream_message;
    cb.*.stream_truncate_cb = &pgturso_stream_truncate;
}

const PgTursoData = extern struct {
    context: pg.MemoryContext,
};

pub fn pgturso_startup(arg_ctx: [*c]pg.LogicalDecodingContext, arg_opt: [*c]pg.OutputPluginOptions, arg_is_init: bool) callconv(.C) void {
    std.debug.print("pgturso_startup {*} {*} {}\n", .{ arg_ctx, arg_opt, arg_is_init });

    var ctx = arg_ctx;
    var opt = arg_opt;
    var is_init = arg_is_init;
    _ = @TypeOf(is_init);
    // NOTICE: temporarily unused, but that's the place to insert the Turso URL and auth
    // var option: [*c]pg.ListCell = undefined;
    var data: [*c]PgTursoData = undefined;
    data = @ptrCast([*c]PgTursoData, @alignCast(@import("std").meta.alignment([*c]PgTursoData), pg.palloc0(@sizeOf(PgTursoData))));
    data.*.context = pg.AllocSetContextCreateInternal(ctx.*.context, "text conversion context", 0, 8 * 1024, 8 * 1024 * 1024);
    // TODO: verify what all this stuff actually means
    ctx.*.output_plugin_private = @ptrCast(?*anyopaque, data);
    opt.*.output_type = @bitCast(c_uint, pg.OUTPUT_PLUGIN_TEXTUAL_OUTPUT);
    opt.*.receive_rewrites = true;

    // TODO: what's streaming?
    ctx.*.streaming = false;
}

pub fn pgturso_shutdown(arg_ctx: [*c]pg.LogicalDecodingContext) callconv(.C) void {
    std.debug.print("pgturso_shutdown {*}\n", .{arg_ctx});
}

pub fn pgturso_begin_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
    _ = arg_txn;
    var ctx = arg_ctx;
    // NOTICE: txndata can be an allocated struct that stores opaque transaction-specific data
    //var data: [*c]PgTursoData = @ptrCast([*c]PgTursoData, @alignCast(@import("std").meta.alignment([*c]PgTursoData), ctx.*.output_plugin_private));
    //txn.*.output_plugin_private = @ptrCast(?*anyopaque, txndata);
    const last_write = false;
    pg.OutputPluginPrepareWrite(ctx, last_write);
    std.debug.print("out: BEGIN\n", .{}); // NOTICE: send to Turso here
    pg.appendStringInfoString(ctx.*.out, "BEGIN");
    pg.OutputPluginWrite(ctx, last_write);
}

pub fn pgturso_commit_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
    var ctx = arg_ctx;
    var txn = arg_txn;
    _ = arg_commit_lsn;

    txn.*.output_plugin_private = @intToPtr(?*anyopaque, @as(c_int, 0));
    const last_write = true;
    pg.OutputPluginPrepareWrite(ctx, last_write);
    std.debug.print("out: COMMIT\n", .{}); // NOTICE: send to Turso here
    pg.appendStringInfoString(ctx.*.out, "COMMIT");
    pg.OutputPluginWrite(ctx, last_write);
}

pub fn pgturso_change(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_relation: pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    var ctx = arg_ctx;
    _ = arg_txn;
    var data: [*c]PgTursoData = @ptrCast([*c]PgTursoData, @alignCast(@import("std").meta.alignment([*c]PgTursoData), ctx.*.output_plugin_private));
    var relation = arg_relation;
    var change = arg_change;
    var class_form: pg.Form_pg_class = relation.*.rd_rel;
    var tupdesc: pg.TupleDesc = relation.*.rd_att;
    var old: pg.MemoryContext = pg.MemoryContextSwitchTo(data.*.context);
    var last_write = true;

    // NOTICE: translated.zig optionally started a BEGIN here. Verify if it's ever needed

    pg.OutputPluginPrepareWrite(ctx, last_write);

    // NOTICE: it's easy to get qualified names with pg_quote_qualified_identifier,
    // but let's simplify it without namespaces for now.
    const table = if (class_form.*.relrewrite != 0) pg.get_rel_name(class_form.*.relrewrite) else @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &class_form.*.relname.data));

    pg.appendStringInfoString(ctx.*.out, "table ");
    pg.appendStringInfoString(ctx.*.out, table);
    pg.appendStringInfoChar(ctx.*.out, @bitCast(u8, @truncate(i8, @as(c_int, ':'))));

    switch (change.*.action) {
        0 => {
            // NOTICE: translated.zig contains the original code for reference
            // TODO: list affected columns before VALUES
            std.debug.print("out: INSERT INTO {s} VALUES(", .{table}); // NOTICE: send to Turso here
            if (change.*.data.tp.newtuple == @ptrCast([*c]pg.ReorderBufferTupleBuf, @alignCast(@import("std").meta.alignment([*c]pg.ReorderBufferTupleBuf), @intToPtr(?*anyopaque, @as(c_int, 0))))) {
                std.debug.print(" (no-tuple-data)", .{}); // NOTICE: send to Turso here
            } else {
                var info = pg.StringInfoData{ .data = null, .len = 0, .maxlen = 0, .cursor = 0 };
                pg.initStringInfo(&info);
                tuple_to_stringinfo(&info, tupdesc, &change.*.data.tp.newtuple.*.tuple, false);
                tuple_to_stringinfo(ctx.*.out, tupdesc, &change.*.data.tp.newtuple.*.tuple, false);
                if (info.len == 0) {
                    std.debug.print("NO INFO!!!", .{});
                } else {
                    std.debug.print(" {s}", .{info.data[0..@intCast(usize, info.len)]}); // NOTICE: send to Turso here
                }
            }
            std.debug.print(")\n", .{});
        },
        1 => {
            // NOTICE: translated.zig contains the original code for reference
            std.debug.print("out: UPDATE {s} \n", .{table}); // NOTICE: send to Turso here
            //if (change.*.data.tp.oldtuple != @ptrCast([*c]ReorderBufferTupleBuf, @alignCast(@import("std").meta.alignment([*c]ReorderBufferTupleBuf), @intToPtr(?*anyopaque, @as(c_int, 0))))) {
            //    appendStringInfoString(ctx.*.out, " old-key:");
            //    tuple_to_stringinfo(ctx.*.out, tupdesc, &change.*.data.tp.oldtuple.*.tuple, @as(c_int, 1) != 0);
            //    appendStringInfoString(ctx.*.out, " new-tuple:");
            //}
            //if (change.*.data.tp.newtuple == @ptrCast([*c]ReorderBufferTupleBuf, @alignCast(@import("std").meta.alignment([*c]ReorderBufferTupleBuf), @intToPtr(?*anyopaque, @as(c_int, 0))))) {
            //    appendStringInfoString(ctx.*.out, " (no-tuple-data)");
            //} else {
            //    tuple_to_stringinfo(ctx.*.out, tupdesc, &change.*.data.tp.newtuple.*.tuple, @as(c_int, 0) != 0);
            //}
            //break;
        },
        2 => {
            // NOTICE: translated.zig contains the original code for reference
            std.debug.print("out: DELETE FROM {s}\n", .{table}); // NOTICE: send to Turso here
            //appendStringInfoString(ctx.*.out, " DELETE:");
            //if (change.*.data.tp.oldtuple == @ptrCast([*c]ReorderBufferTupleBuf, @alignCast(@import("std").meta.alignment([*c]ReorderBufferTupleBuf), @intToPtr(?*anyopaque, @as(c_int, 0))))) {
            //    appendStringInfoString(ctx.*.out, " (no-tuple-data)");
            //} else {
            //    tuple_to_stringinfo(ctx.*.out, tupdesc, &change.*.data.tp.oldtuple.*.tuple, @as(c_int, 1) != 0);
            //}
            //break;
        },
        else => {
            std.debug.print("out: ???\n", .{}); // NOTICE: send to Turso here
        },
    }

    _ = pg.MemoryContextSwitchTo(old);
    pg.MemoryContextReset(data.*.context);
    pg.OutputPluginWrite(ctx, last_write);
}

pub fn pgturso_truncate(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_nrelations: c_int, arg_relations: [*c]pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    var ctx = arg_ctx;
    var nrelations = arg_nrelations;
    var relations = arg_relations;
    _ = arg_txn;
    _ = arg_change;
    var data = @ptrCast([*c]PgTursoData, @alignCast(@import("std").meta.alignment([*c]PgTursoData), ctx.*.output_plugin_private));
    var old: pg.MemoryContext = pg.MemoryContextSwitchTo(data.*.context);

    const last_write = true;
    pg.OutputPluginPrepareWrite(ctx, last_write);

    {
        var i: i32 = 0;
        while (i < nrelations) : (i += 1) {
            // TODO: rephrase this translate-c abomination and deduplicate getting qualified id
            const table = pg.quote_qualified_identifier(pg.get_namespace_name((blk: {
                const tmp = i;
                if (tmp >= 0) break :blk relations + @intCast(usize, tmp) else break :blk relations - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
            }).*.*.rd_rel.*.relnamespace), @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &(blk: {
                const tmp = i;
                if (tmp >= 0) break :blk relations + @intCast(usize, tmp) else break :blk relations - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
            }).*.*.rd_rel.*.relname.data)));
            std.debug.print("out: TRUNCATE {s};\n", .{table}); // NOTICE: send to Turso here
        }
    }

    pg.OutputPluginWrite(ctx, last_write);
    _ = pg.MemoryContextSwitchTo(old);
    pg.MemoryContextReset(data.*.context);
}

pub fn pgturso_filter(arg_ctx: [*c]pg.LogicalDecodingContext, arg_origin_id: pg.RepOriginId) callconv(.C) bool {
    std.debug.print("pgturso_filter {*} {}\n", .{ arg_ctx, arg_origin_id });
    return false;
}

pub fn pgturso_message(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_lsn: pg.XLogRecPtr, arg_transactional: bool, arg_prefix: [*c]const u8, arg_sz: pg.Size, arg_message: [*c]const u8) callconv(.C) void {
    std.debug.print("pgturso_message {*} {*} {} {} {*} {} {*}\n", .{ arg_ctx, arg_txn, arg_lsn, arg_transactional, arg_prefix, arg_sz, arg_message });
}

pub fn pgturso_filter_prepare(arg_ctx: [*c]pg.LogicalDecodingContext, arg_xid: pg.TransactionId, arg_gid: [*c]const u8) callconv(.C) bool {
    std.debug.print("pgturso_filter_prepare {*} {} {*}\n", .{ arg_ctx, arg_xid, arg_gid });
    return true;
}

pub fn pgturso_begin_prepare_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
    std.debug.print("pgturso_begin_prepare_txn {*} {*}\n", .{ arg_ctx, arg_txn });
}

pub fn pgturso_prepare_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_prepare_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pgturso_prepare_txn {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_prepare_lsn });
}

pub fn pgturso_commit_prepared_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pgturso_commit_prepared_txn {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_commit_lsn });
}

pub fn pgturso_rollback_prepared_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_prepare_end_lsn: pg.XLogRecPtr, arg_prepare_time: pg.TimestampTz) callconv(.C) void {
    std.debug.print("pgturso_rollback_prepared_txn {*} {*} {} {}\n", .{ arg_ctx, arg_txn, arg_prepare_end_lsn, arg_prepare_time });
}

pub fn pgturso_stream_start(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
    std.debug.print("pgturso_stream_start {*} {*}\n", .{ arg_ctx, arg_txn });
}

pub fn pg_output_stream_start(arg_ctx: [*c]pg.LogicalDecodingContext, arg_data: [*c]pg.TestDecodingData, arg_txn: [*c]pg.ReorderBufferTXN, arg_last_write: bool) callconv(.C) void {
    std.debug.print("pg_output_stream_start {*} {*}\n", .{ arg_ctx, arg_data, arg_txn, arg_last_write });
}

pub fn pgturso_stream_stop(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
    std.debug.print("pgturso_stream_stop {*} {*}\n", .{ arg_ctx, arg_txn });
}

pub fn pgturso_stream_abort(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_abort_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pgturso_stream_abort {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_abort_lsn });
}

pub fn pgturso_stream_prepare(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_prepare_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pgturso_stream_prepare {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_prepare_lsn });
}

pub fn pgturso_stream_commit(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pgturso_stream_commit {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_commit_lsn });
}

pub fn pgturso_stream_change(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_relation: pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    std.debug.print("pgturso_stream_change {*} {*} {*} {*}\n", .{ arg_ctx, arg_txn, arg_relation, arg_change });
}

pub fn pgturso_stream_message(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_lsn: pg.XLogRecPtr, arg_transactional: bool, arg_prefix: [*c]const u8, arg_sz: pg.Size, arg_message: [*c]const u8) callconv(.C) void {
    std.debug.print("pgturso_stream_message {*} {*} {} {} {*} {} {*}\n", .{ arg_ctx, arg_txn, arg_lsn, arg_transactional, arg_prefix, arg_sz, arg_message });
}

pub fn pgturso_stream_truncate(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_nrelations: c_int, arg_relations: [*c]pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    std.debug.print("pgturso_stream_truncate {*} {*} {} {*} {*}\n", .{ arg_ctx, arg_txn, arg_nrelations, arg_relations, arg_change });
}
