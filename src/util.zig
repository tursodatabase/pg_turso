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
        @as(pg.Oid, @bitCast(@as(c_int, 21))), @as(pg.Oid, @bitCast(@as(c_int, 23))), @as(pg.Oid, @bitCast(@as(c_int, 20))), @as(pg.Oid, @bitCast(@as(c_int, 26))), @as(pg.Oid, @bitCast(@as(c_int, 700))), @as(pg.Oid, @bitCast(@as(c_int, 701))), @as(pg.Oid, @bitCast(@as(c_int, 1700))) => {
            const entry = std.fmt.bufPrint(stmt_buf[offset..], "{s}", .{outputstr}) catch unreachable;
            offset += entry.len;
        },
        @as(pg.Oid, @bitCast(@as(c_int, 1560))), @as(pg.Oid, @bitCast(@as(c_int, 1562))) => {
            const entry = std.fmt.bufPrint(stmt_buf[offset..], "B'{s}'", .{outputstr}) catch unreachable;
            offset += entry.len;
        },
        @as(pg.Oid, @bitCast(@as(c_int, 16))) => {
            if (std.zig.c_builtins.__builtin_strcmp(outputstr, "t") == @as(c_int, 0)) {
                _ = std.fmt.bufPrint(stmt_buf[offset..], "true", .{}) catch unreachable;
                offset += 4;
            } else {
                _ = std.fmt.bufPrint(stmt_buf[offset..], "false", .{}) catch unreachable;
                offset += 5;
            }
        },
        @as(pg.Oid, @bitCast(@as(c_int, 25))) => {
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
                    if ((@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '\'')) or ((@as(c_int, @bitCast(@as(c_uint, ch))) == @as(c_int, '\\')) and (@as(c_int, 0) != 0))) {
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
        if (@as(c_int, @bitCast(@as(c_int, attr.*.attnum))) < @as(c_int, 0)) continue;
        var isnull: bool = undefined;
        _ = pg.heap_getattr(tuple, @as(c_int, @intCast(natt + 1)), tupdesc, &isnull);
        if (isnull) {
            continue;
        }
        if (printed > 0) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], ",", .{});
            offset += 1;
        }
        printed += 1;
        const entry = try std.fmt.bufPrint(stmt_buf[offset..], "{s}", .{pg.quote_identifier(@as([*c]u8, @ptrCast(@alignCast(&attr.*.attname.data))))});
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
        if (@as(c_int, @bitCast(@as(c_int, attr.*.attnum))) < @as(c_int, 0)) continue;
        var typid = attr.*.atttypid;
        origval = pg.heap_getattr(tuple, @as(c_int, @intCast(natt + 1)), tupdesc, &isnull);
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        if (isnull) {
            // nulls are not interesting for inserts
            continue;
        }
        if (printed > 0) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], ",", .{});
            offset += 1;
        }
        printed += 1;
        if ((@as(c_int, @intFromBool(typisvarlena)) != 0) and ((@as(c_int, @bitCast(@as(c_uint, @as([*c]pg.varattrib_1b, @ptrFromInt(origval)).*.va_header))) == @as(c_int, 1)) and (@as(c_int, @bitCast(@as(c_uint, @as([*c]pg.varattrib_1b_e, @ptrFromInt(origval)).*.va_tag))) == pg.VARTAG_ONDISK))) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, origval));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@as(?*const anyopaque, @ptrCast(pg.pg_detoast_datum(@as([*c]pg.struct_varlena, @ptrCast(@alignCast(pg.DatumGetPointer(origval))))))));
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

        if (@as(c_int, @bitCast(@as(c_int, attr.*.attnum))) < @as(c_int, 0)) {
            std.debug.print("Natt {} is a system attribute\n", .{attr.*.attnum});
            continue;
        }

        var typid = attr.*.atttypid;
        new_val = pg.heap_getattr(new_tuple, @as(c_int, @intCast(natt + 1)), tupdesc, &new_isnull);
        if (previous_tuple == null) {
            previous_exists_and_is_null = false;
        } else {
            _ = pg.heap_getattr(previous_tuple, @as(c_int, @intCast(natt + 1)), tupdesc, &previous_exists_and_is_null);
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
        const entry = try std.fmt.bufPrint(stmt_buf[offset..], "{s}=", .{pg.quote_identifier(@as([*c]u8, @ptrCast(@alignCast(&attr.*.attname.data))))});
        offset += entry.len;
        if (new_isnull) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], "null", .{});
            offset += 4;
        } else if ((@as(c_int, @intFromBool(typisvarlena)) != 0) and ((@as(c_int, @bitCast(@as(c_uint, @as([*c]pg.varattrib_1b, @ptrFromInt(new_val)).*.va_header))) == @as(c_int, 1)) and (@as(c_int, @bitCast(@as(c_uint, @as([*c]pg.varattrib_1b_e, @ptrFromInt(new_val)).*.va_tag))) == pg.VARTAG_ONDISK))) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, new_val));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@as(?*const anyopaque, @ptrCast(pg.pg_detoast_datum(@as([*c]pg.struct_varlena, @ptrCast(@alignCast(pg.DatumGetPointer(new_val))))))));
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

        if (@as(c_int, @bitCast(@as(c_int, attr.*.attnum))) < @as(c_int, 0)) continue;

        if (pg.bms_is_member(attr.*.attnum - pg.FirstLowInvalidHeapAttributeNumber, key_attrs)) {
            std.debug.print("{} is a key attribute\n", .{attr.*.attnum});
        } else {
            std.debug.print("{} is not a key attribute, skipping\n", .{attr.*.attnum});
            continue;
        }

        var typid = attr.*.atttypid;

        if (previous_tuple == null) {
            std.debug.print("No previous tuple, taking data from the new tuple\n", .{});
            key = pg.heap_getattr(new_tuple, @as(c_int, @intCast(natt + 1)), tupdesc, &isnull);
        } else {
            std.debug.print("Previous tuple exists, taking data from the previous tuple\n", .{});
            key = pg.heap_getattr(previous_tuple, @as(c_int, @intCast(natt + 1)), tupdesc, &isnull);
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
        const entry = try std.fmt.bufPrint(stmt_buf[offset..], "{s}=", .{pg.quote_identifier(@as([*c]u8, @ptrCast(@alignCast(&attr.*.attname.data))))});
        offset += entry.len;
        if ((@as(c_int, @intFromBool(typisvarlena)) != 0) and ((@as(c_int, @bitCast(@as(c_uint, @as([*c]pg.varattrib_1b, @ptrFromInt(key)).*.va_header))) == @as(c_int, 1)) and (@as(c_int, @bitCast(@as(c_uint, @as([*c]pg.varattrib_1b_e, @ptrFromInt(key)).*.va_tag))) == pg.VARTAG_ONDISK))) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, key));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@as(?*const anyopaque, @ptrCast(pg.pg_detoast_datum(@as([*c]pg.struct_varlena, @ptrCast(@alignCast(pg.DatumGetPointer(key))))))));
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
        if (@as(c_int, @bitCast(@as(c_int, attr.*.attnum))) < @as(c_int, 0)) continue;
        var typid = attr.*.atttypid;
        origval = pg.heap_getattr(tuple, @as(c_int, @intCast(natt + 1)), tupdesc, &isnull);
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
        const entry = try std.fmt.bufPrint(stmt_buf[offset..], "{s}=", .{pg.quote_identifier(@as([*c]u8, @ptrCast(@alignCast(&attr.*.attname.data))))});
        offset += entry.len;
        if (isnull) {
            _ = try std.fmt.bufPrint(stmt_buf[offset..], "null", .{});
            offset += 4;
        } else if ((@as(c_int, @intFromBool(typisvarlena)) != 0) and ((@as(c_int, @bitCast(@as(c_uint, @as([*c]pg.varattrib_1b, @ptrFromInt(origval)).*.va_header))) == @as(c_int, 1)) and (@as(c_int, @bitCast(@as(c_uint, @as([*c]pg.varattrib_1b_e, @ptrFromInt(origval)).*.va_tag))) == pg.VARTAG_ONDISK))) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, origval));
        } else {
            var val: pg.Datum = undefined;
            val = pg.PointerGetDatum(@as(?*const anyopaque, @ptrCast(pg.pg_detoast_datum(@as([*c]pg.struct_varlena, @ptrCast(@alignCast(pg.DatumGetPointer(origval))))))));
            offset += print_literal(stmt_buf[offset..], typid, pg.OidOutputFunctionCall(typoutput, val));
        }
    }
    return offset;
}

var gpa = std.heap.GeneralPurposeAllocator(.{}){};
const allocator = gpa.allocator();

pub fn send(url: []u8, auth: []u8, json_payload: std.json.Value) !void {
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
    // We're currently reading the response for debugging purposes only
    const body = try req.reader().readAllAlloc(allocator, 65536);
    defer allocator.free(body);
    std.debug.print("Response body: {s}\n", .{body});
    try std.testing.expect(req.response.status == .ok); // FIXME: remove
}

// Macros that failed to get translated properly by translate-c, needed for varint deserialization
inline fn VARTAG_1B_E(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]pg.varattrib_1b_e, PTR).*.va_tag) {
    return @import("std").zig.c_translation.cast([*c]pg.varattrib_1b_e, PTR).*.va_tag;
}
inline fn VARTAG_IS_EXPANDED(tag: anytype) @TypeOf((tag & ~@as(c_uint, 1)) == pg.VARTAG_EXPANDED_RO) {
    return (tag & ~@as(c_uint, 1)) == pg.VARTAG_EXPANDED_RO;
}
inline fn VARTAG_SIZE(tag: anytype) @TypeOf(if (tag == pg.VARTAG_INDIRECT) @import("std").zig.c_translation.sizeof(pg.varatt_indirect) else if (VARTAG_IS_EXPANDED(tag)) @import("std").zig.c_translation.sizeof(pg.varatt_expanded) else if (tag == pg.VARTAG_ONDISK) @import("std").zig.c_translation.sizeof(pg.varatt_external) else pg.TrapMacro(pg.true, "unrecognized TOAST vartag")) {
    return if (tag == pg.VARTAG_INDIRECT) @import("std").zig.c_translation.sizeof(pg.varatt_indirect) else if (VARTAG_IS_EXPANDED(tag)) @import("std").zig.c_translation.sizeof(pg.varatt_expanded) else if (tag == pg.VARTAG_ONDISK) @import("std").zig.c_translation.sizeof(pg.varatt_external) else pg.TrapMacro(pg.true, "unrecognized TOAST vartag");
}
inline fn VARSIZE_4B(PTR: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]pg.varattrib_4b, PTR).*.va_4byte.va_header >> 2) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x3FFFFFFF, .hexadecimal)) {
    return (@import("std").zig.c_translation.cast([*c]pg.varattrib_4b, PTR).*.va_4byte.va_header >> 2) & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x3FFFFFFF, .hexadecimal);
}
inline fn VARSIZE_1B(PTR: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]pg.varattrib_1b, PTR).*.va_header >> 1) & @as(c_uint, 0x7F)) {
    return (@import("std").zig.c_translation.cast([*c]pg.varattrib_1b, PTR).*.va_header >> 1) & @as(c_uint, 0x7F);
}
inline fn VARATT_IS_1B(PTR: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]pg.varattrib_1b, PTR).*.va_header & @as(c_uint, 0x01)) == @as(c_uint, 0x01)) {
    return (@import("std").zig.c_translation.cast([*c]pg.varattrib_1b, PTR).*.va_header & @as(c_uint, 0x01)) == @as(c_uint, 0x01);
}
inline fn VARATT_IS_1B_E(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]pg.varattrib_1b, PTR).*.va_header == @as(c_uint, 0x01)) {
    return @import("std").zig.c_translation.cast([*c]pg.varattrib_1b, PTR).*.va_header == @as(c_uint, 0x01);
}
inline fn VARHDRSZ_EXTERNAL() c_uint {
    return @sizeOf(pg.varattrib_1b_e); // NOTICE: original code used offsetof(pg.varattrib_1b_e, va_data), but va_data gets translated as a function, so it's no longer a field
}
inline fn VARHDRSZ_SHORT() c_uint {
    return @sizeOf(pg.varattrib_1b); // NOTICE: original code used offsetof(pg.varattrib_1b_e, va_data), but va_data gets translated as a function, so it's no longer a field
}
inline fn VARSIZE_EXTERNAL(PTR: anytype) @TypeOf(VARHDRSZ_EXTERNAL() + VARTAG_SIZE(VARTAG_1B_E(PTR))) {
    return VARHDRSZ_EXTERNAL() + VARTAG_SIZE(VARTAG_1B_E(PTR));
}
fn VARSIZE_ANY_EXHDR(PTR: anytype) @TypeOf(if (VARATT_IS_1B_E(PTR)) VARSIZE_EXTERNAL(PTR) - VARHDRSZ_EXTERNAL() else if (VARATT_IS_1B(PTR)) VARSIZE_1B(PTR) - VARHDRSZ_SHORT() else VARSIZE_4B(PTR) - pg.VARHDRSZ) {
    return if (VARATT_IS_1B_E(PTR)) VARSIZE_EXTERNAL(PTR) - VARHDRSZ_EXTERNAL() else if (VARATT_IS_1B(PTR)) VARSIZE_1B(PTR) - VARHDRSZ_SHORT() else VARSIZE_4B(PTR) - pg.VARHDRSZ;
}

inline fn VARDATA_ANY(PTR: anytype) @TypeOf(if (VARATT_IS_1B(PTR)) VARDATA_1B(PTR) else VARDATA_4B(PTR)) {
    return if (VARATT_IS_1B(PTR)) VARDATA_1B(PTR) else VARDATA_4B(PTR);
}
inline fn VARDATA_4B(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]pg.varattrib_4b, PTR).*.va_4byte.va_data()) {
    return @import("std").zig.c_translation.cast([*c]pg.varattrib_4b, PTR).*.va_4byte.va_data();
}
inline fn VARDATA_1B(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]pg.varattrib_1b, PTR).*.va_data()) {
    return @import("std").zig.c_translation.cast([*c]pg.varattrib_1b, PTR).*.va_data();
}
inline fn VARDATA_1B_E(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]pg.varattrib_1b_e, PTR).*.va_data()) {
    return @import("std").zig.c_translation.cast([*c]pg.varattrib_1b_e, PTR).*.va_data();
}
// End of macros that failed to get translated

// Helper function that deserializes a Postgres' text value into a Zig slice
pub fn span_text(arg: [*c]pg.text) []u8 {
    std.debug.print("Spanned text: {s}\n", .{VARDATA_ANY(arg)[0..@intCast(VARSIZE_ANY_EXHDR(arg))]});
    return VARDATA_ANY(arg)[0..@intCast(VARSIZE_ANY_EXHDR(arg))];
}
