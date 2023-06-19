const std = @import("std");
const pg = @cImport({
    @cInclude("postgres.h");
    @cInclude("replication/logical.h");
    @cInclude("utils/memutils.h");
    @cInclude("utils/builtins.h");
    @cInclude("utils/lsyscache.h");
});

// FIXME: clean up generated code
fn print_literal(stmt_buf: []u8, arg_typid: pg.Oid, arg_outputstr: [*c]u8) usize {
    var typid = arg_typid;
    var outputstr = arg_outputstr;
    var valptr: [*c]const u8 = undefined;
    var offset: usize = 0;
    switch (typid) {
        @bitCast(pg.Oid, @as(c_int, 21)), @bitCast(pg.Oid, @as(c_int, 23)), @bitCast(pg.Oid, @as(c_int, 20)), @bitCast(pg.Oid, @as(c_int, 26)), @bitCast(pg.Oid, @as(c_int, 700)), @bitCast(pg.Oid, @as(c_int, 701)), @bitCast(pg.Oid, @as(c_int, 1700)) => {
            const entry = std.fmt.bufPrint(stmt_buf[offset..], "{s}", .{outputstr}) catch unreachable;
            offset += entry.len;
        },
        @bitCast(pg.Oid, @as(c_int, 1560)), @bitCast(pg.Oid, @as(c_int, 1562)) => {
            const entry = std.fmt.bufPrint(stmt_buf[offset..], "B'{s}'", .{outputstr}) catch unreachable;
            offset += entry.len;
        },
        @bitCast(pg.Oid, @as(c_int, 16)) => {
            if (std.zig.c_builtins.__builtin_strcmp(outputstr, "t") == @as(c_int, 0)) {
                _ = std.fmt.bufPrint(stmt_buf[offset..], "true", .{}) catch unreachable;
                offset += 4;
            } else {
                _ = std.fmt.bufPrint(stmt_buf[offset..], "false", .{}) catch unreachable;
                offset += 5;
            }
        },
        @bitCast(pg.Oid, @as(c_int, 25)) => {
            const entry = std.fmt.bufPrint(stmt_buf[offset..], "'{s}'", .{outputstr}) catch unreachable;
            offset += entry.len;
        },
        // FIXME: this routine is ported from translate-c output and probably
        // prints garbage for most of the types. Verify.
        else => {
            _ = std.fmt.bufPrint(stmt_buf[offset..], "\'", .{}) catch unreachable;
            offset += 1;
            {
                valptr = outputstr;
                while (valptr.* != 0) : (valptr += 1) {
                    var ch: u8 = valptr.*;
                    if ((@bitCast(c_int, @as(c_uint, ch)) == @as(c_int, '\'')) or ((@bitCast(c_int, @as(c_uint, ch)) == @as(c_int, '\\')) and (@as(c_int, 0) != 0))) {
                        _ = std.fmt.bufPrint(stmt_buf[offset..], "{}", .{ch}) catch unreachable;
                        offset += 1;
                    }
                    _ = std.fmt.bufPrint(stmt_buf[offset..], "{}", .{ch}) catch unreachable;
                    offset += 1;
                }
            }
            _ = std.fmt.bufPrint(stmt_buf[offset..], "\'", .{}) catch unreachable;
            offset += 1;
        },
    }
    return offset;
}

pub fn print_insert(stmt_buf: []u8, arg_tupdesc: pg.TupleDesc, arg_tuple: pg.HeapTuple) usize {
    var tupdesc = arg_tupdesc;
    var tuple = arg_tuple;
    var natt: usize = 0;
    var printed: usize = 0;
    _ = std.fmt.bufPrint(stmt_buf, "(", .{}) catch unreachable;

    var offset: usize = 1;
    while (natt < tupdesc.*.natts) : (natt += 1) {
        var attr = &tupdesc.*.attrs()[natt];
        if (attr.*.attisdropped) continue;
        if (@bitCast(c_int, @as(c_int, attr.*.attnum)) < @as(c_int, 0)) continue;
        var isnull: bool = undefined;
        _ = pg.heap_getattr(tuple, @intCast(c_int, natt + 1), tupdesc, &isnull);
        if (isnull) {
            continue;
        }
        if (printed > 0) {
            _ = std.fmt.bufPrint(stmt_buf[offset..], ",", .{}) catch unreachable;
            offset += 1;
        }
        printed += 1;
        const entry = std.fmt.bufPrint(stmt_buf[offset..], "{s}", .{pg.quote_identifier(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &attr.*.attname.data)))}) catch unreachable;
        offset += entry.len;
    }

    _ = std.fmt.bufPrint(stmt_buf[offset..], ") VALUES (", .{}) catch unreachable;
    offset += 10;

    printed = 0;
    natt = 0;
    while (natt < tupdesc.*.natts) : (natt += 1) {
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
            continue;
            // NOTICE: nulls are not interesting for inserts
            //_ = std.fmt.bufPrint(stmt_buf[offset..], "null", .{}) catch unreachable;
            //offset += 4;
        }
        if (printed > 0) {
            _ = std.fmt.bufPrint(stmt_buf[offset..], ",", .{}) catch unreachable;
            offset += 1;
        }
        printed += 1;
        if ((@as(c_int, @boolToInt(typisvarlena)) != 0) and ((@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b, origval).*.va_header)) == @as(c_int, 1)) and (@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b_e, origval).*.va_tag)) == pg.VARTAG_ONDISK))) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, origval));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@ptrCast(?*const anyopaque, pg.pg_detoast_datum(@ptrCast([*c]pg.struct_varlena, @alignCast(@import("std").meta.alignment([*c]pg.struct_varlena), pg.DatumGetPointer(origval))))));
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, val));
        }
    }
    _ = std.fmt.bufPrint(stmt_buf[offset..], ")", .{}) catch unreachable;
    offset += 1;
    return offset;
}

pub fn print_update(stmt_buf: []u8, tupdesc: pg.TupleDesc, new_tuple: pg.HeapTuple, previous_tuple: pg.HeapTuple) usize {
    var printed: usize = 0;
    var natt: usize = 0;
    var offset: usize = 0;

    while (natt < tupdesc.*.natts) : (natt += 1) {
        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var new_val: pg.Datum = undefined;
        var previous_isnull: bool = undefined;
        var new_isnull: bool = undefined;
        var attr = &tupdesc.*.attrs()[natt];
        if (attr.*.attisdropped) continue;

        if (@bitCast(c_int, @as(c_int, attr.*.attnum)) < @as(c_int, 0)) continue;
        var typid = attr.*.atttypid;
        new_val = pg.heap_getattr(new_tuple, @intCast(c_int, natt + 1), tupdesc, &new_isnull);
        if (previous_tuple == null) {
            previous_isnull = true;
        } else {
            _ = pg.heap_getattr(previous_tuple, @intCast(c_int, natt + 1), tupdesc, &previous_isnull);
        }
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        if (new_isnull and previous_isnull) {
            continue;
        }
        if (printed > 0) {
            _ = std.fmt.bufPrint(stmt_buf[offset..], ",", .{}) catch unreachable;
            offset += 1;
        }
        printed += 1;
        const entry = std.fmt.bufPrint(stmt_buf[offset..], "{s}=", .{pg.quote_identifier(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &attr.*.attname.data)))}) catch unreachable;
        offset += entry.len;
        std.debug.print("xPartial: {s}\n", .{stmt_buf[0..offset]});
        if (new_isnull) {
            _ = std.fmt.bufPrint(stmt_buf[offset..], "null", .{}) catch unreachable;
            offset += 4;
        } else if ((@as(c_int, @boolToInt(typisvarlena)) != 0) and ((@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b, new_val).*.va_header)) == @as(c_int, 1)) and (@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b_e, new_val).*.va_tag)) == pg.VARTAG_ONDISK))) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, new_val));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@ptrCast(?*const anyopaque, pg.pg_detoast_datum(@ptrCast([*c]pg.struct_varlena, @alignCast(@import("std").meta.alignment([*c]pg.struct_varlena), pg.DatumGetPointer(new_val))))));
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, val));
        }
    }

    _ = std.fmt.bufPrint(stmt_buf[offset..], " WHERE ", .{}) catch unreachable;
    offset += 7;

    // FIXME: figure out the WHERE key = X part properly
    printed = 0;
    natt = 0;
    while (natt < tupdesc.*.natts) : (natt += 1) {
        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var previous_val: pg.Datum = undefined;
        var isnull: bool = undefined;
        var attr = &tupdesc.*.attrs()[natt];
        if (attr.*.attisdropped) continue;

        if (@bitCast(c_int, @as(c_int, attr.*.attnum)) < @as(c_int, 0)) continue;
        var typid = attr.*.atttypid;

        if (previous_tuple == null) {
            std.debug.print("FIXME: previous_tuple is null, and we're not handling this case correctly!!!!!! We need to somehow extract key information from the schema and use only key columns for the WHERE key = x clause\n", .{});
            continue;
        }

        previous_val = pg.heap_getattr(previous_tuple, @intCast(c_int, natt + 1), tupdesc, &isnull);
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        if (isnull) {
            // do not print nulls when emitting information about the old key
            continue;
        }
        if (printed > 0) {
            _ = std.fmt.bufPrint(stmt_buf[offset..], ",", .{}) catch unreachable;
            offset += 1;
        }
        printed += 1;
        const entry = std.fmt.bufPrint(stmt_buf[offset..], "{s}=", .{pg.quote_identifier(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &attr.*.attname.data)))}) catch unreachable;
        offset += entry.len;
        if ((@as(c_int, @boolToInt(typisvarlena)) != 0) and ((@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b, previous_val).*.va_header)) == @as(c_int, 1)) and (@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b_e, previous_val).*.va_tag)) == pg.VARTAG_ONDISK))) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, previous_val));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@ptrCast(?*const anyopaque, pg.pg_detoast_datum(@ptrCast([*c]pg.struct_varlena, @alignCast(@import("std").meta.alignment([*c]pg.struct_varlena), pg.DatumGetPointer(previous_val))))));
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, val));
        }
    }

    return offset;
}

pub fn print_delete(stmt_buf: []u8, arg_tupdesc: pg.TupleDesc, arg_tuple: pg.HeapTuple) usize {
    var tupdesc = arg_tupdesc;
    var tuple = arg_tuple;
    var natt: usize = 0;
    var printed: usize = 0;
    var offset: usize = 0;

    natt = 0;
    while (natt < tupdesc.*.natts) : (natt += 1) {
        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var origval: pg.Datum = undefined;
        var isnull: bool = undefined;
        var attr = &tupdesc.*.attrs()[natt];
        if (attr.*.attisdropped) continue;
        if (@bitCast(c_int, @as(c_int, attr.*.attnum)) < @as(c_int, 0)) continue;
        var typid = attr.*.atttypid;
        origval = pg.heap_getattr(tuple, @intCast(c_int, natt + 1), tupdesc, &isnull);
        if (isnull) {
            continue;
        }
        if (printed == 0) {
            const entry = std.fmt.bufPrint(stmt_buf[offset..], "WHERE ", .{}) catch unreachable;
            offset += entry.len;
        } else if (printed > 0) {
            _ = std.fmt.bufPrint(stmt_buf[offset..], ",", .{}) catch unreachable;
            offset += 1;
        }
        printed += 1;
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        const entry = std.fmt.bufPrint(stmt_buf[offset..], "{s}=", .{pg.quote_identifier(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &attr.*.attname.data)))}) catch unreachable;
        offset += entry.len;
        if (isnull) {
            _ = std.fmt.bufPrint(stmt_buf[offset..], "null", .{}) catch unreachable;
            offset += 4;
        } else if ((@as(c_int, @boolToInt(typisvarlena)) != 0) and ((@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b, origval).*.va_header)) == @as(c_int, 1)) and (@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b_e, origval).*.va_tag)) == pg.VARTAG_ONDISK))) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, origval));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@ptrCast(?*const anyopaque, pg.pg_detoast_datum(@ptrCast([*c]pg.struct_varlena, @alignCast(@import("std").meta.alignment([*c]pg.struct_varlena), pg.DatumGetPointer(origval))))));
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, val));
        }
    }
    return offset;
}

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const allocator = gpa.allocator();

pub fn replicate(url: []u8, auth: []u8, json_payload: std.json.Value) !void {
    var client: std.http.Client = .{ .allocator = allocator };
    defer client.deinit();

    json_payload.dump(); // debug print
    var headers = std.http.Headers{ .allocator = allocator };
    defer headers.deinit();
    try headers.append("Authorization", auth);
    try headers.append("Transfer-Encoding", "chunked");
    try headers.append("Content-Type", "application/json");

    var req = try client.request(.POST, try std.Uri.parse(url), headers, .{});
    defer req.deinit();
    try req.start();

    _ = try json_payload.jsonStringify(.{}, req.writer());

    try req.finish();
    try req.wait();

    std.debug.print("Response status: {}\n", .{req.response.status});
    try std.testing.expect(req.response.status == .ok); // FIXME: remove
}
