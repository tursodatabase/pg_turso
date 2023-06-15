const std = @import("std");
const pg_magic = @import("pg_magic");
const testing = std.testing;

const pg = @cImport({
    @cInclude("postgres.h");
    @cInclude("replication/logical.h");
});

pub export fn _PG_output_plugin_init(arg_cb: pg.OutputPluginCallbacks) void {
    var cb = arg_cb;
    cb.startup_cb = &pg_decode_startup;
    //cb.*.begin_cb = &pg_decode_begin_txn;
    //cb.*.change_cb = &pg_decode_change;
    //cb.*.truncate_cb = &pg_decode_truncate;
    //cb.*.commit_cb = &pg_decode_commit_txn;
    //cb.*.filter_by_origin_cb = &pg_decode_filter;
    //cb.*.shutdown_cb = &pg_decode_shutdown;
    //cb.*.message_cb = &pg_decode_message;
    //cb.*.filter_prepare_cb = &pg_decode_filter_prepare;
    //cb.*.begin_prepare_cb = &pg_decode_begin_prepare_txn;
    //cb.*.prepare_cb = &pg_decode_prepare_txn;
    //cb.*.commit_prepared_cb = &pg_decode_commit_prepared_txn;
    //cb.*.rollback_prepared_cb = &pg_decode_rollback_prepared_txn;
    //cb.*.stream_start_cb = &pg_decode_stream_start;
    //cb.*.stream_stop_cb = &pg_decode_stream_stop;
    //cb.*.stream_abort_cb = &pg_decode_stream_abort;
    //cb.*.stream_prepare_cb = &pg_decode_stream_prepare;
    //cb.*.stream_commit_cb = &pg_decode_stream_commit;
    //cb.*.stream_change_cb = &pg_decode_stream_change;
    //cb.*.stream_message_cb = &pg_decode_stream_message;
    //cb.*.stream_truncate_cb = &pg_decode_stream_truncate;
}

pub fn pg_decode_startup(arg_ctx: [*c]pg.LogicalDecodingContext, arg_opt: [*c]pg.OutputPluginOptions, arg_is_init: bool) callconv(.C) void {
    std.debug.print("pg_decode_startup {*} {*} {}\n", .{arg_ctx, arg_opt, arg_is_init});
}
