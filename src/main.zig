const std = @import("std");
const testing = std.testing;

const pg = @cImport({
    @cInclude("postgres.h");
    @cInclude("replication/logical.h");
});

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
            .version = @divTrunc(@as(c_int, 160000), @as(c_int, 100)),
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

pub export fn _PG_output_plugin_init(arg_cb: pg.OutputPluginCallbacks) void {
    var cb = arg_cb;
    cb.startup_cb = &pg_decode_startup;
    cb.begin_cb = &pg_decode_begin_txn;
    cb.change_cb = &pg_decode_change;
    cb.truncate_cb = &pg_decode_truncate;
    cb.commit_cb = &pg_decode_commit_txn;
    cb.filter_by_origin_cb = &pg_decode_filter;
    cb.shutdown_cb = &pg_decode_shutdown;
    cb.message_cb = &pg_decode_message;
    cb.filter_prepare_cb = &pg_decode_filter_prepare;
    cb.begin_prepare_cb = &pg_decode_begin_prepare_txn;
    cb.prepare_cb = &pg_decode_prepare_txn;
    cb.commit_prepared_cb = &pg_decode_commit_prepared_txn;
    cb.rollback_prepared_cb = &pg_decode_rollback_prepared_txn;
    cb.stream_start_cb = &pg_decode_stream_start;
    cb.stream_stop_cb = &pg_decode_stream_stop;
    cb.stream_abort_cb = &pg_decode_stream_abort;
    cb.stream_prepare_cb = &pg_decode_stream_prepare;
    cb.stream_commit_cb = &pg_decode_stream_commit;
    cb.stream_change_cb = &pg_decode_stream_change;
    cb.stream_message_cb = &pg_decode_stream_message;
    cb.stream_truncate_cb = &pg_decode_stream_truncate;
}

pub fn pg_decode_startup(arg_ctx: [*c]pg.LogicalDecodingContext, arg_opt: [*c]pg.OutputPluginOptions, arg_is_init: bool) callconv(.C) void {
    std.debug.print("pg_decode_startup {*} {*} {}\n", .{ arg_ctx, arg_opt, arg_is_init });
}

pub fn pg_decode_shutdown(arg_ctx: [*c]pg.LogicalDecodingContext) callconv(.C) void {
    std.debug.print("pg_decode_shutdown {*}\n", .{arg_ctx});
}
pub fn pg_decode_begin_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
    std.debug.print("pg_decode_begin_txn {*} {*}\n", .{ arg_ctx, arg_txn });
}

pub fn pg_decode_commit_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pg_decode_commit_txn {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_commit_lsn });
}
pub fn pg_decode_change(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_relation: pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    std.debug.print("pg_decode_change {*} {*} {*} {*}\n", .{ arg_ctx, arg_txn, arg_relation, arg_change });
}
pub fn pg_decode_truncate(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_nrelations: c_int, arg_relations: [*c]pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    std.debug.print("pg_decode_truncate {*} {*} {} {*} {*}\n", .{ arg_ctx, arg_txn, arg_nrelations, arg_relations, arg_change });
}
pub fn pg_decode_filter(arg_ctx: [*c]pg.LogicalDecodingContext, arg_origin_id: pg.RepOriginId) callconv(.C) bool {
    std.debug.print("pg_decode_filter {*} {}\n", .{ arg_ctx, arg_origin_id });
    return true;
}
pub fn pg_decode_message(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_lsn: pg.XLogRecPtr, arg_transactional: bool, arg_prefix: [*c]const u8, arg_sz: pg.Size, arg_message: [*c]const u8) callconv(.C) void {
    std.debug.print("pg_decode_message {*} {*} {} {} {*} {} {*}\n", .{ arg_ctx, arg_txn, arg_lsn, arg_transactional, arg_prefix, arg_sz, arg_message });
}
pub fn pg_decode_filter_prepare(arg_ctx: [*c]pg.LogicalDecodingContext, arg_xid: pg.TransactionId, arg_gid: [*c]const u8) callconv(.C) bool {
    std.debug.print("pg_decode_filter_prepare {*} {} {*}\n", .{ arg_ctx, arg_xid, arg_gid });
    return true;
}
pub fn pg_decode_begin_prepare_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
    std.debug.print("pg_decode_begin_prepare_txn {*} {*}\n", .{ arg_ctx, arg_txn });
}
pub fn pg_decode_prepare_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_prepare_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pg_decode_prepare_txn {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_prepare_lsn });
}
pub fn pg_decode_commit_prepared_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pg_decode_commit_prepared_txn {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_commit_lsn });
}
pub fn pg_decode_rollback_prepared_txn(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_prepare_end_lsn: pg.XLogRecPtr, arg_prepare_time: pg.TimestampTz) callconv(.C) void {
    std.debug.print("pg_decode_rollback_prepared_txn {*} {*} {} {}\n", .{ arg_ctx, arg_txn, arg_prepare_end_lsn, arg_prepare_time });
}
pub fn pg_decode_stream_start(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
    std.debug.print("pg_decode_stream_start {*} {*}\n", .{ arg_ctx, arg_txn });
}
pub fn pg_output_stream_start(arg_ctx: [*c]pg.LogicalDecodingContext, arg_data: [*c]pg.TestDecodingData, arg_txn: [*c]pg.ReorderBufferTXN, arg_last_write: bool) callconv(.C) void {
    std.debug.print("pg_output_stream_start {*} {*}\n", .{ arg_ctx, arg_data, arg_txn, arg_last_write });
}
pub fn pg_decode_stream_stop(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN) callconv(.C) void {
    std.debug.print("pg_decode_stream_stop {*} {*}\n", .{ arg_ctx, arg_txn });
}
pub fn pg_decode_stream_abort(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_abort_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pg_decode_stream_abort {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_abort_lsn });
}
pub fn pg_decode_stream_prepare(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_prepare_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pg_decode_stream_prepare {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_prepare_lsn });
}
pub fn pg_decode_stream_commit(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_commit_lsn: pg.XLogRecPtr) callconv(.C) void {
    std.debug.print("pg_decode_stream_commit {*} {*} {}\n", .{ arg_ctx, arg_txn, arg_commit_lsn });
}
pub fn pg_decode_stream_change(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_relation: pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    std.debug.print("pg_decode_stream_change {*} {*} {*} {*}\n", .{ arg_ctx, arg_txn, arg_relation, arg_change });
}
pub fn pg_decode_stream_message(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_lsn: pg.XLogRecPtr, arg_transactional: bool, arg_prefix: [*c]const u8, arg_sz: pg.Size, arg_message: [*c]const u8) callconv(.C) void {
    std.debug.print("pg_decode_stream_message {*} {*} {} {} {*} {} {*}\n", .{ arg_ctx, arg_txn, arg_lsn, arg_transactional, arg_prefix, arg_sz, arg_message });
}
pub fn pg_decode_stream_truncate(arg_ctx: [*c]pg.LogicalDecodingContext, arg_txn: [*c]pg.ReorderBufferTXN, arg_nrelations: c_int, arg_relations: [*c]pg.Relation, arg_change: [*c]pg.ReorderBufferChange) callconv(.C) void {
    std.debug.print("pg_decode_stream_truncate {*} {*} {} {*} {*}\n", .{ arg_ctx, arg_txn, arg_nrelations, arg_relations, arg_change });
}
