const std = @import("std");
const pg = @cImport({
    @cInclude("postgres.h");
    @cInclude("replication/logical.h");
    @cInclude("utils/memutils.h");
    @cInclude("utils/builtins.h");
    @cInclude("utils/lsyscache.h");
});

// FIXME: clean up generated code
fn print_literal(arg_s: pg.StringInfo, arg_typid: pg.Oid, arg_outputstr: [*c]u8) callconv(.C) void {
    var s = arg_s;
    var typid = arg_typid;
    var outputstr = arg_outputstr;
    var valptr: [*c]const u8 = undefined;
    switch (typid) {
        @bitCast(pg.Oid, @as(c_int, 21)), @bitCast(pg.Oid, @as(c_int, 23)), @bitCast(pg.Oid, @as(c_int, 20)), @bitCast(pg.Oid, @as(c_int, 26)), @bitCast(pg.Oid, @as(c_int, 700)), @bitCast(pg.Oid, @as(c_int, 701)), @bitCast(pg.Oid, @as(c_int, 1700)) => {
            pg.appendStringInfoString(s, outputstr);
        },
        @bitCast(pg.Oid, @as(c_int, 1560)), @bitCast(pg.Oid, @as(c_int, 1562)) => {
            pg.appendStringInfo(s, "B'%s'", outputstr);
        },
        @bitCast(pg.Oid, @as(c_int, 16)) => {
            if (std.zig.c_builtins.__builtin_strcmp(outputstr, "t") == @as(c_int, 0)) {
                pg.appendStringInfoString(s, "true");
            } else {
                pg.appendStringInfoString(s, "false");
            }
        },
        else => {
            pg.appendStringInfoChar(s, @bitCast(u8, @truncate(i8, @as(c_int, '\''))));
            {
                valptr = outputstr;
                while (valptr.* != 0) : (valptr += 1) {
                    var ch: u8 = valptr.*;
                    if ((@bitCast(c_int, @as(c_uint, ch)) == @as(c_int, '\'')) or ((@bitCast(c_int, @as(c_uint, ch)) == @as(c_int, '\\')) and (@as(c_int, 0) != 0))) {
                        pg.appendStringInfoChar(s, ch);
                    }
                    pg.appendStringInfoChar(s, ch);
                }
            }
            pg.appendStringInfoChar(s, @bitCast(u8, @truncate(i8, @as(c_int, '\''))));
        },
    }
}

pub fn insert_to_stringinfo(arg_s: pg.StringInfo, arg_tupdesc: pg.TupleDesc, arg_tuple: pg.HeapTuple) callconv(.C) void {
    var s = arg_s;
    var tupdesc = arg_tupdesc;
    var tuple = arg_tuple;
    var natt: usize = 0;
    pg.appendStringInfoString(s, "(");
    while (natt < tupdesc.*.natts) : (natt += 1) {
        if (natt > 0) {
            pg.appendStringInfoChar(s, @bitCast(u8, @truncate(i8, @as(c_int, ','))));
        }
        var attr = &tupdesc.*.attrs()[natt];
        if (attr.*.attisdropped) continue;
        if (@bitCast(c_int, @as(c_int, attr.*.attnum)) < @as(c_int, 0)) continue;
        pg.appendStringInfoString(s, pg.quote_identifier(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &attr.*.attname.data))));
    }

    pg.appendStringInfoString(s, ") VALUES (");

    natt = 0;
    while (natt < tupdesc.*.natts) : (natt += 1) {
        if (natt > 0) {
            pg.appendStringInfoChar(s, @bitCast(u8, @truncate(i8, @as(c_int, ','))));
        }
        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var origval: pg.Datum = undefined;
        var isnull: bool = undefined;
        var attr = &tupdesc.*.attrs()[natt];
        if (attr.*.attisdropped) continue;
        if (@bitCast(c_int, @as(c_int, attr.*.attnum)) < @as(c_int, 0)) continue;
        var typid = attr.*.atttypid;
        origval = pg.heap_getattr(tuple, @intCast(c_int, natt + 1), tupdesc, &isnull);
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        if (isnull) {
            pg.appendStringInfoString(s, "null");
        } else if ((@as(c_int, @boolToInt(typisvarlena)) != 0) and ((@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b, origval).*.va_header)) == @as(c_int, 1)) and (@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b_e, origval).*.va_tag)) == pg.VARTAG_ONDISK))) {
            pg.appendStringInfoString(s, "unchanged-toast-datum");
        } else if (!typisvarlena) {
            print_literal(s, typid, pg.OidOutputFunctionCall(typoutput, origval));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@ptrCast(?*const anyopaque, pg.pg_detoast_datum(@ptrCast([*c]pg.struct_varlena, @alignCast(@import("std").meta.alignment([*c]pg.struct_varlena), pg.DatumGetPointer(origval))))));
            print_literal(s, typid, pg.OidOutputFunctionCall(typoutput, val));
        }
    }
    pg.appendStringInfoString(s, ")");
}

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const allocator = gpa.allocator();

pub fn replicate(url: []u8, auth: []u8, arg_sql: pg.StringInfo) !void {
    var client: std.http.Client = .{ .allocator = allocator };
    const sql = arg_sql.*.data[0..@intCast(usize, arg_sql.*.len)];
    defer client.deinit();

    std.debug.print("Trying to replicate |{s}| |{s}| |{s}|\n", .{ url, auth, sql });
    var headers = std.http.Headers{ .allocator = allocator };
    defer headers.deinit();
    try headers.append("Authorization", auth);
    try headers.append("Transfer-Encoding", "");
    try headers.append("Content-Type", "application/json");

    var data_buf: [4096]u8 = undefined;
    // TODO: zig has built-in JSON support, we should use it
    const data = try std.fmt.bufPrint(&data_buf, "{{\"statements\": [\"{s}\"]}}", .{sql});

    std.debug.print("Sending |{s}|\n", .{data});

    var data_len_buf: [16]u8 = undefined;
    const data_len = try std.fmt.bufPrint(&data_len_buf, "{}", .{data.len});
    try headers.append("Content-Length", data_len);

    var req = try client.request(.POST, try std.Uri.parse(url), headers, .{});
    defer req.deinit();
    try req.start();
    _ = try req.writeAll(data);
    try req.finish();
    try req.wait();

    std.debug.print("Response status: {}\n", .{req.response.status});
    try std.testing.expect(req.response.status == .ok); // FIXME: remove
}
