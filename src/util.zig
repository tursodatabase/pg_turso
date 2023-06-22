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

pub fn print_insert(stmt_buf: []u8, arg_tupdesc: pg.TupleDesc, arg_tuple: pg.HeapTuple) !usize {
    var tupdesc = arg_tupdesc;
    var tuple = arg_tuple;
    var natt: usize = 0;
    var printed: usize = 0;
    _ = try std.fmt.bufPrint(stmt_buf, "(", .{});

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
            _ = try std.fmt.bufPrint(stmt_buf[offset..], ",", .{});
            offset += 1;
        }
        printed += 1;
        const entry = try std.fmt.bufPrint(stmt_buf[offset..], "{s}", .{pg.quote_identifier(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &attr.*.attname.data)))});
        offset += entry.len;
    }

    _ = try std.fmt.bufPrint(stmt_buf[offset..], ") VALUES (", .{});
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
            //_ = try std.fmt.bufPrint(stmt_buf[offset..], "null", .{});
            //offset += 4;
        }
        if (printed > 0) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], ",", .{});
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
    _ = try std.fmt.bufPrint(stmt_buf[offset..], ")", .{});
    offset += 1;
    return offset;
}

pub fn print_update(stmt_buf: []u8, tupdesc: pg.TupleDesc, key_attrs: [*c]pg.Bitmapset, new_tuple: pg.HeapTuple, previous_tuple: pg.HeapTuple) !usize {
    var printed: usize = 0;
    var natt: usize = 0;
    var offset: usize = 0;

    while (natt < tupdesc.*.natts) : (natt += 1) {
        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var new_val: pg.Datum = undefined;
        var previous_exists_and_is_null: bool = undefined;
        var new_isnull: bool = undefined;
        var attr = &tupdesc.*.attrs()[natt];
        if (attr.*.attisdropped) {
            std.debug.print("Attr {} is dropped\n", .{attr.*.attnum});
            continue;
        }

        if (@bitCast(c_int, @as(c_int, attr.*.attnum)) < @as(c_int, 0)) {
            std.debug.print("Natt {} is a system attribute\n", .{attr.*.attnum});
            continue;
        }

        var typid = attr.*.atttypid;
        new_val = pg.heap_getattr(new_tuple, @intCast(c_int, natt + 1), tupdesc, &new_isnull);
        if (previous_tuple == null) {
            previous_exists_and_is_null = false;
        } else {
            _ = pg.heap_getattr(previous_tuple, @intCast(c_int, natt + 1), tupdesc, &previous_exists_and_is_null);
        }

        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        if (new_isnull and previous_exists_and_is_null) {
            std.debug.print("The new value is null and so was the previous one, skipping\n", .{});
            continue;
        }
        if (printed > 0) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], ",", .{});
            offset += 1;
        }
        printed += 1;
        const entry = try std.fmt.bufPrint(stmt_buf[offset..], "{s}=", .{pg.quote_identifier(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &attr.*.attname.data)))});
        offset += entry.len;
        if (new_isnull) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], "null", .{});
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

    _ = try std.fmt.bufPrint(stmt_buf[offset..], " WHERE ", .{});
    offset += 7;

    printed = 0;
    natt = 0;
    while (natt < tupdesc.*.natts) : (natt += 1) {
        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var key: pg.Datum = undefined;
        var isnull: bool = undefined;
        var attr = &tupdesc.*.attrs()[natt];
        if (attr.*.attisdropped) continue;

        if (@bitCast(c_int, @as(c_int, attr.*.attnum)) < @as(c_int, 0)) continue;

        if (pg.bms_is_member(attr.*.attnum - pg.FirstLowInvalidHeapAttributeNumber, key_attrs)) {
            std.debug.print("{} is a key attribute\n", .{attr.*.attnum});
        } else {
            std.debug.print("{} is not a key attribute, skipping\n", .{attr.*.attnum});
            continue;
        }

        var typid = attr.*.atttypid;

        if (previous_tuple == null) {
            std.debug.print("No previous tuple, taking data from the new tuple\n", .{});
            key = pg.heap_getattr(new_tuple, @intCast(c_int, natt + 1), tupdesc, &isnull);
        } else {
            std.debug.print("Previous tuple exists, taking data from the previous tuple\n", .{});
            key = pg.heap_getattr(previous_tuple, @intCast(c_int, natt + 1), tupdesc, &isnull);
        }

        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        if (isnull) {
            // do not print nulls when emitting information about the old key
            continue;
        }
        if (printed > 0) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], ",", .{});
            offset += 1;
        }
        printed += 1;
        const entry = try std.fmt.bufPrint(stmt_buf[offset..], "{s}=", .{pg.quote_identifier(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &attr.*.attname.data)))});
        offset += entry.len;
        if ((@as(c_int, @boolToInt(typisvarlena)) != 0) and ((@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b, key).*.va_header)) == @as(c_int, 1)) and (@bitCast(c_int, @as(c_uint, @intToPtr([*c]pg.varattrib_1b_e, key).*.va_tag)) == pg.VARTAG_ONDISK))) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, key));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@ptrCast(?*const anyopaque, pg.pg_detoast_datum(@ptrCast([*c]pg.struct_varlena, @alignCast(@import("std").meta.alignment([*c]pg.struct_varlena), pg.DatumGetPointer(key))))));
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, val));
        }
    }

    return offset;
}

pub fn print_delete(stmt_buf: []u8, arg_tupdesc: pg.TupleDesc, arg_tuple: pg.HeapTuple) !usize {
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
            const entry = try std.fmt.bufPrint(stmt_buf[offset..], "WHERE ", .{});
            offset += entry.len;
        } else if (printed > 0) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], ",", .{});
            offset += 1;
        }
        printed += 1;
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        const entry = try std.fmt.bufPrint(stmt_buf[offset..], "{s}=", .{pg.quote_identifier(@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), &attr.*.attname.data)))});
        offset += entry.len;
        if (isnull) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], "null", .{});
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
