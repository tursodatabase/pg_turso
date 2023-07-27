const std = @import("std");
const pg = @cImport({
    @cInclude("postgres.h");
    @cInclude("replication/logical.h");
    @cInclude("utils/memutils.h");
    @cInclude("utils/builtins.h");
    @cInclude("utils/lsyscache.h");
});

// FIXME: clean up generated code
/// Used internally in other `print_*` functions.
fn print_literal(writer: anytype, typid: pg.Oid, c_outputstr: [*:0]const u8) void {
    const outputstr: [:0]const u8 = std.mem.sliceTo(c_outputstr, 0);

    switch (typid) {
        20, 21, 23, 26, 700, 701, 1700 => {
            writer.writeAll(outputstr) catch unreachable;
        },
        1560, 1562 => {
            writer.print("B'{s}'", .{outputstr}) catch unreachable;
        },
        16 => {
            if (std.mem.eql(u8, outputstr, "t")) {
                writer.writeAll("true") catch unreachable;
            } else {
                writer.writeAll("false") catch unreachable;
            }
        },
        25 => {
            writer.print("'{s}'", .{outputstr}) catch unreachable;
        },
        // FIXME: this routine is ported from translate-c output and probably
        // prints garbage for most of the types. Verify.
        else => {
            writer.print("'{s}'", .{outputstr}) catch unreachable;
        },
    }
}

pub fn print_insert(non_counting_writer: anytype, tupdesc: *pg.struct_TupleDescData, tuple: *pg.HeapTupleData) (error{NoInsertInfo} || @TypeOf(non_counting_writer).Error)!void {
    var counting_writer_struct = std.io.countingWriter(non_counting_writer);
    const counting_writer = counting_writer_struct.writer();

    try counting_writer.writeByte('(');

    const tupdesc_attributes: []pg.struct_FormData_pg_attribute = tupdesc_attributes: {
        const attrs: [*]pg.struct_FormData_pg_attribute = attrs: {
            const optional_attrs: ?[*]pg.struct_FormData_pg_attribute = tupdesc.attrs();
            break :attrs optional_attrs.?;
        };
        const natt: usize = @intCast(tupdesc.natts);
        break :tupdesc_attributes attrs[0..natt];
    };

    var not_first_iteration: bool = false;
    for (tupdesc_attributes, 0..) |*attr, i| {
        if (attr.attisdropped) continue;
        if (attr.attnum < 0) continue;

        var isnull: bool = undefined;
        _ = pg.heap_getattr(tuple, @intCast(i + 1), tupdesc, &isnull);
        if (isnull) {
            continue;
        }
        if (not_first_iteration) {
            try counting_writer.writeByte(',');
        }
        not_first_iteration = true;

        const quoted_identifier: [:0]const u8 = quoted_identifier: {
            const optional_quoted_identifier: ?[*:0]const u8 = pg.quote_identifier(&attr.attname.data);
            break :quoted_identifier std.mem.sliceTo(optional_quoted_identifier.?, 0);
        };
        try counting_writer.writeAll(quoted_identifier);
    }

    try counting_writer.writeAll(") VALUES (");

    not_first_iteration = false;
    for (tupdesc_attributes, 0..) |*attr, i| {
        if (attr.attisdropped) continue;
        if (attr.attnum < 0) continue;

        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var isnull: bool = undefined;
        const origval_addr: usize = pg.heap_getattr(tuple, @intCast(i + 1), tupdesc, &isnull);
        const origval_ptr: ?*anyopaque = @ptrFromInt(origval_addr);

        const typid = attr.atttypid;
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        if (isnull) {
            // nulls are not interesting for inserts
            continue;
        }
        if (not_first_iteration) {
            try counting_writer.writeByte(',');
        }
        not_first_iteration = true;

        if (typisvarlena and VARATT_IS_1B_E(origval_ptr) and VARATT_1B_E_IS_ONDISK(origval_ptr)) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            print_literal(counting_writer, typid, pg.OidOutputFunctionCall(typoutput, origval_addr));
        } else {
            const val_addr: usize = @intFromPtr(pg.pg_detoast_datum(@ptrCast(origval_ptr)));
            print_literal(counting_writer, typid, pg.OidOutputFunctionCall(typoutput, val_addr));
        }
    }
    try counting_writer.writeByte(')');
    if (counting_writer_struct.bytes_written == 0) return error.NoInsertInfo; // always false
}

pub fn print_update(non_counting_writer: anytype, tupdesc: *pg.TupleDescData, key_attrs: ?*pg.Bitmapset, new_tuple: *pg.HeapTupleData, previous_tuple: ?*pg.HeapTupleData) (error{NoUpdateInfo} || @TypeOf(non_counting_writer).Error)!void {
    var counting_writer_struct = std.io.countingWriter(non_counting_writer);
    const counting_writer = counting_writer_struct.writer();

    try counting_writer.writeByte('(');

    const tupdesc_attributes: []pg.struct_FormData_pg_attribute = tupdesc_attributes: {
        const attrs: [*]pg.struct_FormData_pg_attribute = attrs: {
            const optional_attrs: ?[*]pg.struct_FormData_pg_attribute = tupdesc.attrs();
            break :attrs optional_attrs.?;
        };
        const natt: usize = @intCast(tupdesc.natts);
        break :tupdesc_attributes attrs[0..natt];
    };

    var not_first_iteration: bool = false;
    for (tupdesc_attributes, 0..) |*attr, i| {
        if (attr.attisdropped) {
            std.debug.print("Attr {} is dropped\n", .{attr.attnum});
            continue;
        }
        if (attr.attnum < 0) {
            std.debug.print("Natt {} is a system attribute\n", .{attr.attnum});
            continue;
        }

        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var previous_exists_and_is_null: bool = undefined;
        var new_isnull: bool = undefined;

        const new_val_addr: usize = pg.heap_getattr(new_tuple, @intCast(i + 1), tupdesc, &new_isnull);
        const new_val_ptr: ?*anyopaque = @ptrFromInt(new_val_addr);

        if (previous_tuple) |previous_not_null_tuple| {
            _ = pg.heap_getattr(previous_not_null_tuple, @intCast(i + 1), tupdesc, &previous_exists_and_is_null);
        } else {
            previous_exists_and_is_null = false;
        }

        const typid = attr.atttypid;
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        if (new_isnull and previous_exists_and_is_null) {
            std.debug.print("The new value is null and so was the previous one, skipping\n", .{});
            continue;
        }
        if (not_first_iteration) {
            try counting_writer.writeByte(',');
        }
        not_first_iteration = true;

        const quoted_identifier: [:0]const u8 = quoted_identifier: {
            const optional_quoted_identifier: ?[*:0]const u8 = pg.quote_identifier(&attr.attname.data);
            break :quoted_identifier std.mem.sliceTo(optional_quoted_identifier.?, 0);
        };
        try counting_writer.print("{s}=", .{quoted_identifier});

        if (new_isnull) {
            try counting_writer.writeAll("null");
        } else if (typisvarlena and VARATT_IS_1B_E(new_val_ptr) and VARATT_1B_E_IS_ONDISK(new_val_ptr)) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            print_literal(counting_writer, typid, pg.OidOutputFunctionCall(typoutput, new_val_addr));
        } else {
            const val_addr: usize = @intFromPtr(pg.pg_detoast_datum(@ptrCast(new_val_ptr)));
            print_literal(counting_writer, typid, pg.OidOutputFunctionCall(typoutput, val_addr));
        }
    }

    try counting_writer.writeAll(" WHERE ");

    not_first_iteration = false;
    for (tupdesc_attributes, 0..) |*attr, i| {
        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var isnull: bool = undefined;
        if (attr.attisdropped) continue;
        if (attr.attnum < 0) continue;

        if (pg.bms_is_member(attr.attnum - pg.FirstLowInvalidHeapAttributeNumber, key_attrs)) {
            std.debug.print("{} is a key attribute\n", .{attr.attnum});
        } else {
            std.debug.print("{} is not a key attribute, skipping\n", .{attr.attnum});
            continue;
        }

        const key_addr: usize = if (previous_tuple) |previous_not_null_tuple| blk: {
            std.debug.print("Previous tuple exists, taking data from the previous tuple\n", .{});
            break :blk pg.heap_getattr(previous_not_null_tuple, @intCast(i + 1), tupdesc, &isnull);
        } else blk: {
            std.debug.print("No previous tuple, taking data from the new tuple\n", .{});
            break :blk pg.heap_getattr(new_tuple, @intCast(i + 1), tupdesc, &isnull);
        };
        const key_ptr: ?*anyopaque = @ptrFromInt(key_addr);

        const typid = attr.atttypid;
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);
        if (isnull) {
            // do not print nulls when emitting information about the old key
            continue;
        }
        if (not_first_iteration) {
            try counting_writer.writeByte(',');
        }
        not_first_iteration = true;

        const quoted_identifier: [:0]const u8 = quoted_identifier: {
            const optional_quoted_identifier: ?[*:0]const u8 = pg.quote_identifier(&attr.attname.data);
            break :quoted_identifier std.mem.sliceTo(optional_quoted_identifier.?, 0);
        };
        try counting_writer.print("{s}=", .{quoted_identifier});

        if (typisvarlena and VARATT_IS_1B_E(key_ptr) and VARATT_1B_E_IS_ONDISK(key_ptr)) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            print_literal(counting_writer, typid, pg.OidOutputFunctionCall(typoutput, key_addr));
        } else {
            const val_addr: usize = @intFromPtr(pg.pg_detoast_datum(@ptrCast(key_ptr)));
            print_literal(counting_writer, typid, pg.OidOutputFunctionCall(typoutput, val_addr));
        }
    }

    if (counting_writer_struct.bytes_written == 0) return error.NoUpdateInfo;
}

pub fn print_delete(non_counting_writer: anytype, tupdesc: *pg.TupleDescData, tuple: *pg.HeapTupleData) (error{NoDeleteInfo} || @TypeOf(non_counting_writer).Error)!void {
    var counting_writer_struct = std.io.countingWriter(non_counting_writer);
    const counting_writer = counting_writer_struct.writer();

    const tupdesc_attributes: []pg.struct_FormData_pg_attribute = tupdesc_attributes: {
        const attrs: [*]pg.struct_FormData_pg_attribute = attrs: {
            const optional_attrs: ?[*]pg.struct_FormData_pg_attribute = tupdesc.attrs();
            break :attrs optional_attrs.?;
        };
        const natt: usize = @intCast(tupdesc.natts);
        break :tupdesc_attributes attrs[0..natt];
    };

    var not_first_iteration: bool = false;

    for (tupdesc_attributes, 0..) |*attr, i| {
        if (attr.attisdropped) continue;
        if (attr.attnum < 0) continue;

        var typoutput: pg.Oid = undefined;
        var typisvarlena: bool = undefined;
        var isnull: bool = undefined;

        const origval_addr: usize = pg.heap_getattr(tuple, @intCast(i + 1), tupdesc, &isnull);
        const origval_ptr: ?*anyopaque = @ptrFromInt(origval_addr);
        if (isnull) {
            continue;
        }

        if (not_first_iteration) {
            try counting_writer.writeByte(',');
        } else {
            try counting_writer.writeAll("WHERE ");
        }
        not_first_iteration = true;

        const typid = attr.atttypid;
        pg.getTypeOutputInfo(typid, &typoutput, &typisvarlena);

        const quoted_identifier: [:0]const u8 = quoted_identifier: {
            const optional_quoted_identifier: ?[*:0]const u8 = pg.quote_identifier(&attr.attname.data);
            break :quoted_identifier std.mem.sliceTo(optional_quoted_identifier.?, 0);
        };
        try counting_writer.print("{s}=", .{quoted_identifier});

        if (isnull) {
            try counting_writer.writeAll("null");
        } else if (typisvarlena and VARATT_IS_1B_E(origval_ptr) and VARATT_1B_E_IS_ONDISK(origval_ptr)) {
            std.debug.print("unchanged-toast-datum\n", .{});
        } else if (!typisvarlena) {
            print_literal(counting_writer, typid, pg.OidOutputFunctionCall(typoutput, origval_addr));
        } else {
            const val_addr: usize = @intFromPtr(pg.pg_detoast_datum(@ptrCast(origval_ptr)));
            print_literal(counting_writer, typid, pg.OidOutputFunctionCall(typoutput, val_addr));
        }
    }

    if (counting_writer_struct.bytes_written == 0) return error.NoDeleteInfo;
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

    try std.json.stringify(json_payload, .{}, req.writer());

    try req.finish();
    try req.wait();

    std.debug.print("Response status: {}\n", .{req.response.status});
    // We're currently reading the response for debugging purposes only
    const body = try req.reader().readAllAlloc(allocator, 65536);
    defer allocator.free(body);
    std.debug.print("Response body: {s}\n", .{body});
    try std.testing.expect(req.response.status == .ok); // FIXME: remove
}

inline fn VARATT_1B_E_IS_ONDISK(PTR: anytype) bool {
    const varattrib_casted: ?*pg.varattrib_1b_e = @ptrFromInt(@intFromPtr(PTR));
    return varattrib_casted.?.va_tag == pg.VARTAG_ONDISK;
}

// Macros that failed to get translated properly by translate-c, needed for varint deserialization
inline fn VARTAG_1B_E(PTR: anytype) u8 {
    const varattrib_casted: ?*pg.varattrib_1b_e = @ptrFromInt(@intFromPtr(PTR));
    return varattrib_casted.?.va_tag;
}
inline fn VARTAG_IS_EXPANDED(tag: anytype) bool {
    return (tag & ~@as(c_uint, 1)) == pg.VARTAG_EXPANDED_RO;
}

inline fn VARTAG_SIZE(tag: anytype) usize {
    return if (tag == pg.VARTAG_INDIRECT)
        std.zig.c_translation.sizeof(pg.varatt_indirect)
    else if (VARTAG_IS_EXPANDED(tag))
        std.zig.c_translation.sizeof(pg.varatt_expanded)
    else if (tag == pg.VARTAG_ONDISK)
        std.zig.c_translation.sizeof(pg.varatt_external)
    else
        pg.TrapMacro(pg.true, "unrecognized TOAST vartag");
}
inline fn VARSIZE_4B(PTR: anytype) u32 {
    const varattrib_casted: ?*pg.varattrib_4b = @ptrFromInt(@intFromPtr(PTR));
    return (varattrib_casted.?.va_4byte.va_header >> 2) & 0x3FFFFFFF;
}
inline fn VARSIZE_1B(PTR: anytype) u32 {
    const varattrib_casted: ?*pg.varattrib_1b = @ptrFromInt(@intFromPtr(PTR));
    return (varattrib_casted.?.va_header >> 1) & 0x7F;
}
inline fn VARATT_IS_1B(PTR: anytype) bool {
    const varattrib_casted: ?*pg.varattrib_1b = @ptrFromInt(@intFromPtr(PTR));
    return varattrib_casted.?.va_header & 0x01 == 0x01;
}
inline fn VARATT_IS_1B_E(PTR: anytype) bool {
    const varattrib_casted: ?*pg.varattrib_1b = @ptrFromInt(@intFromPtr(PTR));
    return varattrib_casted.?.va_header == 0x01;
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
inline fn VARDATA_4B(PTR: anytype) std.zig.c_translation.FlexibleArrayType(*pg.varattrib_4b, u8) {
    const varattrib_casted: ?*pg.varattrib_4b = @ptrFromInt(@intFromPtr(PTR));
    return varattrib_casted.?.va_4byte.va_data();
}
inline fn VARDATA_1B(PTR: anytype) std.zig.c_translation.FlexibleArrayType(*pg.varattrib_1b, u8) {
    const varattrib_casted: ?*pg.varattrib_1b = @ptrFromInt(@intFromPtr(PTR));
    return varattrib_casted.?.va_data();
}
inline fn VARDATA_1B_E(PTR: anytype) std.zig.c_translation.FlexibleArrayType(*pg.varattrib_1b_e, u8) {
    const varattrib_casted: ?*pg.varattrib_1b_e = @ptrFromInt(@intFromPtr(PTR));
    return varattrib_casted.?.va_data();
}
// End of macros that failed to get translated

// Helper function that deserializes a Postgres' text value into a Zig slice
pub fn span_text(arg: [*]pg.text) []u8 {
    const spanned_text = VARDATA_ANY(arg)[0..@intCast(VARSIZE_ANY_EXHDR(arg))];
    std.debug.print("Spanned text: {s}\n", .{spanned_text});
    return spanned_text;
}
