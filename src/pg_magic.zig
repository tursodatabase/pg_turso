pub const PG_MAGIC_FUNCTION_NAME = Pg_magic_func;
pub const PG_MAGIC_FUNCTION_NAME_STRING = "Pg_magic_func";

pub export fn Pg_magic_func() [*c]const Pg_magic_struct {
    const Pg_magic_data = struct {
        const static: Pg_magic_struct = Pg_magic_struct{
            .len = @bitCast(c_int, @truncate(c_uint, @sizeOf(Pg_magic_struct))),
            .version = @divTrunc(@as(c_int, 160000), @as(c_int, 100)),
            .funcmaxargs = @as(c_int, 100),
            .indexmaxkeys = @as(c_int, 32),
            .namedatalen = @as(c_int, 64),
            .float8byval = @as(c_int, 1),
            .abi_extra = "PostgreSQL",
        };
    };
    return &Pg_magic_data.static;
}

