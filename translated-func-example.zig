pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const Oid = c_uint;
pub const pg_int64 = c_long;
pub const struct___va_list_tag = extern struct {
    gp_offset: c_uint,
    fp_offset: c_uint,
    overflow_arg_area: ?*anyopaque,
    reg_save_area: ?*anyopaque,
};
pub const __builtin_va_list = [1]struct___va_list_tag;
pub const __gnuc_va_list = __builtin_va_list;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int,
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
const union_unnamed_1 = extern union {
    __wch: c_uint,
    __wchb: [4]u8,
};
pub const __mbstate_t = extern struct {
    __count: c_int,
    __value: union_unnamed_1,
};
pub const struct__G_fpos_t = extern struct {
    __pos: __off_t,
    __state: __mbstate_t,
};
pub const __fpos_t = struct__G_fpos_t;
pub const struct__G_fpos64_t = extern struct {
    __pos: __off64_t,
    __state: __mbstate_t,
};
pub const __fpos64_t = struct__G_fpos64_t;
pub const struct__IO_marker = opaque {};
pub const _IO_lock_t = anyopaque;
pub const struct__IO_codecvt = opaque {};
pub const struct__IO_wide_data = opaque {};
pub const struct__IO_FILE = extern struct {
    _flags: c_int,
    _IO_read_ptr: [*c]u8,
    _IO_read_end: [*c]u8,
    _IO_read_base: [*c]u8,
    _IO_write_base: [*c]u8,
    _IO_write_ptr: [*c]u8,
    _IO_write_end: [*c]u8,
    _IO_buf_base: [*c]u8,
    _IO_buf_end: [*c]u8,
    _IO_save_base: [*c]u8,
    _IO_backup_base: [*c]u8,
    _IO_save_end: [*c]u8,
    _markers: ?*struct__IO_marker,
    _chain: [*c]struct__IO_FILE,
    _fileno: c_int,
    _flags2: c_int,
    _old_offset: __off_t,
    _cur_column: c_ushort,
    _vtable_offset: i8,
    _shortbuf: [1]u8,
    _lock: ?*_IO_lock_t,
    _offset: __off64_t,
    _codecvt: ?*struct__IO_codecvt,
    _wide_data: ?*struct__IO_wide_data,
    _freeres_list: [*c]struct__IO_FILE,
    _freeres_buf: ?*anyopaque,
    __pad5: usize,
    _mode: c_int,
    _unused2: [20]u8,
};
pub const __FILE = struct__IO_FILE;
pub const FILE = struct__IO_FILE;
pub const va_list = __gnuc_va_list;
pub const off_t = __off_t;
pub const fpos_t = __fpos_t;
pub extern var stdin: [*c]FILE;
pub extern var stdout: [*c]FILE;
pub extern var stderr: [*c]FILE;
pub extern fn remove(__filename: [*c]const u8) c_int;
pub extern fn rename(__old: [*c]const u8, __new: [*c]const u8) c_int;
pub extern fn renameat(__oldfd: c_int, __old: [*c]const u8, __newfd: c_int, __new: [*c]const u8) c_int;
pub extern fn fclose(__stream: [*c]FILE) c_int;
pub extern fn tmpfile() [*c]FILE;
pub extern fn tmpnam([*c]u8) [*c]u8;
pub extern fn tmpnam_r(__s: [*c]u8) [*c]u8;
pub extern fn tempnam(__dir: [*c]const u8, __pfx: [*c]const u8) [*c]u8;
pub extern fn fflush(__stream: [*c]FILE) c_int;
pub extern fn fflush_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fopen(__filename: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn freopen(noalias __filename: [*c]const u8, noalias __modes: [*c]const u8, noalias __stream: [*c]FILE) [*c]FILE;
pub extern fn fdopen(__fd: c_int, __modes: [*c]const u8) [*c]FILE;
pub extern fn fmemopen(__s: ?*anyopaque, __len: usize, __modes: [*c]const u8) [*c]FILE;
pub extern fn open_memstream(__bufloc: [*c][*c]u8, __sizeloc: [*c]usize) [*c]FILE;
pub extern fn setbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8) void;
pub extern fn setvbuf(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __modes: c_int, __n: usize) c_int;
pub extern fn setbuffer(noalias __stream: [*c]FILE, noalias __buf: [*c]u8, __size: usize) void;
pub extern fn setlinebuf(__stream: [*c]FILE) void;
pub extern fn fprintf(__stream: [*c]FILE, __format: [*c]const u8, ...) c_int;
pub extern fn printf(__format: [*c]const u8, ...) c_int;
pub extern fn sprintf(__s: [*c]u8, __format: [*c]const u8, ...) c_int;
pub extern fn vfprintf(__s: [*c]FILE, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vprintf(__format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsprintf(__s: [*c]u8, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn snprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, ...) c_int;
pub extern fn vsnprintf(__s: [*c]u8, __maxlen: c_ulong, __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vdprintf(__fd: c_int, noalias __fmt: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn dprintf(__fd: c_int, noalias __fmt: [*c]const u8, ...) c_int;
pub extern fn fscanf(noalias __stream: [*c]FILE, noalias __format: [*c]const u8, ...) c_int;
pub extern fn scanf(noalias __format: [*c]const u8, ...) c_int;
pub extern fn sscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, ...) c_int;
pub const _Float32 = f32;
pub const _Float64 = f64;
pub const _Float32x = f64;
pub const _Float64x = c_longdouble;
pub extern fn vfscanf(noalias __s: [*c]FILE, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vscanf(noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn vsscanf(noalias __s: [*c]const u8, noalias __format: [*c]const u8, __arg: [*c]struct___va_list_tag) c_int;
pub extern fn fgetc(__stream: [*c]FILE) c_int;
pub extern fn getc(__stream: [*c]FILE) c_int;
pub extern fn getchar() c_int;
pub extern fn getc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn getchar_unlocked() c_int;
pub extern fn fgetc_unlocked(__stream: [*c]FILE) c_int;
pub extern fn fputc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar(__c: c_int) c_int;
pub extern fn fputc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putc_unlocked(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn putchar_unlocked(__c: c_int) c_int;
pub extern fn getw(__stream: [*c]FILE) c_int;
pub extern fn putw(__w: c_int, __stream: [*c]FILE) c_int;
pub extern fn fgets(noalias __s: [*c]u8, __n: c_int, noalias __stream: [*c]FILE) [*c]u8;
pub extern fn __getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getdelim(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, __delimiter: c_int, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn getline(noalias __lineptr: [*c][*c]u8, noalias __n: [*c]usize, noalias __stream: [*c]FILE) __ssize_t;
pub extern fn fputs(noalias __s: [*c]const u8, noalias __stream: [*c]FILE) c_int;
pub extern fn puts(__s: [*c]const u8) c_int;
pub extern fn ungetc(__c: c_int, __stream: [*c]FILE) c_int;
pub extern fn fread(__ptr: ?*anyopaque, __size: c_ulong, __n: c_ulong, __stream: [*c]FILE) c_ulong;
pub extern fn fwrite(__ptr: ?*const anyopaque, __size: c_ulong, __n: c_ulong, __s: [*c]FILE) c_ulong;
pub extern fn fread_unlocked(noalias __ptr: ?*anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fwrite_unlocked(noalias __ptr: ?*const anyopaque, __size: usize, __n: usize, noalias __stream: [*c]FILE) usize;
pub extern fn fseek(__stream: [*c]FILE, __off: c_long, __whence: c_int) c_int;
pub extern fn ftell(__stream: [*c]FILE) c_long;
pub extern fn rewind(__stream: [*c]FILE) void;
pub extern fn fseeko(__stream: [*c]FILE, __off: __off_t, __whence: c_int) c_int;
pub extern fn ftello(__stream: [*c]FILE) __off_t;
pub extern fn fgetpos(noalias __stream: [*c]FILE, noalias __pos: [*c]fpos_t) c_int;
pub extern fn fsetpos(__stream: [*c]FILE, __pos: [*c]const fpos_t) c_int;
pub extern fn clearerr(__stream: [*c]FILE) void;
pub extern fn feof(__stream: [*c]FILE) c_int;
pub extern fn ferror(__stream: [*c]FILE) c_int;
pub extern fn clearerr_unlocked(__stream: [*c]FILE) void;
pub extern fn feof_unlocked(__stream: [*c]FILE) c_int;
pub extern fn ferror_unlocked(__stream: [*c]FILE) c_int;
pub extern fn perror(__s: [*c]const u8) void;
pub extern fn fileno(__stream: [*c]FILE) c_int;
pub extern fn fileno_unlocked(__stream: [*c]FILE) c_int;
pub extern fn pclose(__stream: [*c]FILE) c_int;
pub extern fn popen(__command: [*c]const u8, __modes: [*c]const u8) [*c]FILE;
pub extern fn ctermid(__s: [*c]u8) [*c]u8;
pub extern fn flockfile(__stream: [*c]FILE) void;
pub extern fn ftrylockfile(__stream: [*c]FILE) c_int;
pub extern fn funlockfile(__stream: [*c]FILE) void;
pub extern fn __uflow([*c]FILE) c_int;
pub extern fn __overflow([*c]FILE, c_int) c_int;
pub const wchar_t = c_int;
pub const div_t = extern struct {
    quot: c_int,
    rem: c_int,
};
pub const ldiv_t = extern struct {
    quot: c_long,
    rem: c_long,
};
pub const lldiv_t = extern struct {
    quot: c_longlong,
    rem: c_longlong,
};
pub extern fn __ctype_get_mb_cur_max() usize;
pub extern fn atof(__nptr: [*c]const u8) f64;
pub extern fn atoi(__nptr: [*c]const u8) c_int;
pub extern fn atol(__nptr: [*c]const u8) c_long;
pub extern fn atoll(__nptr: [*c]const u8) c_longlong;
pub extern fn strtod(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f64;
pub extern fn strtof(__nptr: [*c]const u8, __endptr: [*c][*c]u8) f32;
pub extern fn strtold(__nptr: [*c]const u8, __endptr: [*c][*c]u8) c_longdouble;
pub extern fn strtol(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_long;
pub extern fn strtoul(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulong;
pub extern fn strtoq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtouq(noalias __nptr: [*c]const u8, noalias __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn strtoll(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_longlong;
pub extern fn strtoull(__nptr: [*c]const u8, __endptr: [*c][*c]u8, __base: c_int) c_ulonglong;
pub extern fn l64a(__n: c_long) [*c]u8;
pub extern fn a64l(__s: [*c]const u8) c_long;
pub const u_char = __u_char;
pub const u_short = __u_short;
pub const u_int = __u_int;
pub const u_long = __u_long;
pub const quad_t = __quad_t;
pub const u_quad_t = __u_quad_t;
pub const fsid_t = __fsid_t;
pub const loff_t = __loff_t;
pub const ino_t = __ino_t;
pub const dev_t = __dev_t;
pub const gid_t = __gid_t;
pub const mode_t = __mode_t;
pub const nlink_t = __nlink_t;
pub const uid_t = __uid_t;
pub const pid_t = __pid_t;
pub const id_t = __id_t;
pub const daddr_t = __daddr_t;
pub const caddr_t = __caddr_t;
pub const key_t = __key_t;
pub const clock_t = __clock_t;
pub const clockid_t = __clockid_t;
pub const time_t = __time_t;
pub const timer_t = __timer_t;
pub const ulong = c_ulong;
pub const ushort = c_ushort;
pub const uint = c_uint;
pub const u_int8_t = __uint8_t;
pub const u_int16_t = __uint16_t;
pub const u_int32_t = __uint32_t;
pub const u_int64_t = __uint64_t;
pub const register_t = c_long;
pub fn __bswap_16(arg___bsx: __uint16_t) callconv(.C) __uint16_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint16_t, @truncate(c_short, ((@bitCast(c_int, @as(c_uint, __bsx)) >> @intCast(@import("std").math.Log2Int(c_int), 8)) & @as(c_int, 255)) | ((@bitCast(c_int, @as(c_uint, __bsx)) & @as(c_int, 255)) << @intCast(@import("std").math.Log2Int(c_int), 8))));
}
pub fn __bswap_32(arg___bsx: __uint32_t) callconv(.C) __uint32_t {
    var __bsx = arg___bsx;
    return ((((__bsx & @as(c_uint, 4278190080)) >> @intCast(@import("std").math.Log2Int(c_uint), 24)) | ((__bsx & @as(c_uint, 16711680)) >> @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 65280)) << @intCast(@import("std").math.Log2Int(c_uint), 8))) | ((__bsx & @as(c_uint, 255)) << @intCast(@import("std").math.Log2Int(c_uint), 24));
}
pub fn __bswap_64(arg___bsx: __uint64_t) callconv(.C) __uint64_t {
    var __bsx = arg___bsx;
    return @bitCast(__uint64_t, @truncate(c_ulong, ((((((((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 18374686479671623680)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 56)) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 71776119061217280)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 280375465082880)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 1095216660480)) >> @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 4278190080)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 8))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 16711680)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 24))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 65280)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 40))) | ((@bitCast(c_ulonglong, @as(c_ulonglong, __bsx)) & @as(c_ulonglong, 255)) << @intCast(@import("std").math.Log2Int(c_ulonglong), 56))));
}
pub fn __uint16_identity(arg___x: __uint16_t) callconv(.C) __uint16_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint32_identity(arg___x: __uint32_t) callconv(.C) __uint32_t {
    var __x = arg___x;
    return __x;
}
pub fn __uint64_identity(arg___x: __uint64_t) callconv(.C) __uint64_t {
    var __x = arg___x;
    return __x;
}
pub const __sigset_t = extern struct {
    __val: [16]c_ulong,
};
pub const sigset_t = __sigset_t;
pub const struct_timeval = extern struct {
    tv_sec: __time_t,
    tv_usec: __suseconds_t,
};
pub const struct_timespec = extern struct {
    tv_sec: __time_t,
    tv_nsec: __syscall_slong_t,
};
pub const suseconds_t = __suseconds_t;
pub const __fd_mask = c_long;
pub const fd_set = extern struct {
    __fds_bits: [16]__fd_mask,
};
pub const fd_mask = __fd_mask;
pub extern fn select(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]struct_timeval) c_int;
pub extern fn pselect(__nfds: c_int, noalias __readfds: [*c]fd_set, noalias __writefds: [*c]fd_set, noalias __exceptfds: [*c]fd_set, noalias __timeout: [*c]const struct_timespec, noalias __sigmask: [*c]const __sigset_t) c_int;
pub const blksize_t = __blksize_t;
pub const blkcnt_t = __blkcnt_t;
pub const fsblkcnt_t = __fsblkcnt_t;
pub const fsfilcnt_t = __fsfilcnt_t;
const struct_unnamed_2 = extern struct {
    __low: c_uint,
    __high: c_uint,
};
pub const __atomic_wide_counter = extern union {
    __value64: c_ulonglong,
    __value32: struct_unnamed_2,
};
pub const struct___pthread_internal_list = extern struct {
    __prev: [*c]struct___pthread_internal_list,
    __next: [*c]struct___pthread_internal_list,
};
pub const __pthread_list_t = struct___pthread_internal_list;
pub const struct___pthread_internal_slist = extern struct {
    __next: [*c]struct___pthread_internal_slist,
};
pub const __pthread_slist_t = struct___pthread_internal_slist;
pub const struct___pthread_mutex_s = extern struct {
    __lock: c_int,
    __count: c_uint,
    __owner: c_int,
    __nusers: c_uint,
    __kind: c_int,
    __spins: c_short,
    __elision: c_short,
    __list: __pthread_list_t,
};
pub const struct___pthread_rwlock_arch_t = extern struct {
    __readers: c_uint,
    __writers: c_uint,
    __wrphase_futex: c_uint,
    __writers_futex: c_uint,
    __pad3: c_uint,
    __pad4: c_uint,
    __cur_writer: c_int,
    __shared: c_int,
    __rwelision: i8,
    __pad1: [7]u8,
    __pad2: c_ulong,
    __flags: c_uint,
};
pub const struct___pthread_cond_s = extern struct {
    __wseq: __atomic_wide_counter,
    __g1_start: __atomic_wide_counter,
    __g_refs: [2]c_uint,
    __g_size: [2]c_uint,
    __g1_orig_size: c_uint,
    __wrefs: c_uint,
    __g_signals: [2]c_uint,
};
pub const __tss_t = c_uint;
pub const __thrd_t = c_ulong;
pub const __once_flag = extern struct {
    __data: c_int,
};
pub const pthread_t = c_ulong;
pub const pthread_mutexattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_condattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub const pthread_key_t = c_uint;
pub const pthread_once_t = c_int;
pub const union_pthread_attr_t = extern union {
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_attr_t = union_pthread_attr_t;
pub const pthread_mutex_t = extern union {
    __data: struct___pthread_mutex_s,
    __size: [40]u8,
    __align: c_long,
};
pub const pthread_cond_t = extern union {
    __data: struct___pthread_cond_s,
    __size: [48]u8,
    __align: c_longlong,
};
pub const pthread_rwlock_t = extern union {
    __data: struct___pthread_rwlock_arch_t,
    __size: [56]u8,
    __align: c_long,
};
pub const pthread_rwlockattr_t = extern union {
    __size: [8]u8,
    __align: c_long,
};
pub const pthread_spinlock_t = c_int;
pub const pthread_barrier_t = extern union {
    __size: [32]u8,
    __align: c_long,
};
pub const pthread_barrierattr_t = extern union {
    __size: [4]u8,
    __align: c_int,
};
pub extern fn random() c_long;
pub extern fn srandom(__seed: c_uint) void;
pub extern fn initstate(__seed: c_uint, __statebuf: [*c]u8, __statelen: usize) [*c]u8;
pub extern fn setstate(__statebuf: [*c]u8) [*c]u8;
pub const struct_random_data = extern struct {
    fptr: [*c]i32,
    rptr: [*c]i32,
    state: [*c]i32,
    rand_type: c_int,
    rand_deg: c_int,
    rand_sep: c_int,
    end_ptr: [*c]i32,
};
pub extern fn random_r(noalias __buf: [*c]struct_random_data, noalias __result: [*c]i32) c_int;
pub extern fn srandom_r(__seed: c_uint, __buf: [*c]struct_random_data) c_int;
pub extern fn initstate_r(__seed: c_uint, noalias __statebuf: [*c]u8, __statelen: usize, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn setstate_r(noalias __statebuf: [*c]u8, noalias __buf: [*c]struct_random_data) c_int;
pub extern fn rand() c_int;
pub extern fn srand(__seed: c_uint) void;
pub extern fn rand_r(__seed: [*c]c_uint) c_int;
pub extern fn drand48() f64;
pub extern fn erand48(__xsubi: [*c]c_ushort) f64;
pub extern fn lrand48() c_long;
pub extern fn nrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn mrand48() c_long;
pub extern fn jrand48(__xsubi: [*c]c_ushort) c_long;
pub extern fn srand48(__seedval: c_long) void;
pub extern fn seed48(__seed16v: [*c]c_ushort) [*c]c_ushort;
pub extern fn lcong48(__param: [*c]c_ushort) void;
pub const struct_drand48_data = extern struct {
    __x: [3]c_ushort,
    __old_x: [3]c_ushort,
    __c: c_ushort,
    __init: c_ushort,
    __a: c_ulonglong,
};
pub extern fn drand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn erand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]f64) c_int;
pub extern fn lrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn nrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn mrand48_r(noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn jrand48_r(__xsubi: [*c]c_ushort, noalias __buffer: [*c]struct_drand48_data, noalias __result: [*c]c_long) c_int;
pub extern fn srand48_r(__seedval: c_long, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn seed48_r(__seed16v: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn lcong48_r(__param: [*c]c_ushort, __buffer: [*c]struct_drand48_data) c_int;
pub extern fn arc4random() __uint32_t;
pub extern fn arc4random_buf(__buf: ?*anyopaque, __size: usize) void;
pub extern fn arc4random_uniform(__upper_bound: __uint32_t) __uint32_t;
pub extern fn malloc(__size: c_ulong) ?*anyopaque;
pub extern fn calloc(__nmemb: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn realloc(__ptr: ?*anyopaque, __size: c_ulong) ?*anyopaque;
pub extern fn free(__ptr: ?*anyopaque) void;
pub extern fn reallocarray(__ptr: ?*anyopaque, __nmemb: usize, __size: usize) ?*anyopaque;
pub extern fn alloca(__size: c_ulong) ?*anyopaque;
pub extern fn valloc(__size: usize) ?*anyopaque;
pub extern fn posix_memalign(__memptr: [*c]?*anyopaque, __alignment: usize, __size: usize) c_int;
pub extern fn aligned_alloc(__alignment: c_ulong, __size: c_ulong) ?*anyopaque;
pub extern fn abort() noreturn;
pub extern fn atexit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn at_quick_exit(__func: ?*const fn () callconv(.C) void) c_int;
pub extern fn on_exit(__func: ?*const fn (c_int, ?*anyopaque) callconv(.C) void, __arg: ?*anyopaque) c_int;
pub extern fn exit(__status: c_int) noreturn;
pub extern fn quick_exit(__status: c_int) noreturn;
pub extern fn _Exit(__status: c_int) noreturn;
pub extern fn getenv(__name: [*c]const u8) [*c]u8;
pub extern fn putenv(__string: [*c]u8) c_int;
pub extern fn setenv(__name: [*c]const u8, __value: [*c]const u8, __replace: c_int) c_int;
pub extern fn unsetenv(__name: [*c]const u8) c_int;
pub extern fn clearenv() c_int;
pub extern fn mktemp(__template: [*c]u8) [*c]u8;
pub extern fn mkstemp(__template: [*c]u8) c_int;
pub extern fn mkstemps(__template: [*c]u8, __suffixlen: c_int) c_int;
pub extern fn mkdtemp(__template: [*c]u8) [*c]u8;
pub extern fn system(__command: [*c]const u8) c_int;
pub extern fn realpath(noalias __name: [*c]const u8, noalias __resolved: [*c]u8) [*c]u8;
pub const __compar_fn_t = ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int;
pub extern fn bsearch(__key: ?*const anyopaque, __base: ?*const anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) ?*anyopaque;
pub extern fn qsort(__base: ?*anyopaque, __nmemb: usize, __size: usize, __compar: __compar_fn_t) void;
pub extern fn abs(__x: c_int) c_int;
pub extern fn labs(__x: c_long) c_long;
pub extern fn llabs(__x: c_longlong) c_longlong;
pub extern fn div(__numer: c_int, __denom: c_int) div_t;
pub extern fn ldiv(__numer: c_long, __denom: c_long) ldiv_t;
pub extern fn lldiv(__numer: c_longlong, __denom: c_longlong) lldiv_t;
pub extern fn ecvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn fcvt(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn gcvt(__value: f64, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn qecvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qfcvt(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int) [*c]u8;
pub extern fn qgcvt(__value: c_longdouble, __ndigit: c_int, __buf: [*c]u8) [*c]u8;
pub extern fn ecvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn fcvt_r(__value: f64, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qecvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn qfcvt_r(__value: c_longdouble, __ndigit: c_int, noalias __decpt: [*c]c_int, noalias __sign: [*c]c_int, noalias __buf: [*c]u8, __len: usize) c_int;
pub extern fn mblen(__s: [*c]const u8, __n: usize) c_int;
pub extern fn mbtowc(noalias __pwc: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) c_int;
pub extern fn wctomb(__s: [*c]u8, __wchar: wchar_t) c_int;
pub extern fn mbstowcs(noalias __pwcs: [*c]wchar_t, noalias __s: [*c]const u8, __n: usize) usize;
pub extern fn wcstombs(noalias __s: [*c]u8, noalias __pwcs: [*c]const wchar_t, __n: usize) usize;
pub extern fn rpmatch(__response: [*c]const u8) c_int;
pub extern fn getsubopt(noalias __optionp: [*c][*c]u8, noalias __tokens: [*c]const [*c]u8, noalias __valuep: [*c][*c]u8) c_int;
pub extern fn getloadavg(__loadavg: [*c]f64, __nelem: c_int) c_int;
pub extern fn memcpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memmove(__dest: ?*anyopaque, __src: ?*const anyopaque, __n: c_ulong) ?*anyopaque;
pub extern fn memccpy(__dest: ?*anyopaque, __src: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memset(__s: ?*anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn memcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn __memcmpeq(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: usize) c_int;
pub extern fn memchr(__s: ?*const anyopaque, __c: c_int, __n: c_ulong) ?*anyopaque;
pub extern fn strcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcat(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn strncat(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strcmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcoll(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strxfrm(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) c_ulong;
pub const struct___locale_data = opaque {};
pub const struct___locale_struct = extern struct {
    __locales: [13]?*struct___locale_data,
    __ctype_b: [*c]const c_ushort,
    __ctype_tolower: [*c]const c_int,
    __ctype_toupper: [*c]const c_int,
    __names: [13][*c]const u8,
};
pub const __locale_t = [*c]struct___locale_struct;
pub const locale_t = __locale_t;
pub extern fn strcoll_l(__s1: [*c]const u8, __s2: [*c]const u8, __l: locale_t) c_int;
pub extern fn strxfrm_l(__dest: [*c]u8, __src: [*c]const u8, __n: usize, __l: locale_t) usize;
pub extern fn strdup(__s: [*c]const u8) [*c]u8;
pub extern fn strndup(__string: [*c]const u8, __n: c_ulong) [*c]u8;
pub extern fn strchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strrchr(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn strcspn(__s: [*c]const u8, __reject: [*c]const u8) c_ulong;
pub extern fn strspn(__s: [*c]const u8, __accept: [*c]const u8) c_ulong;
pub extern fn strpbrk(__s: [*c]const u8, __accept: [*c]const u8) [*c]u8;
pub extern fn strstr(__haystack: [*c]const u8, __needle: [*c]const u8) [*c]u8;
pub extern fn strtok(__s: [*c]u8, __delim: [*c]const u8) [*c]u8;
pub extern fn __strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strtok_r(noalias __s: [*c]u8, noalias __delim: [*c]const u8, noalias __save_ptr: [*c][*c]u8) [*c]u8;
pub extern fn strlen(__s: [*c]const u8) c_ulong;
pub extern fn strnlen(__string: [*c]const u8, __maxlen: usize) usize;
pub extern fn strerror(__errnum: c_int) [*c]u8;
pub extern fn strerror_r(__errnum: c_int, __buf: [*c]u8, __buflen: usize) c_int;
pub extern fn strerror_l(__errnum: c_int, __l: locale_t) [*c]u8;
pub extern fn bcmp(__s1: ?*const anyopaque, __s2: ?*const anyopaque, __n: c_ulong) c_int;
pub extern fn bcopy(__src: ?*const anyopaque, __dest: ?*anyopaque, __n: usize) void;
pub extern fn bzero(__s: ?*anyopaque, __n: c_ulong) void;
pub extern fn index(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn rindex(__s: [*c]const u8, __c: c_int) [*c]u8;
pub extern fn ffs(__i: c_int) c_int;
pub extern fn ffsl(__l: c_long) c_int;
pub extern fn ffsll(__ll: c_longlong) c_int;
pub extern fn strcasecmp(__s1: [*c]const u8, __s2: [*c]const u8) c_int;
pub extern fn strncasecmp(__s1: [*c]const u8, __s2: [*c]const u8, __n: c_ulong) c_int;
pub extern fn strcasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __loc: locale_t) c_int;
pub extern fn strncasecmp_l(__s1: [*c]const u8, __s2: [*c]const u8, __n: usize, __loc: locale_t) c_int;
pub extern fn explicit_bzero(__s: ?*anyopaque, __n: usize) void;
pub extern fn strsep(noalias __stringp: [*c][*c]u8, noalias __delim: [*c]const u8) [*c]u8;
pub extern fn strsignal(__sig: c_int) [*c]u8;
pub extern fn __stpcpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8) [*c]u8;
pub extern fn stpcpy(__dest: [*c]u8, __src: [*c]const u8) [*c]u8;
pub extern fn __stpncpy(noalias __dest: [*c]u8, noalias __src: [*c]const u8, __n: usize) [*c]u8;
pub extern fn stpncpy(__dest: [*c]u8, __src: [*c]const u8, __n: c_ulong) [*c]u8;
pub const ptrdiff_t = c_long;
pub const max_align_t = extern struct {
    __clang_max_align_nonce1: c_longlong align(8),
    __clang_max_align_nonce2: c_longdouble align(16),
};
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub extern fn __errno_location() [*c]c_int;
pub const struct_lconv = extern struct {
    decimal_point: [*c]u8,
    thousands_sep: [*c]u8,
    grouping: [*c]u8,
    int_curr_symbol: [*c]u8,
    currency_symbol: [*c]u8,
    mon_decimal_point: [*c]u8,
    mon_thousands_sep: [*c]u8,
    mon_grouping: [*c]u8,
    positive_sign: [*c]u8,
    negative_sign: [*c]u8,
    int_frac_digits: u8,
    frac_digits: u8,
    p_cs_precedes: u8,
    p_sep_by_space: u8,
    n_cs_precedes: u8,
    n_sep_by_space: u8,
    p_sign_posn: u8,
    n_sign_posn: u8,
    int_p_cs_precedes: u8,
    int_p_sep_by_space: u8,
    int_n_cs_precedes: u8,
    int_n_sep_by_space: u8,
    int_p_sign_posn: u8,
    int_n_sign_posn: u8,
};
pub extern fn setlocale(__category: c_int, __locale: [*c]const u8) [*c]u8;
pub extern fn localeconv() [*c]struct_lconv;
pub extern fn newlocale(__category_mask: c_int, __locale: [*c]const u8, __base: locale_t) locale_t;
pub extern fn duplocale(__dataset: locale_t) locale_t;
pub extern fn freelocale(__dataset: locale_t) void;
pub extern fn uselocale(__dataset: locale_t) locale_t;
pub const pg_funcptr_t = ?*const fn () callconv(.C) void;
pub const Pointer = [*c]u8;
pub const int8 = i8;
pub const int16 = c_short;
pub const int32 = c_int;
pub const uint8 = u8;
pub const uint16 = c_ushort;
pub const uint32 = c_uint;
pub const bits8 = uint8;
pub const bits16 = uint16;
pub const bits32 = uint32;
pub const int64 = c_long;
pub const uint64 = c_ulong;
pub const int128 = i128;
pub const uint128 = u128;
pub const Size = usize;
pub const Index = c_uint;
pub const Offset = c_int;
pub const float4 = f32;
pub const float8 = f64;
pub const regproc = Oid;
pub const RegProcedure = regproc;
pub const TransactionId = uint32;
pub const LocalTransactionId = uint32;
pub const SubTransactionId = uint32;
pub const MultiXactId = TransactionId;
pub const MultiXactOffset = uint32;
pub const CommandId = uint32;
pub const struct_varlena = extern struct {
    vl_len_: [4]u8 align(1),
    pub fn vl_dat(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(u8), @ptrCast(Intermediate, self) + 4));
    }
};
pub const bytea = struct_varlena;
pub const text = struct_varlena;
pub const BpChar = struct_varlena;
pub const VarChar = struct_varlena;
pub const int2vector = extern struct {
    vl_len_: int32 align(4),
    ndim: c_int,
    dataoffset: int32,
    elemtype: Oid,
    dim1: c_int,
    lbound1: c_int,
    pub fn values(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), int16) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), int16);
        return @ptrCast(ReturnType, @alignCast(@alignOf(int16), @ptrCast(Intermediate, self) + 24));
    }
};
pub const oidvector = extern struct {
    vl_len_: int32 align(4),
    ndim: c_int,
    dataoffset: int32,
    elemtype: Oid,
    dim1: c_int,
    lbound1: c_int,
    pub fn values(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), Oid) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), Oid);
        return @ptrCast(ReturnType, @alignCast(@alignOf(Oid), @ptrCast(Intermediate, self) + 24));
    }
};
pub const struct_nameData = extern struct {
    data: [64]u8,
};
pub const NameData = struct_nameData;
pub const Name = [*c]NameData;
pub extern fn ExceptionalCondition(conditionName: [*c]const u8, errorType: [*c]const u8, fileName: [*c]const u8, lineNumber: c_int) noreturn;
pub const union_PGAlignedBlock = extern union {
    data: [8192]u8,
    force_align_d: f64,
    force_align_i64: int64,
};
pub const PGAlignedBlock = union_PGAlignedBlock;
pub const union_PGAlignedXLogBlock = extern union {
    data: [8192]u8,
    force_align_d: f64,
    force_align_i64: int64,
};
pub const PGAlignedXLogBlock = union_PGAlignedXLogBlock;
pub const _ISupper: c_int = 256;
pub const _ISlower: c_int = 512;
pub const _ISalpha: c_int = 1024;
pub const _ISdigit: c_int = 2048;
pub const _ISxdigit: c_int = 4096;
pub const _ISspace: c_int = 8192;
pub const _ISprint: c_int = 16384;
pub const _ISgraph: c_int = 32768;
pub const _ISblank: c_int = 1;
pub const _IScntrl: c_int = 2;
pub const _ISpunct: c_int = 4;
pub const _ISalnum: c_int = 8;
const enum_unnamed_3 = c_uint;
pub extern fn __ctype_b_loc() [*c][*c]const c_ushort;
pub extern fn __ctype_tolower_loc() [*c][*c]const __int32_t;
pub extern fn __ctype_toupper_loc() [*c][*c]const __int32_t;
pub extern fn isalnum(c_int) c_int;
pub extern fn isalpha(c_int) c_int;
pub extern fn iscntrl(c_int) c_int;
pub extern fn isdigit(c_int) c_int;
pub extern fn islower(c_int) c_int;
pub extern fn isgraph(c_int) c_int;
pub extern fn isprint(c_int) c_int;
pub extern fn ispunct(c_int) c_int;
pub extern fn isspace(c_int) c_int;
pub extern fn isupper(c_int) c_int;
pub extern fn isxdigit(c_int) c_int;
pub extern fn tolower(__c: c_int) c_int;
pub extern fn toupper(__c: c_int) c_int;
pub extern fn isblank(c_int) c_int;
pub extern fn isascii(__c: c_int) c_int;
pub extern fn toascii(__c: c_int) c_int;
pub extern fn _toupper(c_int) c_int;
pub extern fn _tolower(c_int) c_int;
pub extern fn isalnum_l(c_int, locale_t) c_int;
pub extern fn isalpha_l(c_int, locale_t) c_int;
pub extern fn iscntrl_l(c_int, locale_t) c_int;
pub extern fn isdigit_l(c_int, locale_t) c_int;
pub extern fn islower_l(c_int, locale_t) c_int;
pub extern fn isgraph_l(c_int, locale_t) c_int;
pub extern fn isprint_l(c_int, locale_t) c_int;
pub extern fn ispunct_l(c_int, locale_t) c_int;
pub extern fn isspace_l(c_int, locale_t) c_int;
pub extern fn isupper_l(c_int, locale_t) c_int;
pub extern fn isxdigit_l(c_int, locale_t) c_int;
pub extern fn isblank_l(c_int, locale_t) c_int;
pub extern fn __tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn tolower_l(__c: c_int, __l: locale_t) c_int;
pub extern fn __toupper_l(__c: c_int, __l: locale_t) c_int;
pub extern fn toupper_l(__c: c_int, __l: locale_t) c_int;
pub const pgsocket = c_int;
pub extern fn pg_set_noblock(sock: pgsocket) bool;
pub extern fn pg_set_block(sock: pgsocket) bool;
pub extern fn has_drive_prefix(filename: [*c]const u8) bool;
pub extern fn first_dir_separator(filename: [*c]const u8) [*c]u8;
pub extern fn last_dir_separator(filename: [*c]const u8) [*c]u8;
pub extern fn first_path_var_separator(pathlist: [*c]const u8) [*c]u8;
pub extern fn join_path_components(ret_path: [*c]u8, head: [*c]const u8, tail: [*c]const u8) void;
pub extern fn canonicalize_path(path: [*c]u8) void;
pub extern fn make_native_path(path: [*c]u8) void;
pub extern fn cleanup_path(path: [*c]u8) void;
pub extern fn path_contains_parent_reference(path: [*c]const u8) bool;
pub extern fn path_is_relative_and_below_cwd(path: [*c]const u8) bool;
pub extern fn path_is_prefix_of_path(path1: [*c]const u8, path2: [*c]const u8) bool;
pub extern fn make_absolute_path(path: [*c]const u8) [*c]u8;
pub extern fn get_progname(argv0: [*c]const u8) [*c]const u8;
pub extern fn get_share_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_etc_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_include_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_pkginclude_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_includeserver_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_lib_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_pkglib_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_locale_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_doc_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_html_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_man_path(my_exec_path: [*c]const u8, ret_path: [*c]u8) void;
pub extern fn get_home_path(ret_path: [*c]u8) bool;
pub extern fn get_parent_directory(path: [*c]u8) void;
pub extern fn pgfnames(path: [*c]const u8) [*c][*c]u8;
pub extern fn pgfnames_cleanup(filenames: [*c][*c]u8) void;
pub extern fn set_pglocale_pgservice(argv0: [*c]const u8, app: [*c]const u8) void;
pub extern fn validate_exec(path: [*c]const u8) c_int;
pub extern fn find_my_exec(argv0: [*c]const u8, retpath: [*c]u8) c_int;
pub extern fn find_other_exec(argv0: [*c]const u8, target: [*c]const u8, versionstr: [*c]const u8, retpath: [*c]u8) c_int;
pub extern fn pipe_read_line(cmd: [*c]u8, line: [*c]u8, maxsize: c_int) [*c]u8;
pub extern fn pg_usleep(microsec: c_long) void;
pub extern fn pg_strcasecmp(s1: [*c]const u8, s2: [*c]const u8) c_int;
pub extern fn pg_strncasecmp(s1: [*c]const u8, s2: [*c]const u8, n: usize) c_int;
pub extern fn pg_toupper(ch: u8) u8;
pub extern fn pg_tolower(ch: u8) u8;
pub extern fn pg_ascii_toupper(ch: u8) u8;
pub extern fn pg_ascii_tolower(ch: u8) u8;
pub extern fn pg_vsnprintf(str: [*c]u8, count: usize, fmt: [*c]const u8, args: [*c]struct___va_list_tag) c_int;
pub extern fn pg_snprintf(str: [*c]u8, count: usize, fmt: [*c]const u8, ...) c_int;
pub extern fn pg_vsprintf(str: [*c]u8, fmt: [*c]const u8, args: [*c]struct___va_list_tag) c_int;
pub extern fn pg_sprintf(str: [*c]u8, fmt: [*c]const u8, ...) c_int;
pub extern fn pg_vfprintf(stream: [*c]FILE, fmt: [*c]const u8, args: [*c]struct___va_list_tag) c_int;
pub extern fn pg_fprintf(stream: [*c]FILE, fmt: [*c]const u8, ...) c_int;
pub extern fn pg_vprintf(fmt: [*c]const u8, args: [*c]struct___va_list_tag) c_int;
pub extern fn pg_printf(fmt: [*c]const u8, ...) c_int;
pub extern fn pg_strfromd(str: [*c]u8, count: usize, precision: c_int, value: f64) c_int;
pub extern fn pg_strerror(errnum: c_int) [*c]u8;
pub extern fn pg_strerror_r(errnum: c_int, buf: [*c]u8, buflen: usize) [*c]u8;
pub extern fn pg_strsignal(signum: c_int) [*c]const u8;
pub extern fn pclose_check(stream: [*c]FILE) c_int;
pub extern fn rmtree(path: [*c]const u8, rmtopdir: bool) bool;
pub extern fn fls(mask: c_int) c_int;
pub extern fn getpeereid(sock: c_int, uid: [*c]uid_t, gid: [*c]gid_t) c_int;
pub const float_t = f32;
pub const double_t = f64;
pub extern fn __fpclassify(__value: f64) c_int;
pub extern fn __signbit(__value: f64) c_int;
pub extern fn __isinf(__value: f64) c_int;
pub extern fn __finite(__value: f64) c_int;
pub extern fn __isnan(__value: f64) c_int;
pub extern fn __iseqsig(__x: f64, __y: f64) c_int;
pub extern fn __issignaling(__value: f64) c_int;
pub extern fn acos(__x: f64) f64;
pub extern fn __acos(__x: f64) f64;
pub extern fn asin(__x: f64) f64;
pub extern fn __asin(__x: f64) f64;
pub extern fn atan(__x: f64) f64;
pub extern fn __atan(__x: f64) f64;
pub extern fn atan2(__y: f64, __x: f64) f64;
pub extern fn __atan2(__y: f64, __x: f64) f64;
pub extern fn cos(__x: f64) f64;
pub extern fn __cos(__x: f64) f64;
pub extern fn sin(__x: f64) f64;
pub extern fn __sin(__x: f64) f64;
pub extern fn tan(__x: f64) f64;
pub extern fn __tan(__x: f64) f64;
pub extern fn cosh(__x: f64) f64;
pub extern fn __cosh(__x: f64) f64;
pub extern fn sinh(__x: f64) f64;
pub extern fn __sinh(__x: f64) f64;
pub extern fn tanh(__x: f64) f64;
pub extern fn __tanh(__x: f64) f64;
pub extern fn acosh(__x: f64) f64;
pub extern fn __acosh(__x: f64) f64;
pub extern fn asinh(__x: f64) f64;
pub extern fn __asinh(__x: f64) f64;
pub extern fn atanh(__x: f64) f64;
pub extern fn __atanh(__x: f64) f64;
pub extern fn exp(__x: f64) f64;
pub extern fn __exp(__x: f64) f64;
pub extern fn frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn __frexp(__x: f64, __exponent: [*c]c_int) f64;
pub extern fn ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn __ldexp(__x: f64, __exponent: c_int) f64;
pub extern fn log(__x: f64) f64;
pub extern fn __log(__x: f64) f64;
pub extern fn log10(__x: f64) f64;
pub extern fn __log10(__x: f64) f64;
pub extern fn modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn __modf(__x: f64, __iptr: [*c]f64) f64;
pub extern fn expm1(__x: f64) f64;
pub extern fn __expm1(__x: f64) f64;
pub extern fn log1p(__x: f64) f64;
pub extern fn __log1p(__x: f64) f64;
pub extern fn logb(__x: f64) f64;
pub extern fn __logb(__x: f64) f64;
pub extern fn exp2(__x: f64) f64;
pub extern fn __exp2(__x: f64) f64;
pub extern fn log2(__x: f64) f64;
pub extern fn __log2(__x: f64) f64;
pub extern fn pow(__x: f64, __y: f64) f64;
pub extern fn __pow(__x: f64, __y: f64) f64;
pub extern fn sqrt(__x: f64) f64;
pub extern fn __sqrt(__x: f64) f64;
pub extern fn hypot(__x: f64, __y: f64) f64;
pub extern fn __hypot(__x: f64, __y: f64) f64;
pub extern fn cbrt(__x: f64) f64;
pub extern fn __cbrt(__x: f64) f64;
pub extern fn ceil(__x: f64) f64;
pub extern fn __ceil(__x: f64) f64;
pub extern fn fabs(__x: f64) f64;
pub extern fn __fabs(__x: f64) f64;
pub extern fn floor(__x: f64) f64;
pub extern fn __floor(__x: f64) f64;
pub extern fn fmod(__x: f64, __y: f64) f64;
pub extern fn __fmod(__x: f64, __y: f64) f64;
pub extern fn isinf(__value: f64) c_int;
pub extern fn finite(__value: f64) c_int;
pub extern fn drem(__x: f64, __y: f64) f64;
pub extern fn __drem(__x: f64, __y: f64) f64;
pub extern fn significand(__x: f64) f64;
pub extern fn __significand(__x: f64) f64;
pub extern fn copysign(__x: f64, __y: f64) f64;
pub extern fn __copysign(__x: f64, __y: f64) f64;
pub extern fn nan(__tagb: [*c]const u8) f64;
pub extern fn __nan(__tagb: [*c]const u8) f64;
pub extern fn isnan(__value: f64) c_int;
pub extern fn j0(f64) f64;
pub extern fn __j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn __j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn __jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn __y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn __y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn __yn(c_int, f64) f64;
pub extern fn erf(f64) f64;
pub extern fn __erf(f64) f64;
pub extern fn erfc(f64) f64;
pub extern fn __erfc(f64) f64;
pub extern fn lgamma(f64) f64;
pub extern fn __lgamma(f64) f64;
pub extern fn tgamma(f64) f64;
pub extern fn __tgamma(f64) f64;
pub extern fn gamma(f64) f64;
pub extern fn __gamma(f64) f64;
pub extern fn lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn __lgamma_r(f64, __signgamp: [*c]c_int) f64;
pub extern fn rint(__x: f64) f64;
pub extern fn __rint(__x: f64) f64;
pub extern fn nextafter(__x: f64, __y: f64) f64;
pub extern fn __nextafter(__x: f64, __y: f64) f64;
pub extern fn nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn __nexttoward(__x: f64, __y: c_longdouble) f64;
pub extern fn remainder(__x: f64, __y: f64) f64;
pub extern fn __remainder(__x: f64, __y: f64) f64;
pub extern fn scalbn(__x: f64, __n: c_int) f64;
pub extern fn __scalbn(__x: f64, __n: c_int) f64;
pub extern fn ilogb(__x: f64) c_int;
pub extern fn __ilogb(__x: f64) c_int;
pub extern fn scalbln(__x: f64, __n: c_long) f64;
pub extern fn __scalbln(__x: f64, __n: c_long) f64;
pub extern fn nearbyint(__x: f64) f64;
pub extern fn __nearbyint(__x: f64) f64;
pub extern fn round(__x: f64) f64;
pub extern fn __round(__x: f64) f64;
pub extern fn trunc(__x: f64) f64;
pub extern fn __trunc(__x: f64) f64;
pub extern fn remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn __remquo(__x: f64, __y: f64, __quo: [*c]c_int) f64;
pub extern fn lrint(__x: f64) c_long;
pub extern fn __lrint(__x: f64) c_long;
pub extern fn llrint(__x: f64) c_longlong;
pub extern fn __llrint(__x: f64) c_longlong;
pub extern fn lround(__x: f64) c_long;
pub extern fn __lround(__x: f64) c_long;
pub extern fn llround(__x: f64) c_longlong;
pub extern fn __llround(__x: f64) c_longlong;
pub extern fn fdim(__x: f64, __y: f64) f64;
pub extern fn __fdim(__x: f64, __y: f64) f64;
pub extern fn fmax(__x: f64, __y: f64) f64;
pub extern fn __fmax(__x: f64, __y: f64) f64;
pub extern fn fmin(__x: f64, __y: f64) f64;
pub extern fn __fmin(__x: f64, __y: f64) f64;
pub extern fn fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn __fma(__x: f64, __y: f64, __z: f64) f64;
pub extern fn scalb(__x: f64, __n: f64) f64;
pub extern fn __scalb(__x: f64, __n: f64) f64;
pub extern fn __fpclassifyf(__value: f32) c_int;
pub extern fn __signbitf(__value: f32) c_int;
pub extern fn __isinff(__value: f32) c_int;
pub extern fn __finitef(__value: f32) c_int;
pub extern fn __isnanf(__value: f32) c_int;
pub extern fn __iseqsigf(__x: f32, __y: f32) c_int;
pub extern fn __issignalingf(__value: f32) c_int;
pub extern fn acosf(__x: f32) f32;
pub extern fn __acosf(__x: f32) f32;
pub extern fn asinf(__x: f32) f32;
pub extern fn __asinf(__x: f32) f32;
pub extern fn atanf(__x: f32) f32;
pub extern fn __atanf(__x: f32) f32;
pub extern fn atan2f(__y: f32, __x: f32) f32;
pub extern fn __atan2f(__y: f32, __x: f32) f32;
pub extern fn cosf(__x: f32) f32;
pub extern fn __cosf(__x: f32) f32;
pub extern fn sinf(__x: f32) f32;
pub extern fn __sinf(__x: f32) f32;
pub extern fn tanf(__x: f32) f32;
pub extern fn __tanf(__x: f32) f32;
pub extern fn coshf(__x: f32) f32;
pub extern fn __coshf(__x: f32) f32;
pub extern fn sinhf(__x: f32) f32;
pub extern fn __sinhf(__x: f32) f32;
pub extern fn tanhf(__x: f32) f32;
pub extern fn __tanhf(__x: f32) f32;
pub extern fn acoshf(__x: f32) f32;
pub extern fn __acoshf(__x: f32) f32;
pub extern fn asinhf(__x: f32) f32;
pub extern fn __asinhf(__x: f32) f32;
pub extern fn atanhf(__x: f32) f32;
pub extern fn __atanhf(__x: f32) f32;
pub extern fn expf(__x: f32) f32;
pub extern fn __expf(__x: f32) f32;
pub extern fn frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn __frexpf(__x: f32, __exponent: [*c]c_int) f32;
pub extern fn ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn __ldexpf(__x: f32, __exponent: c_int) f32;
pub extern fn logf(__x: f32) f32;
pub extern fn __logf(__x: f32) f32;
pub extern fn log10f(__x: f32) f32;
pub extern fn __log10f(__x: f32) f32;
pub extern fn modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn __modff(__x: f32, __iptr: [*c]f32) f32;
pub extern fn expm1f(__x: f32) f32;
pub extern fn __expm1f(__x: f32) f32;
pub extern fn log1pf(__x: f32) f32;
pub extern fn __log1pf(__x: f32) f32;
pub extern fn logbf(__x: f32) f32;
pub extern fn __logbf(__x: f32) f32;
pub extern fn exp2f(__x: f32) f32;
pub extern fn __exp2f(__x: f32) f32;
pub extern fn log2f(__x: f32) f32;
pub extern fn __log2f(__x: f32) f32;
pub extern fn powf(__x: f32, __y: f32) f32;
pub extern fn __powf(__x: f32, __y: f32) f32;
pub extern fn sqrtf(__x: f32) f32;
pub extern fn __sqrtf(__x: f32) f32;
pub extern fn hypotf(__x: f32, __y: f32) f32;
pub extern fn __hypotf(__x: f32, __y: f32) f32;
pub extern fn cbrtf(__x: f32) f32;
pub extern fn __cbrtf(__x: f32) f32;
pub extern fn ceilf(__x: f32) f32;
pub extern fn __ceilf(__x: f32) f32;
pub extern fn fabsf(__x: f32) f32;
pub extern fn __fabsf(__x: f32) f32;
pub extern fn floorf(__x: f32) f32;
pub extern fn __floorf(__x: f32) f32;
pub extern fn fmodf(__x: f32, __y: f32) f32;
pub extern fn __fmodf(__x: f32, __y: f32) f32;
pub extern fn isinff(__value: f32) c_int;
pub extern fn finitef(__value: f32) c_int;
pub extern fn dremf(__x: f32, __y: f32) f32;
pub extern fn __dremf(__x: f32, __y: f32) f32;
pub extern fn significandf(__x: f32) f32;
pub extern fn __significandf(__x: f32) f32;
pub extern fn copysignf(__x: f32, __y: f32) f32;
pub extern fn __copysignf(__x: f32, __y: f32) f32;
pub extern fn nanf(__tagb: [*c]const u8) f32;
pub extern fn __nanf(__tagb: [*c]const u8) f32;
pub extern fn isnanf(__value: f32) c_int;
pub extern fn j0f(f32) f32;
pub extern fn __j0f(f32) f32;
pub extern fn j1f(f32) f32;
pub extern fn __j1f(f32) f32;
pub extern fn jnf(c_int, f32) f32;
pub extern fn __jnf(c_int, f32) f32;
pub extern fn y0f(f32) f32;
pub extern fn __y0f(f32) f32;
pub extern fn y1f(f32) f32;
pub extern fn __y1f(f32) f32;
pub extern fn ynf(c_int, f32) f32;
pub extern fn __ynf(c_int, f32) f32;
pub extern fn erff(f32) f32;
pub extern fn __erff(f32) f32;
pub extern fn erfcf(f32) f32;
pub extern fn __erfcf(f32) f32;
pub extern fn lgammaf(f32) f32;
pub extern fn __lgammaf(f32) f32;
pub extern fn tgammaf(f32) f32;
pub extern fn __tgammaf(f32) f32;
pub extern fn gammaf(f32) f32;
pub extern fn __gammaf(f32) f32;
pub extern fn lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn __lgammaf_r(f32, __signgamp: [*c]c_int) f32;
pub extern fn rintf(__x: f32) f32;
pub extern fn __rintf(__x: f32) f32;
pub extern fn nextafterf(__x: f32, __y: f32) f32;
pub extern fn __nextafterf(__x: f32, __y: f32) f32;
pub extern fn nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn __nexttowardf(__x: f32, __y: c_longdouble) f32;
pub extern fn remainderf(__x: f32, __y: f32) f32;
pub extern fn __remainderf(__x: f32, __y: f32) f32;
pub extern fn scalbnf(__x: f32, __n: c_int) f32;
pub extern fn __scalbnf(__x: f32, __n: c_int) f32;
pub extern fn ilogbf(__x: f32) c_int;
pub extern fn __ilogbf(__x: f32) c_int;
pub extern fn scalblnf(__x: f32, __n: c_long) f32;
pub extern fn __scalblnf(__x: f32, __n: c_long) f32;
pub extern fn nearbyintf(__x: f32) f32;
pub extern fn __nearbyintf(__x: f32) f32;
pub extern fn roundf(__x: f32) f32;
pub extern fn __roundf(__x: f32) f32;
pub extern fn truncf(__x: f32) f32;
pub extern fn __truncf(__x: f32) f32;
pub extern fn remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn __remquof(__x: f32, __y: f32, __quo: [*c]c_int) f32;
pub extern fn lrintf(__x: f32) c_long;
pub extern fn __lrintf(__x: f32) c_long;
pub extern fn llrintf(__x: f32) c_longlong;
pub extern fn __llrintf(__x: f32) c_longlong;
pub extern fn lroundf(__x: f32) c_long;
pub extern fn __lroundf(__x: f32) c_long;
pub extern fn llroundf(__x: f32) c_longlong;
pub extern fn __llroundf(__x: f32) c_longlong;
pub extern fn fdimf(__x: f32, __y: f32) f32;
pub extern fn __fdimf(__x: f32, __y: f32) f32;
pub extern fn fmaxf(__x: f32, __y: f32) f32;
pub extern fn __fmaxf(__x: f32, __y: f32) f32;
pub extern fn fminf(__x: f32, __y: f32) f32;
pub extern fn __fminf(__x: f32, __y: f32) f32;
pub extern fn fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn __fmaf(__x: f32, __y: f32, __z: f32) f32;
pub extern fn scalbf(__x: f32, __n: f32) f32;
pub extern fn __scalbf(__x: f32, __n: f32) f32;
pub extern fn __fpclassifyl(__value: c_longdouble) c_int;
pub extern fn __signbitl(__value: c_longdouble) c_int;
pub extern fn __isinfl(__value: c_longdouble) c_int;
pub extern fn __finitel(__value: c_longdouble) c_int;
pub extern fn __isnanl(__value: c_longdouble) c_int;
pub extern fn __iseqsigl(__x: c_longdouble, __y: c_longdouble) c_int;
pub extern fn __issignalingl(__value: c_longdouble) c_int;
pub extern fn acosl(__x: c_longdouble) c_longdouble;
pub extern fn __acosl(__x: c_longdouble) c_longdouble;
pub extern fn asinl(__x: c_longdouble) c_longdouble;
pub extern fn __asinl(__x: c_longdouble) c_longdouble;
pub extern fn atanl(__x: c_longdouble) c_longdouble;
pub extern fn __atanl(__x: c_longdouble) c_longdouble;
pub extern fn atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn __atan2l(__y: c_longdouble, __x: c_longdouble) c_longdouble;
pub extern fn cosl(__x: c_longdouble) c_longdouble;
pub extern fn __cosl(__x: c_longdouble) c_longdouble;
pub extern fn sinl(__x: c_longdouble) c_longdouble;
pub extern fn __sinl(__x: c_longdouble) c_longdouble;
pub extern fn tanl(__x: c_longdouble) c_longdouble;
pub extern fn __tanl(__x: c_longdouble) c_longdouble;
pub extern fn coshl(__x: c_longdouble) c_longdouble;
pub extern fn __coshl(__x: c_longdouble) c_longdouble;
pub extern fn sinhl(__x: c_longdouble) c_longdouble;
pub extern fn __sinhl(__x: c_longdouble) c_longdouble;
pub extern fn tanhl(__x: c_longdouble) c_longdouble;
pub extern fn __tanhl(__x: c_longdouble) c_longdouble;
pub extern fn acoshl(__x: c_longdouble) c_longdouble;
pub extern fn __acoshl(__x: c_longdouble) c_longdouble;
pub extern fn asinhl(__x: c_longdouble) c_longdouble;
pub extern fn __asinhl(__x: c_longdouble) c_longdouble;
pub extern fn atanhl(__x: c_longdouble) c_longdouble;
pub extern fn __atanhl(__x: c_longdouble) c_longdouble;
pub extern fn expl(__x: c_longdouble) c_longdouble;
pub extern fn __expl(__x: c_longdouble) c_longdouble;
pub extern fn frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn __frexpl(__x: c_longdouble, __exponent: [*c]c_int) c_longdouble;
pub extern fn ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn __ldexpl(__x: c_longdouble, __exponent: c_int) c_longdouble;
pub extern fn logl(__x: c_longdouble) c_longdouble;
pub extern fn __logl(__x: c_longdouble) c_longdouble;
pub extern fn log10l(__x: c_longdouble) c_longdouble;
pub extern fn __log10l(__x: c_longdouble) c_longdouble;
pub extern fn modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn __modfl(__x: c_longdouble, __iptr: [*c]c_longdouble) c_longdouble;
pub extern fn expm1l(__x: c_longdouble) c_longdouble;
pub extern fn __expm1l(__x: c_longdouble) c_longdouble;
pub extern fn log1pl(__x: c_longdouble) c_longdouble;
pub extern fn __log1pl(__x: c_longdouble) c_longdouble;
pub extern fn logbl(__x: c_longdouble) c_longdouble;
pub extern fn __logbl(__x: c_longdouble) c_longdouble;
pub extern fn exp2l(__x: c_longdouble) c_longdouble;
pub extern fn __exp2l(__x: c_longdouble) c_longdouble;
pub extern fn log2l(__x: c_longdouble) c_longdouble;
pub extern fn __log2l(__x: c_longdouble) c_longdouble;
pub extern fn powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __powl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn __sqrtl(__x: c_longdouble) c_longdouble;
pub extern fn hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __hypotl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn __cbrtl(__x: c_longdouble) c_longdouble;
pub extern fn ceill(__x: c_longdouble) c_longdouble;
pub extern fn __ceill(__x: c_longdouble) c_longdouble;
pub extern fn fabsl(__x: c_longdouble) c_longdouble;
pub extern fn __fabsl(__x: c_longdouble) c_longdouble;
pub extern fn floorl(__x: c_longdouble) c_longdouble;
pub extern fn __floorl(__x: c_longdouble) c_longdouble;
pub extern fn fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmodl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn isinfl(__value: c_longdouble) c_int;
pub extern fn finitel(__value: c_longdouble) c_int;
pub extern fn dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __dreml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn significandl(__x: c_longdouble) c_longdouble;
pub extern fn __significandl(__x: c_longdouble) c_longdouble;
pub extern fn copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __copysignl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn __nanl(__tagb: [*c]const u8) c_longdouble;
pub extern fn isnanl(__value: c_longdouble) c_int;
pub extern fn j0l(c_longdouble) c_longdouble;
pub extern fn __j0l(c_longdouble) c_longdouble;
pub extern fn j1l(c_longdouble) c_longdouble;
pub extern fn __j1l(c_longdouble) c_longdouble;
pub extern fn jnl(c_int, c_longdouble) c_longdouble;
pub extern fn __jnl(c_int, c_longdouble) c_longdouble;
pub extern fn y0l(c_longdouble) c_longdouble;
pub extern fn __y0l(c_longdouble) c_longdouble;
pub extern fn y1l(c_longdouble) c_longdouble;
pub extern fn __y1l(c_longdouble) c_longdouble;
pub extern fn ynl(c_int, c_longdouble) c_longdouble;
pub extern fn __ynl(c_int, c_longdouble) c_longdouble;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn __erfl(c_longdouble) c_longdouble;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn __erfcl(c_longdouble) c_longdouble;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern fn __lgammal(c_longdouble) c_longdouble;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn __tgammal(c_longdouble) c_longdouble;
pub extern fn gammal(c_longdouble) c_longdouble;
pub extern fn __gammal(c_longdouble) c_longdouble;
pub extern fn lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn __lgammal_r(c_longdouble, __signgamp: [*c]c_int) c_longdouble;
pub extern fn rintl(__x: c_longdouble) c_longdouble;
pub extern fn __rintl(__x: c_longdouble) c_longdouble;
pub extern fn nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nextafterl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __nexttowardl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __remainderl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn __scalbnl(__x: c_longdouble, __n: c_int) c_longdouble;
pub extern fn ilogbl(__x: c_longdouble) c_int;
pub extern fn __ilogbl(__x: c_longdouble) c_int;
pub extern fn scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn __scalblnl(__x: c_longdouble, __n: c_long) c_longdouble;
pub extern fn nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn __nearbyintl(__x: c_longdouble) c_longdouble;
pub extern fn roundl(__x: c_longdouble) c_longdouble;
pub extern fn __roundl(__x: c_longdouble) c_longdouble;
pub extern fn truncl(__x: c_longdouble) c_longdouble;
pub extern fn __truncl(__x: c_longdouble) c_longdouble;
pub extern fn remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn __remquol(__x: c_longdouble, __y: c_longdouble, __quo: [*c]c_int) c_longdouble;
pub extern fn lrintl(__x: c_longdouble) c_long;
pub extern fn __lrintl(__x: c_longdouble) c_long;
pub extern fn llrintl(__x: c_longdouble) c_longlong;
pub extern fn __llrintl(__x: c_longdouble) c_longlong;
pub extern fn lroundl(__x: c_longdouble) c_long;
pub extern fn __lroundl(__x: c_longdouble) c_long;
pub extern fn llroundl(__x: c_longdouble) c_longlong;
pub extern fn __llroundl(__x: c_longdouble) c_longlong;
pub extern fn fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fdiml(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fmaxl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn __fminl(__x: c_longdouble, __y: c_longdouble) c_longdouble;
pub extern fn fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn __fmal(__x: c_longdouble, __y: c_longdouble, __z: c_longdouble) c_longdouble;
pub extern fn scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern fn __scalbl(__x: c_longdouble, __n: c_longdouble) c_longdouble;
pub extern var signgam: c_int;
pub const FP_NAN: c_int = 0;
pub const FP_INFINITE: c_int = 1;
pub const FP_ZERO: c_int = 2;
pub const FP_SUBNORMAL: c_int = 3;
pub const FP_NORMAL: c_int = 4;
const enum_unnamed_4 = c_uint;
pub extern fn strlcat(dst: [*c]u8, src: [*c]const u8, siz: c_ulong) c_ulong;
pub extern fn strlcpy(dst: [*c]u8, src: [*c]const u8, siz: c_ulong) c_ulong;
pub extern fn pg_get_user_name(user_id: uid_t, buffer: [*c]u8, buflen: usize) bool;
pub extern fn pg_get_user_home_dir(user_id: uid_t, buffer: [*c]u8, buflen: usize) bool;
pub extern fn pg_qsort(base: ?*anyopaque, nel: usize, elsize: usize, cmp: ?*const fn (?*const anyopaque, ?*const anyopaque) callconv(.C) c_int) void;
pub extern fn pg_qsort_strcmp(a: ?*const anyopaque, b: ?*const anyopaque) c_int;
pub const qsort_arg_comparator = ?*const fn (?*const anyopaque, ?*const anyopaque, ?*anyopaque) callconv(.C) c_int;
pub extern fn qsort_arg(base: ?*anyopaque, nel: usize, elsize: usize, cmp: qsort_arg_comparator, arg: ?*anyopaque) void;
pub extern fn qsort_interruptible(base: ?*anyopaque, nel: usize, elsize: usize, cmp: qsort_arg_comparator, arg: ?*anyopaque) void;
pub extern fn bsearch_arg(key: ?*const anyopaque, base: ?*const anyopaque, nmemb: usize, size: usize, compar: ?*const fn (?*const anyopaque, ?*const anyopaque, ?*anyopaque) callconv(.C) c_int, arg: ?*anyopaque) ?*anyopaque;
pub extern fn pg_get_encoding_from_locale(ctype: [*c]const u8, write_message: bool) c_int;
pub extern fn pg_inet_net_ntop(af: c_int, src: ?*const anyopaque, bits: c_int, dst: [*c]u8, size: usize) [*c]u8;
pub extern fn pg_strong_random_init() void;
pub extern fn pg_strong_random(buf: ?*anyopaque, len: usize) bool;
pub extern fn pg_check_dir(dir: [*c]const u8) c_int;
pub extern fn pg_mkdir_p(path: [*c]u8, omode: c_int) c_int;
pub const pqsigfunc = ?*const fn (c_int) callconv(.C) void;
pub extern fn pqsignal(signo: c_int, func: pqsigfunc) pqsigfunc;
pub extern fn escape_single_quotes_ascii(src: [*c]const u8) [*c]u8;
pub extern fn wait_result_to_str(exit_status: c_int) [*c]u8;
pub extern fn wait_result_is_signal(exit_status: c_int, signum: c_int) bool;
pub extern fn wait_result_is_any_signal(exit_status: c_int, include_command_not_found: bool) bool;
pub const __jmp_buf = [8]c_long;
pub const struct___jmp_buf_tag = extern struct {
    __jmpbuf: __jmp_buf,
    __mask_was_saved: c_int,
    __saved_mask: __sigset_t,
};
pub const jmp_buf = [1]struct___jmp_buf_tag;
pub extern fn setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn __sigsetjmp(__env: [*c]struct___jmp_buf_tag, __savemask: c_int) c_int;
pub extern fn _setjmp(__env: [*c]struct___jmp_buf_tag) c_int;
pub extern fn longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub extern fn _longjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub const sigjmp_buf = [1]struct___jmp_buf_tag;
pub extern fn siglongjmp(__env: [*c]struct___jmp_buf_tag, __val: c_int) noreturn;
pub extern fn message_level_is_interesting(elevel: c_int) bool;
pub extern fn errstart(elevel: c_int, domain: [*c]const u8) bool;
pub extern fn errstart_cold(elevel: c_int, domain: [*c]const u8) bool;
pub extern fn errfinish(filename: [*c]const u8, lineno: c_int, funcname: [*c]const u8) void;
pub extern fn errcode(sqlerrcode: c_int) c_int;
pub extern fn errcode_for_file_access() c_int;
pub extern fn errcode_for_socket_access() c_int;
pub extern fn errmsg(fmt: [*c]const u8, ...) c_int;
pub extern fn errmsg_internal(fmt: [*c]const u8, ...) c_int;
pub extern fn errmsg_plural(fmt_singular: [*c]const u8, fmt_plural: [*c]const u8, n: c_ulong, ...) c_int;
pub extern fn errdetail(fmt: [*c]const u8, ...) c_int;
pub extern fn errdetail_internal(fmt: [*c]const u8, ...) c_int;
pub extern fn errdetail_log(fmt: [*c]const u8, ...) c_int;
pub extern fn errdetail_log_plural(fmt_singular: [*c]const u8, fmt_plural: [*c]const u8, n: c_ulong, ...) c_int;
pub extern fn errdetail_plural(fmt_singular: [*c]const u8, fmt_plural: [*c]const u8, n: c_ulong, ...) c_int;
pub extern fn errhint(fmt: [*c]const u8, ...) c_int;
pub extern fn errhint_plural(fmt_singular: [*c]const u8, fmt_plural: [*c]const u8, n: c_ulong, ...) c_int;
pub extern fn set_errcontext_domain(domain: [*c]const u8) c_int;
pub extern fn errcontext_msg(fmt: [*c]const u8, ...) c_int;
pub extern fn errhidestmt(hide_stmt: bool) c_int;
pub extern fn errhidecontext(hide_ctx: bool) c_int;
pub extern fn errbacktrace() c_int;
pub extern fn errposition(cursorpos: c_int) c_int;
pub extern fn internalerrposition(cursorpos: c_int) c_int;
pub extern fn internalerrquery(query: [*c]const u8) c_int;
pub extern fn err_generic_string(field: c_int, str: [*c]const u8) c_int;
pub extern fn geterrcode() c_int;
pub extern fn geterrposition() c_int;
pub extern fn getinternalerrposition() c_int;
pub extern fn pre_format_elog_string(errnumber: c_int, domain: [*c]const u8) void;
pub extern fn format_elog_string(fmt: [*c]const u8, ...) [*c]u8;
pub const struct_ErrorContextCallback = extern struct {
    previous: [*c]struct_ErrorContextCallback,
    callback: ?*const fn (?*anyopaque) callconv(.C) void,
    arg: ?*anyopaque,
};
pub const ErrorContextCallback = struct_ErrorContextCallback;
pub extern var error_context_stack: [*c]ErrorContextCallback;
pub extern var PG_exception_stack: [*c]sigjmp_buf;
pub const T_Invalid: c_int = 0;
pub const T_IndexInfo: c_int = 1;
pub const T_ExprContext: c_int = 2;
pub const T_ProjectionInfo: c_int = 3;
pub const T_JunkFilter: c_int = 4;
pub const T_OnConflictSetState: c_int = 5;
pub const T_MergeActionState: c_int = 6;
pub const T_ResultRelInfo: c_int = 7;
pub const T_EState: c_int = 8;
pub const T_TupleTableSlot: c_int = 9;
pub const T_Plan: c_int = 10;
pub const T_Result: c_int = 11;
pub const T_ProjectSet: c_int = 12;
pub const T_ModifyTable: c_int = 13;
pub const T_Append: c_int = 14;
pub const T_MergeAppend: c_int = 15;
pub const T_RecursiveUnion: c_int = 16;
pub const T_BitmapAnd: c_int = 17;
pub const T_BitmapOr: c_int = 18;
pub const T_Scan: c_int = 19;
pub const T_SeqScan: c_int = 20;
pub const T_SampleScan: c_int = 21;
pub const T_IndexScan: c_int = 22;
pub const T_IndexOnlyScan: c_int = 23;
pub const T_BitmapIndexScan: c_int = 24;
pub const T_BitmapHeapScan: c_int = 25;
pub const T_TidScan: c_int = 26;
pub const T_TidRangeScan: c_int = 27;
pub const T_SubqueryScan: c_int = 28;
pub const T_FunctionScan: c_int = 29;
pub const T_ValuesScan: c_int = 30;
pub const T_TableFuncScan: c_int = 31;
pub const T_CteScan: c_int = 32;
pub const T_NamedTuplestoreScan: c_int = 33;
pub const T_WorkTableScan: c_int = 34;
pub const T_ForeignScan: c_int = 35;
pub const T_CustomScan: c_int = 36;
pub const T_Join: c_int = 37;
pub const T_NestLoop: c_int = 38;
pub const T_MergeJoin: c_int = 39;
pub const T_HashJoin: c_int = 40;
pub const T_Material: c_int = 41;
pub const T_Memoize: c_int = 42;
pub const T_Sort: c_int = 43;
pub const T_IncrementalSort: c_int = 44;
pub const T_Group: c_int = 45;
pub const T_Agg: c_int = 46;
pub const T_WindowAgg: c_int = 47;
pub const T_Unique: c_int = 48;
pub const T_Gather: c_int = 49;
pub const T_GatherMerge: c_int = 50;
pub const T_Hash: c_int = 51;
pub const T_SetOp: c_int = 52;
pub const T_LockRows: c_int = 53;
pub const T_Limit: c_int = 54;
pub const T_NestLoopParam: c_int = 55;
pub const T_PlanRowMark: c_int = 56;
pub const T_PartitionPruneInfo: c_int = 57;
pub const T_PartitionedRelPruneInfo: c_int = 58;
pub const T_PartitionPruneStepOp: c_int = 59;
pub const T_PartitionPruneStepCombine: c_int = 60;
pub const T_PlanInvalItem: c_int = 61;
pub const T_PlanState: c_int = 62;
pub const T_ResultState: c_int = 63;
pub const T_ProjectSetState: c_int = 64;
pub const T_ModifyTableState: c_int = 65;
pub const T_AppendState: c_int = 66;
pub const T_MergeAppendState: c_int = 67;
pub const T_RecursiveUnionState: c_int = 68;
pub const T_BitmapAndState: c_int = 69;
pub const T_BitmapOrState: c_int = 70;
pub const T_ScanState: c_int = 71;
pub const T_SeqScanState: c_int = 72;
pub const T_SampleScanState: c_int = 73;
pub const T_IndexScanState: c_int = 74;
pub const T_IndexOnlyScanState: c_int = 75;
pub const T_BitmapIndexScanState: c_int = 76;
pub const T_BitmapHeapScanState: c_int = 77;
pub const T_TidScanState: c_int = 78;
pub const T_TidRangeScanState: c_int = 79;
pub const T_SubqueryScanState: c_int = 80;
pub const T_FunctionScanState: c_int = 81;
pub const T_TableFuncScanState: c_int = 82;
pub const T_ValuesScanState: c_int = 83;
pub const T_CteScanState: c_int = 84;
pub const T_NamedTuplestoreScanState: c_int = 85;
pub const T_WorkTableScanState: c_int = 86;
pub const T_ForeignScanState: c_int = 87;
pub const T_CustomScanState: c_int = 88;
pub const T_JoinState: c_int = 89;
pub const T_NestLoopState: c_int = 90;
pub const T_MergeJoinState: c_int = 91;
pub const T_HashJoinState: c_int = 92;
pub const T_MaterialState: c_int = 93;
pub const T_MemoizeState: c_int = 94;
pub const T_SortState: c_int = 95;
pub const T_IncrementalSortState: c_int = 96;
pub const T_GroupState: c_int = 97;
pub const T_AggState: c_int = 98;
pub const T_WindowAggState: c_int = 99;
pub const T_UniqueState: c_int = 100;
pub const T_GatherState: c_int = 101;
pub const T_GatherMergeState: c_int = 102;
pub const T_HashState: c_int = 103;
pub const T_SetOpState: c_int = 104;
pub const T_LockRowsState: c_int = 105;
pub const T_LimitState: c_int = 106;
pub const T_Alias: c_int = 107;
pub const T_RangeVar: c_int = 108;
pub const T_TableFunc: c_int = 109;
pub const T_Var: c_int = 110;
pub const T_Const: c_int = 111;
pub const T_Param: c_int = 112;
pub const T_Aggref: c_int = 113;
pub const T_GroupingFunc: c_int = 114;
pub const T_WindowFunc: c_int = 115;
pub const T_SubscriptingRef: c_int = 116;
pub const T_FuncExpr: c_int = 117;
pub const T_NamedArgExpr: c_int = 118;
pub const T_OpExpr: c_int = 119;
pub const T_DistinctExpr: c_int = 120;
pub const T_NullIfExpr: c_int = 121;
pub const T_ScalarArrayOpExpr: c_int = 122;
pub const T_BoolExpr: c_int = 123;
pub const T_SubLink: c_int = 124;
pub const T_SubPlan: c_int = 125;
pub const T_AlternativeSubPlan: c_int = 126;
pub const T_FieldSelect: c_int = 127;
pub const T_FieldStore: c_int = 128;
pub const T_RelabelType: c_int = 129;
pub const T_CoerceViaIO: c_int = 130;
pub const T_ArrayCoerceExpr: c_int = 131;
pub const T_ConvertRowtypeExpr: c_int = 132;
pub const T_CollateExpr: c_int = 133;
pub const T_CaseExpr: c_int = 134;
pub const T_CaseWhen: c_int = 135;
pub const T_CaseTestExpr: c_int = 136;
pub const T_ArrayExpr: c_int = 137;
pub const T_RowExpr: c_int = 138;
pub const T_RowCompareExpr: c_int = 139;
pub const T_CoalesceExpr: c_int = 140;
pub const T_MinMaxExpr: c_int = 141;
pub const T_SQLValueFunction: c_int = 142;
pub const T_XmlExpr: c_int = 143;
pub const T_NullTest: c_int = 144;
pub const T_BooleanTest: c_int = 145;
pub const T_CoerceToDomain: c_int = 146;
pub const T_CoerceToDomainValue: c_int = 147;
pub const T_SetToDefault: c_int = 148;
pub const T_CurrentOfExpr: c_int = 149;
pub const T_NextValueExpr: c_int = 150;
pub const T_InferenceElem: c_int = 151;
pub const T_TargetEntry: c_int = 152;
pub const T_RangeTblRef: c_int = 153;
pub const T_JoinExpr: c_int = 154;
pub const T_FromExpr: c_int = 155;
pub const T_OnConflictExpr: c_int = 156;
pub const T_IntoClause: c_int = 157;
pub const T_ExprState: c_int = 158;
pub const T_WindowFuncExprState: c_int = 159;
pub const T_SetExprState: c_int = 160;
pub const T_SubPlanState: c_int = 161;
pub const T_DomainConstraintState: c_int = 162;
pub const T_PlannerInfo: c_int = 163;
pub const T_PlannerGlobal: c_int = 164;
pub const T_RelOptInfo: c_int = 165;
pub const T_IndexOptInfo: c_int = 166;
pub const T_ForeignKeyOptInfo: c_int = 167;
pub const T_ParamPathInfo: c_int = 168;
pub const T_Path: c_int = 169;
pub const T_IndexPath: c_int = 170;
pub const T_BitmapHeapPath: c_int = 171;
pub const T_BitmapAndPath: c_int = 172;
pub const T_BitmapOrPath: c_int = 173;
pub const T_TidPath: c_int = 174;
pub const T_TidRangePath: c_int = 175;
pub const T_SubqueryScanPath: c_int = 176;
pub const T_ForeignPath: c_int = 177;
pub const T_CustomPath: c_int = 178;
pub const T_NestPath: c_int = 179;
pub const T_MergePath: c_int = 180;
pub const T_HashPath: c_int = 181;
pub const T_AppendPath: c_int = 182;
pub const T_MergeAppendPath: c_int = 183;
pub const T_GroupResultPath: c_int = 184;
pub const T_MaterialPath: c_int = 185;
pub const T_MemoizePath: c_int = 186;
pub const T_UniquePath: c_int = 187;
pub const T_GatherPath: c_int = 188;
pub const T_GatherMergePath: c_int = 189;
pub const T_ProjectionPath: c_int = 190;
pub const T_ProjectSetPath: c_int = 191;
pub const T_SortPath: c_int = 192;
pub const T_IncrementalSortPath: c_int = 193;
pub const T_GroupPath: c_int = 194;
pub const T_UpperUniquePath: c_int = 195;
pub const T_AggPath: c_int = 196;
pub const T_GroupingSetsPath: c_int = 197;
pub const T_MinMaxAggPath: c_int = 198;
pub const T_WindowAggPath: c_int = 199;
pub const T_SetOpPath: c_int = 200;
pub const T_RecursiveUnionPath: c_int = 201;
pub const T_LockRowsPath: c_int = 202;
pub const T_ModifyTablePath: c_int = 203;
pub const T_LimitPath: c_int = 204;
pub const T_EquivalenceClass: c_int = 205;
pub const T_EquivalenceMember: c_int = 206;
pub const T_PathKey: c_int = 207;
pub const T_PathKeyInfo: c_int = 208;
pub const T_PathTarget: c_int = 209;
pub const T_RestrictInfo: c_int = 210;
pub const T_IndexClause: c_int = 211;
pub const T_PlaceHolderVar: c_int = 212;
pub const T_SpecialJoinInfo: c_int = 213;
pub const T_AppendRelInfo: c_int = 214;
pub const T_RowIdentityVarInfo: c_int = 215;
pub const T_PlaceHolderInfo: c_int = 216;
pub const T_MinMaxAggInfo: c_int = 217;
pub const T_PlannerParamItem: c_int = 218;
pub const T_RollupData: c_int = 219;
pub const T_GroupingSetData: c_int = 220;
pub const T_StatisticExtInfo: c_int = 221;
pub const T_MergeAction: c_int = 222;
pub const T_AllocSetContext: c_int = 223;
pub const T_SlabContext: c_int = 224;
pub const T_GenerationContext: c_int = 225;
pub const T_Integer: c_int = 226;
pub const T_Float: c_int = 227;
pub const T_Boolean: c_int = 228;
pub const T_String: c_int = 229;
pub const T_BitString: c_int = 230;
pub const T_List: c_int = 231;
pub const T_IntList: c_int = 232;
pub const T_OidList: c_int = 233;
pub const T_ExtensibleNode: c_int = 234;
pub const T_RawStmt: c_int = 235;
pub const T_Query: c_int = 236;
pub const T_PlannedStmt: c_int = 237;
pub const T_InsertStmt: c_int = 238;
pub const T_DeleteStmt: c_int = 239;
pub const T_UpdateStmt: c_int = 240;
pub const T_MergeStmt: c_int = 241;
pub const T_SelectStmt: c_int = 242;
pub const T_ReturnStmt: c_int = 243;
pub const T_PLAssignStmt: c_int = 244;
pub const T_AlterTableStmt: c_int = 245;
pub const T_AlterTableCmd: c_int = 246;
pub const T_AlterDomainStmt: c_int = 247;
pub const T_SetOperationStmt: c_int = 248;
pub const T_GrantStmt: c_int = 249;
pub const T_GrantRoleStmt: c_int = 250;
pub const T_AlterDefaultPrivilegesStmt: c_int = 251;
pub const T_ClosePortalStmt: c_int = 252;
pub const T_ClusterStmt: c_int = 253;
pub const T_CopyStmt: c_int = 254;
pub const T_CreateStmt: c_int = 255;
pub const T_DefineStmt: c_int = 256;
pub const T_DropStmt: c_int = 257;
pub const T_TruncateStmt: c_int = 258;
pub const T_CommentStmt: c_int = 259;
pub const T_FetchStmt: c_int = 260;
pub const T_IndexStmt: c_int = 261;
pub const T_CreateFunctionStmt: c_int = 262;
pub const T_AlterFunctionStmt: c_int = 263;
pub const T_DoStmt: c_int = 264;
pub const T_RenameStmt: c_int = 265;
pub const T_RuleStmt: c_int = 266;
pub const T_NotifyStmt: c_int = 267;
pub const T_ListenStmt: c_int = 268;
pub const T_UnlistenStmt: c_int = 269;
pub const T_TransactionStmt: c_int = 270;
pub const T_ViewStmt: c_int = 271;
pub const T_LoadStmt: c_int = 272;
pub const T_CreateDomainStmt: c_int = 273;
pub const T_CreatedbStmt: c_int = 274;
pub const T_DropdbStmt: c_int = 275;
pub const T_VacuumStmt: c_int = 276;
pub const T_ExplainStmt: c_int = 277;
pub const T_CreateTableAsStmt: c_int = 278;
pub const T_CreateSeqStmt: c_int = 279;
pub const T_AlterSeqStmt: c_int = 280;
pub const T_VariableSetStmt: c_int = 281;
pub const T_VariableShowStmt: c_int = 282;
pub const T_DiscardStmt: c_int = 283;
pub const T_CreateTrigStmt: c_int = 284;
pub const T_CreatePLangStmt: c_int = 285;
pub const T_CreateRoleStmt: c_int = 286;
pub const T_AlterRoleStmt: c_int = 287;
pub const T_DropRoleStmt: c_int = 288;
pub const T_LockStmt: c_int = 289;
pub const T_ConstraintsSetStmt: c_int = 290;
pub const T_ReindexStmt: c_int = 291;
pub const T_CheckPointStmt: c_int = 292;
pub const T_CreateSchemaStmt: c_int = 293;
pub const T_AlterDatabaseStmt: c_int = 294;
pub const T_AlterDatabaseRefreshCollStmt: c_int = 295;
pub const T_AlterDatabaseSetStmt: c_int = 296;
pub const T_AlterRoleSetStmt: c_int = 297;
pub const T_CreateConversionStmt: c_int = 298;
pub const T_CreateCastStmt: c_int = 299;
pub const T_CreateOpClassStmt: c_int = 300;
pub const T_CreateOpFamilyStmt: c_int = 301;
pub const T_AlterOpFamilyStmt: c_int = 302;
pub const T_PrepareStmt: c_int = 303;
pub const T_ExecuteStmt: c_int = 304;
pub const T_DeallocateStmt: c_int = 305;
pub const T_DeclareCursorStmt: c_int = 306;
pub const T_CreateTableSpaceStmt: c_int = 307;
pub const T_DropTableSpaceStmt: c_int = 308;
pub const T_AlterObjectDependsStmt: c_int = 309;
pub const T_AlterObjectSchemaStmt: c_int = 310;
pub const T_AlterOwnerStmt: c_int = 311;
pub const T_AlterOperatorStmt: c_int = 312;
pub const T_AlterTypeStmt: c_int = 313;
pub const T_DropOwnedStmt: c_int = 314;
pub const T_ReassignOwnedStmt: c_int = 315;
pub const T_CompositeTypeStmt: c_int = 316;
pub const T_CreateEnumStmt: c_int = 317;
pub const T_CreateRangeStmt: c_int = 318;
pub const T_AlterEnumStmt: c_int = 319;
pub const T_AlterTSDictionaryStmt: c_int = 320;
pub const T_AlterTSConfigurationStmt: c_int = 321;
pub const T_CreateFdwStmt: c_int = 322;
pub const T_AlterFdwStmt: c_int = 323;
pub const T_CreateForeignServerStmt: c_int = 324;
pub const T_AlterForeignServerStmt: c_int = 325;
pub const T_CreateUserMappingStmt: c_int = 326;
pub const T_AlterUserMappingStmt: c_int = 327;
pub const T_DropUserMappingStmt: c_int = 328;
pub const T_AlterTableSpaceOptionsStmt: c_int = 329;
pub const T_AlterTableMoveAllStmt: c_int = 330;
pub const T_SecLabelStmt: c_int = 331;
pub const T_CreateForeignTableStmt: c_int = 332;
pub const T_ImportForeignSchemaStmt: c_int = 333;
pub const T_CreateExtensionStmt: c_int = 334;
pub const T_AlterExtensionStmt: c_int = 335;
pub const T_AlterExtensionContentsStmt: c_int = 336;
pub const T_CreateEventTrigStmt: c_int = 337;
pub const T_AlterEventTrigStmt: c_int = 338;
pub const T_RefreshMatViewStmt: c_int = 339;
pub const T_ReplicaIdentityStmt: c_int = 340;
pub const T_AlterSystemStmt: c_int = 341;
pub const T_CreatePolicyStmt: c_int = 342;
pub const T_AlterPolicyStmt: c_int = 343;
pub const T_CreateTransformStmt: c_int = 344;
pub const T_CreateAmStmt: c_int = 345;
pub const T_CreatePublicationStmt: c_int = 346;
pub const T_AlterPublicationStmt: c_int = 347;
pub const T_CreateSubscriptionStmt: c_int = 348;
pub const T_AlterSubscriptionStmt: c_int = 349;
pub const T_DropSubscriptionStmt: c_int = 350;
pub const T_CreateStatsStmt: c_int = 351;
pub const T_AlterCollationStmt: c_int = 352;
pub const T_CallStmt: c_int = 353;
pub const T_AlterStatsStmt: c_int = 354;
pub const T_A_Expr: c_int = 355;
pub const T_ColumnRef: c_int = 356;
pub const T_ParamRef: c_int = 357;
pub const T_A_Const: c_int = 358;
pub const T_FuncCall: c_int = 359;
pub const T_A_Star: c_int = 360;
pub const T_A_Indices: c_int = 361;
pub const T_A_Indirection: c_int = 362;
pub const T_A_ArrayExpr: c_int = 363;
pub const T_ResTarget: c_int = 364;
pub const T_MultiAssignRef: c_int = 365;
pub const T_TypeCast: c_int = 366;
pub const T_CollateClause: c_int = 367;
pub const T_SortBy: c_int = 368;
pub const T_WindowDef: c_int = 369;
pub const T_RangeSubselect: c_int = 370;
pub const T_RangeFunction: c_int = 371;
pub const T_RangeTableSample: c_int = 372;
pub const T_RangeTableFunc: c_int = 373;
pub const T_RangeTableFuncCol: c_int = 374;
pub const T_TypeName: c_int = 375;
pub const T_ColumnDef: c_int = 376;
pub const T_IndexElem: c_int = 377;
pub const T_StatsElem: c_int = 378;
pub const T_Constraint: c_int = 379;
pub const T_DefElem: c_int = 380;
pub const T_RangeTblEntry: c_int = 381;
pub const T_RangeTblFunction: c_int = 382;
pub const T_TableSampleClause: c_int = 383;
pub const T_WithCheckOption: c_int = 384;
pub const T_SortGroupClause: c_int = 385;
pub const T_GroupingSet: c_int = 386;
pub const T_WindowClause: c_int = 387;
pub const T_ObjectWithArgs: c_int = 388;
pub const T_AccessPriv: c_int = 389;
pub const T_CreateOpClassItem: c_int = 390;
pub const T_TableLikeClause: c_int = 391;
pub const T_FunctionParameter: c_int = 392;
pub const T_LockingClause: c_int = 393;
pub const T_RowMarkClause: c_int = 394;
pub const T_XmlSerialize: c_int = 395;
pub const T_WithClause: c_int = 396;
pub const T_InferClause: c_int = 397;
pub const T_OnConflictClause: c_int = 398;
pub const T_CTESearchClause: c_int = 399;
pub const T_CTECycleClause: c_int = 400;
pub const T_CommonTableExpr: c_int = 401;
pub const T_MergeWhenClause: c_int = 402;
pub const T_RoleSpec: c_int = 403;
pub const T_TriggerTransition: c_int = 404;
pub const T_PartitionElem: c_int = 405;
pub const T_PartitionSpec: c_int = 406;
pub const T_PartitionBoundSpec: c_int = 407;
pub const T_PartitionRangeDatum: c_int = 408;
pub const T_PartitionCmd: c_int = 409;
pub const T_VacuumRelation: c_int = 410;
pub const T_PublicationObjSpec: c_int = 411;
pub const T_PublicationTable: c_int = 412;
pub const T_IdentifySystemCmd: c_int = 413;
pub const T_BaseBackupCmd: c_int = 414;
pub const T_CreateReplicationSlotCmd: c_int = 415;
pub const T_DropReplicationSlotCmd: c_int = 416;
pub const T_ReadReplicationSlotCmd: c_int = 417;
pub const T_StartReplicationCmd: c_int = 418;
pub const T_TimeLineHistoryCmd: c_int = 419;
pub const T_TriggerData: c_int = 420;
pub const T_EventTriggerData: c_int = 421;
pub const T_ReturnSetInfo: c_int = 422;
pub const T_WindowObjectData: c_int = 423;
pub const T_TIDBitmap: c_int = 424;
pub const T_InlineCodeBlock: c_int = 425;
pub const T_FdwRoutine: c_int = 426;
pub const T_IndexAmRoutine: c_int = 427;
pub const T_TableAmRoutine: c_int = 428;
pub const T_TsmRoutine: c_int = 429;
pub const T_ForeignKeyCacheInfo: c_int = 430;
pub const T_CallContext: c_int = 431;
pub const T_SupportRequestSimplify: c_int = 432;
pub const T_SupportRequestSelectivity: c_int = 433;
pub const T_SupportRequestCost: c_int = 434;
pub const T_SupportRequestRows: c_int = 435;
pub const T_SupportRequestIndexCondition: c_int = 436;
pub const T_SupportRequestWFuncMonotonic: c_int = 437;
pub const enum_NodeTag = c_uint;
pub const NodeTag = enum_NodeTag;
pub const MemoryContext = [*c]struct_MemoryContextData;
pub const MemoryStatsPrintFunc = ?*const fn (MemoryContext, ?*anyopaque, [*c]const u8, bool) callconv(.C) void;
pub const struct_MemoryContextCounters = extern struct {
    nblocks: Size,
    freechunks: Size,
    totalspace: Size,
    freespace: Size,
};
pub const MemoryContextCounters = struct_MemoryContextCounters;
pub const struct_MemoryContextMethods = extern struct {
    alloc: ?*const fn (MemoryContext, Size) callconv(.C) ?*anyopaque,
    free_p: ?*const fn (MemoryContext, ?*anyopaque) callconv(.C) void,
    realloc: ?*const fn (MemoryContext, ?*anyopaque, Size) callconv(.C) ?*anyopaque,
    reset: ?*const fn (MemoryContext) callconv(.C) void,
    delete_context: ?*const fn (MemoryContext) callconv(.C) void,
    get_chunk_space: ?*const fn (MemoryContext, ?*anyopaque) callconv(.C) Size,
    is_empty: ?*const fn (MemoryContext) callconv(.C) bool,
    stats: ?*const fn (MemoryContext, MemoryStatsPrintFunc, ?*anyopaque, [*c]MemoryContextCounters, bool) callconv(.C) void,
};
pub const MemoryContextMethods = struct_MemoryContextMethods;
pub const MemoryContextCallbackFunction = ?*const fn (?*anyopaque) callconv(.C) void;
pub const struct_MemoryContextCallback = extern struct {
    func: MemoryContextCallbackFunction,
    arg: ?*anyopaque,
    next: [*c]struct_MemoryContextCallback,
};
pub const MemoryContextCallback = struct_MemoryContextCallback;
pub const struct_MemoryContextData = extern struct {
    type: NodeTag,
    isReset: bool,
    allowInCritSection: bool,
    mem_allocated: Size,
    methods: [*c]const MemoryContextMethods,
    parent: MemoryContext,
    firstchild: MemoryContext,
    prevchild: MemoryContext,
    nextchild: MemoryContext,
    name: [*c]const u8,
    ident: [*c]const u8,
    reset_cbs: [*c]MemoryContextCallback,
};
pub const struct_ErrorData = extern struct {
    elevel: c_int,
    output_to_server: bool,
    output_to_client: bool,
    hide_stmt: bool,
    hide_ctx: bool,
    filename: [*c]const u8,
    lineno: c_int,
    funcname: [*c]const u8,
    domain: [*c]const u8,
    context_domain: [*c]const u8,
    sqlerrcode: c_int,
    message: [*c]u8,
    detail: [*c]u8,
    detail_log: [*c]u8,
    hint: [*c]u8,
    context: [*c]u8,
    backtrace: [*c]u8,
    message_id: [*c]const u8,
    schema_name: [*c]u8,
    table_name: [*c]u8,
    column_name: [*c]u8,
    datatype_name: [*c]u8,
    constraint_name: [*c]u8,
    cursorpos: c_int,
    internalpos: c_int,
    internalquery: [*c]u8,
    saved_errno: c_int,
    assoc_context: [*c]struct_MemoryContextData,
};
pub const ErrorData = struct_ErrorData;
pub extern fn EmitErrorReport() void;
pub extern fn CopyErrorData() [*c]ErrorData;
pub extern fn FreeErrorData(edata: [*c]ErrorData) void;
pub extern fn FlushErrorState() void;
pub extern fn ReThrowError(edata: [*c]ErrorData) noreturn;
pub extern fn ThrowErrorData(edata: [*c]ErrorData) void;
pub extern fn pg_re_throw() noreturn;
pub extern fn GetErrorContextStack() [*c]u8;
pub const emit_log_hook_type = ?*const fn ([*c]ErrorData) callconv(.C) void;
pub extern var emit_log_hook: emit_log_hook_type;
pub const PGERROR_TERSE: c_int = 0;
pub const PGERROR_DEFAULT: c_int = 1;
pub const PGERROR_VERBOSE: c_int = 2;
pub const PGErrorVerbosity = c_uint;
pub extern var Log_error_verbosity: c_int;
pub extern var Log_line_prefix: [*c]u8;
pub extern var Log_destination: c_int;
pub extern var Log_destination_string: [*c]u8;
pub extern var syslog_sequence_numbers: bool;
pub extern var syslog_split_messages: bool;
pub extern fn DebugFileOpen() void;
pub extern fn unpack_sql_state(sql_state: c_int) [*c]u8;
pub extern fn in_error_recursion_trouble() bool;
pub extern fn reset_formatted_start_time() void;
pub extern fn get_formatted_start_time() [*c]u8;
pub extern fn get_formatted_log_time() [*c]u8;
pub extern fn get_backend_type_for_log() [*c]const u8;
pub extern fn check_log_of_query(edata: [*c]ErrorData) bool;
pub extern fn error_severity(elevel: c_int) [*c]const u8;
pub extern fn write_pipe_chunks(data: [*c]u8, len: c_int, dest: c_int) void;
pub extern fn write_csvlog(edata: [*c]ErrorData) void;
pub extern fn write_jsonlog(edata: [*c]ErrorData) void;
pub extern fn set_syslog_parameters(ident: [*c]const u8, facility: c_int) void;
pub extern fn write_stderr(fmt: [*c]const u8, ...) void;
pub extern var CurrentMemoryContext: MemoryContext;
pub extern fn MemoryContextAlloc(context: MemoryContext, size: Size) ?*anyopaque;
pub extern fn MemoryContextAllocZero(context: MemoryContext, size: Size) ?*anyopaque;
pub extern fn MemoryContextAllocZeroAligned(context: MemoryContext, size: Size) ?*anyopaque;
pub extern fn MemoryContextAllocExtended(context: MemoryContext, size: Size, flags: c_int) ?*anyopaque;
pub extern fn palloc(size: Size) ?*anyopaque;
pub extern fn palloc0(size: Size) ?*anyopaque;
pub extern fn palloc_extended(size: Size, flags: c_int) ?*anyopaque;
pub extern fn repalloc(pointer: ?*anyopaque, size: Size) ?*anyopaque;
pub extern fn pfree(pointer: ?*anyopaque) void;
pub extern fn MemoryContextAllocHuge(context: MemoryContext, size: Size) ?*anyopaque;
pub extern fn repalloc_huge(pointer: ?*anyopaque, size: Size) ?*anyopaque;
pub fn MemoryContextSwitchTo(arg_context: MemoryContext) callconv(.C) MemoryContext {
    var context = arg_context;
    var old: MemoryContext = CurrentMemoryContext;
    CurrentMemoryContext = context;
    return old;
}
pub extern fn MemoryContextRegisterResetCallback(context: MemoryContext, cb: [*c]MemoryContextCallback) void;
pub extern fn MemoryContextStrdup(context: MemoryContext, string: [*c]const u8) [*c]u8;
pub extern fn pstrdup(in: [*c]const u8) [*c]u8;
pub extern fn pnstrdup(in: [*c]const u8, len: Size) [*c]u8;
pub extern fn pchomp(in: [*c]const u8) [*c]u8;
pub extern fn psprintf(fmt: [*c]const u8, ...) [*c]u8;
pub extern fn pvsnprintf(buf: [*c]u8, len: usize, fmt: [*c]const u8, args: [*c]struct___va_list_tag) usize;
pub const struct_varatt_external = extern struct {
    va_rawsize: int32,
    va_extinfo: uint32,
    va_valueid: Oid,
    va_toastrelid: Oid,
};
pub const varatt_external = struct_varatt_external;
pub const struct_varatt_indirect = extern struct {
    pointer: [*c]struct_varlena,
};
pub const varatt_indirect = struct_varatt_indirect;
pub const struct_ExpandedObjectHeader = opaque {};
pub const ExpandedObjectHeader = struct_ExpandedObjectHeader;
pub const struct_varatt_expanded = extern struct {
    eohptr: ?*ExpandedObjectHeader,
};
pub const varatt_expanded = struct_varatt_expanded;
pub const VARTAG_INDIRECT: c_int = 1;
pub const VARTAG_EXPANDED_RO: c_int = 2;
pub const VARTAG_EXPANDED_RW: c_int = 3;
pub const VARTAG_ONDISK: c_int = 18;
pub const enum_vartag_external = c_uint;
pub const vartag_external = enum_vartag_external;
const struct_unnamed_5 = extern struct {
    va_header: uint32 align(4),
    pub fn va_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(u8), @ptrCast(Intermediate, self) + 4));
    }
};
const struct_unnamed_6 = extern struct {
    va_header: uint32 align(4),
    va_tcinfo: uint32,
    pub fn va_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(u8), @ptrCast(Intermediate, self) + 8));
    }
};
pub const varattrib_4b = extern union {
    va_4byte: struct_unnamed_5,
    va_compressed: struct_unnamed_6,
};
pub const varattrib_1b = extern struct {
    va_header: uint8 align(1),
    pub fn va_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(u8), @ptrCast(Intermediate, self) + 1));
    }
};
pub const varattrib_1b_e = extern struct {
    va_header: uint8 align(1),
    va_tag: uint8,
    pub fn va_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(u8), @ptrCast(Intermediate, self) + 2));
    }
};
pub const Datum = usize;
pub const struct_NullableDatum = extern struct {
    value: Datum,
    isnull: bool,
};
pub const NullableDatum = struct_NullableDatum;
pub fn DatumGetFloat4(arg_X: Datum) callconv(.C) float4 {
    var X = arg_X;
    const union_unnamed_7 = extern union {
        value: int32,
        retval: float4,
    };
    _ = @TypeOf(union_unnamed_7);
    var myunion: union_unnamed_7 = undefined;
    myunion.value = @bitCast(int32, @truncate(c_uint, X));
    return myunion.retval;
}
pub fn Float4GetDatum(arg_X: float4) callconv(.C) Datum {
    var X = arg_X;
    const union_unnamed_8 = extern union {
        value: float4,
        retval: int32,
    };
    _ = @TypeOf(union_unnamed_8);
    var myunion: union_unnamed_8 = undefined;
    myunion.value = X;
    return @bitCast(Datum, @as(c_long, myunion.retval));
}
pub fn DatumGetFloat8(arg_X: Datum) callconv(.C) float8 {
    var X = arg_X;
    const union_unnamed_9 = extern union {
        value: int64,
        retval: float8,
    };
    _ = @TypeOf(union_unnamed_9);
    var myunion: union_unnamed_9 = undefined;
    myunion.value = @bitCast(int64, X);
    return myunion.retval;
}
pub fn Float8GetDatum(arg_X: float8) callconv(.C) Datum {
    var X = arg_X;
    const union_unnamed_10 = extern union {
        value: float8,
        retval: int64,
    };
    _ = @TypeOf(union_unnamed_10);
    var myunion: union_unnamed_10 = undefined;
    myunion.value = X;
    return @bitCast(Datum, myunion.retval);
}
pub const AttrNumber = int16;
pub const struct_FormData_pg_attribute = extern struct {
    attrelid: Oid,
    attname: NameData,
    atttypid: Oid,
    attstattarget: int32,
    attlen: int16,
    attnum: int16,
    attndims: int32,
    attcacheoff: int32,
    atttypmod: int32,
    attbyval: bool,
    attalign: u8,
    attstorage: u8,
    attcompression: u8,
    attnotnull: bool,
    atthasdef: bool,
    atthasmissing: bool,
    attidentity: u8,
    attgenerated: u8,
    attisdropped: bool,
    attislocal: bool,
    attinhcount: int32,
    attcollation: Oid,
};
pub const FormData_pg_attribute = struct_FormData_pg_attribute;
pub const Form_pg_attribute = [*c]FormData_pg_attribute;
pub extern var no_such_variable: c_int;
pub const struct_Node = extern struct {
    type: NodeTag,
};
pub const Node = struct_Node;
pub const bitmapword = uint64;
pub const struct_Bitmapset = extern struct {
    nwords: c_int align(8),
    pub fn words(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), bitmapword) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), bitmapword);
        return @ptrCast(ReturnType, @alignCast(@alignOf(bitmapword), @ptrCast(Intermediate, self) + 8));
    }
};
pub const struct_StringInfoData = extern struct {
    data: [*c]u8,
    len: c_int,
    maxlen: c_int,
    cursor: c_int,
};
pub extern fn outNode(str: [*c]struct_StringInfoData, obj: ?*const anyopaque) void;
pub extern fn outToken(str: [*c]struct_StringInfoData, s: [*c]const u8) void;
pub extern fn outBitmapset(str: [*c]struct_StringInfoData, bms: [*c]const struct_Bitmapset) void;
pub extern fn outDatum(str: [*c]struct_StringInfoData, value: usize, typlen: c_int, typbyval: bool) void;
pub extern fn nodeToString(obj: ?*const anyopaque) [*c]u8;
pub extern fn bmsToString(bms: [*c]const struct_Bitmapset) [*c]u8;
pub extern fn stringToNode(str: [*c]const u8) ?*anyopaque;
pub extern fn readBitmapset() [*c]struct_Bitmapset;
pub extern fn readDatum(typbyval: bool) usize;
pub extern fn readBoolCols(numCols: c_int) [*c]bool;
pub extern fn readIntCols(numCols: c_int) [*c]c_int;
pub extern fn readOidCols(numCols: c_int) [*c]Oid;
pub extern fn readAttrNumberCols(numCols: c_int) [*c]int16;
pub extern fn copyObjectImpl(obj: ?*const anyopaque) ?*anyopaque;
pub extern fn equal(a: ?*const anyopaque, b: ?*const anyopaque) bool;
pub const Selectivity = f64;
pub const Cost = f64;
pub const Cardinality = f64;
pub const CMD_UNKNOWN: c_int = 0;
pub const CMD_SELECT: c_int = 1;
pub const CMD_UPDATE: c_int = 2;
pub const CMD_INSERT: c_int = 3;
pub const CMD_DELETE: c_int = 4;
pub const CMD_MERGE: c_int = 5;
pub const CMD_UTILITY: c_int = 6;
pub const CMD_NOTHING: c_int = 7;
pub const enum_CmdType = c_uint;
pub const CmdType = enum_CmdType;
pub const JOIN_INNER: c_int = 0;
pub const JOIN_LEFT: c_int = 1;
pub const JOIN_FULL: c_int = 2;
pub const JOIN_RIGHT: c_int = 3;
pub const JOIN_SEMI: c_int = 4;
pub const JOIN_ANTI: c_int = 5;
pub const JOIN_UNIQUE_OUTER: c_int = 6;
pub const JOIN_UNIQUE_INNER: c_int = 7;
pub const enum_JoinType = c_uint;
pub const JoinType = enum_JoinType;
pub const AGG_PLAIN: c_int = 0;
pub const AGG_SORTED: c_int = 1;
pub const AGG_HASHED: c_int = 2;
pub const AGG_MIXED: c_int = 3;
pub const enum_AggStrategy = c_uint;
pub const AggStrategy = enum_AggStrategy;
pub const AGGSPLIT_SIMPLE: c_int = 0;
pub const AGGSPLIT_INITIAL_SERIAL: c_int = 6;
pub const AGGSPLIT_FINAL_DESERIAL: c_int = 9;
pub const enum_AggSplit = c_uint;
pub const AggSplit = enum_AggSplit;
pub const SETOPCMD_INTERSECT: c_int = 0;
pub const SETOPCMD_INTERSECT_ALL: c_int = 1;
pub const SETOPCMD_EXCEPT: c_int = 2;
pub const SETOPCMD_EXCEPT_ALL: c_int = 3;
pub const enum_SetOpCmd = c_uint;
pub const SetOpCmd = enum_SetOpCmd;
pub const SETOP_SORTED: c_int = 0;
pub const SETOP_HASHED: c_int = 1;
pub const enum_SetOpStrategy = c_uint;
pub const SetOpStrategy = enum_SetOpStrategy;
pub const ONCONFLICT_NONE: c_int = 0;
pub const ONCONFLICT_NOTHING: c_int = 1;
pub const ONCONFLICT_UPDATE: c_int = 2;
pub const enum_OnConflictAction = c_uint;
pub const OnConflictAction = enum_OnConflictAction;
pub const LIMIT_OPTION_COUNT: c_int = 0;
pub const LIMIT_OPTION_WITH_TIES: c_int = 1;
pub const LIMIT_OPTION_DEFAULT: c_int = 2;
pub const enum_LimitOption = c_uint;
pub const LimitOption = enum_LimitOption;
pub const union_ListCell = extern union {
    ptr_value: ?*anyopaque,
    int_value: c_int,
    oid_value: Oid,
};
pub const ListCell = union_ListCell;
pub const struct_List = extern struct {
    type: NodeTag align(8),
    length: c_int,
    max_length: c_int,
    elements: [*c]ListCell,
    pub fn initial_elements(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ListCell) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ListCell);
        return @ptrCast(ReturnType, @alignCast(@alignOf(ListCell), @ptrCast(Intermediate, self) + 24));
    }
};
pub const List = struct_List;
pub const struct_ForEachState = extern struct {
    l: [*c]const List,
    i: c_int,
};
pub const ForEachState = struct_ForEachState;
pub const struct_ForBothState = extern struct {
    l1: [*c]const List,
    l2: [*c]const List,
    i: c_int,
};
pub const ForBothState = struct_ForBothState;
pub const struct_ForBothCellState = extern struct {
    l1: [*c]const List,
    l2: [*c]const List,
    i1: c_int,
    i2: c_int,
};
pub const ForBothCellState = struct_ForBothCellState;
pub const struct_ForThreeState = extern struct {
    l1: [*c]const List,
    l2: [*c]const List,
    l3: [*c]const List,
    i: c_int,
};
pub const ForThreeState = struct_ForThreeState;
pub const struct_ForFourState = extern struct {
    l1: [*c]const List,
    l2: [*c]const List,
    l3: [*c]const List,
    l4: [*c]const List,
    i: c_int,
};
pub const ForFourState = struct_ForFourState;
pub const struct_ForFiveState = extern struct {
    l1: [*c]const List,
    l2: [*c]const List,
    l3: [*c]const List,
    l4: [*c]const List,
    l5: [*c]const List,
    i: c_int,
};
pub const ForFiveState = struct_ForFiveState;
pub fn list_head(arg_l: [*c]const List) callconv(.C) [*c]ListCell {
    var l = arg_l;
    return if (l != null) &l.*.elements[@intCast(c_uint, @as(c_int, 0))] else null;
}
pub fn list_tail(arg_l: [*c]const List) callconv(.C) [*c]ListCell {
    var l = arg_l;
    return if (l != null) &(blk: {
        const tmp = l.*.length - @as(c_int, 1);
        if (tmp >= 0) break :blk l.*.elements + @intCast(usize, tmp) else break :blk l.*.elements - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).* else null;
}
pub fn list_second_cell(arg_l: [*c]const List) callconv(.C) [*c]ListCell {
    var l = arg_l;
    if ((l != null) and (l.*.length >= @as(c_int, 2))) return &l.*.elements[@intCast(c_uint, @as(c_int, 1))] else return null;
    return null;
}
pub fn list_length(arg_l: [*c]const List) callconv(.C) c_int {
    var l = arg_l;
    return if (l != null) l.*.length else @as(c_int, 0);
}
pub fn list_nth_cell(arg_list: [*c]const List, arg_n: c_int) callconv(.C) [*c]ListCell {
    var list = arg_list;
    var n = arg_n;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    return &(blk: {
        const tmp = n;
        if (tmp >= 0) break :blk list.*.elements + @intCast(usize, tmp) else break :blk list.*.elements - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).*;
}
pub fn list_last_cell(arg_list: [*c]const List) callconv(.C) [*c]ListCell {
    var list = arg_list;
    _ = @as(c_int, 1);
    return &(blk: {
        const tmp = list.*.length - @as(c_int, 1);
        if (tmp >= 0) break :blk list.*.elements + @intCast(usize, tmp) else break :blk list.*.elements - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).*;
}
pub fn list_nth(arg_list: [*c]const List, arg_n: c_int) callconv(.C) ?*anyopaque {
    var list = arg_list;
    var n = arg_n;
    _ = @as(c_int, 1);
    return list_nth_cell(list, n).*.ptr_value;
}
pub fn list_nth_int(arg_list: [*c]const List, arg_n: c_int) callconv(.C) c_int {
    var list = arg_list;
    var n = arg_n;
    _ = @as(c_int, 1);
    return list_nth_cell(list, n).*.int_value;
}
pub fn list_nth_oid(arg_list: [*c]const List, arg_n: c_int) callconv(.C) Oid {
    var list = arg_list;
    var n = arg_n;
    _ = @as(c_int, 1);
    return list_nth_cell(list, n).*.oid_value;
}
pub fn list_cell_number(arg_l: [*c]const List, arg_c: [*c]const ListCell) callconv(.C) c_int {
    var l = arg_l;
    var c = arg_c;
    _ = @as(c_int, 1);
    return @bitCast(c_int, @truncate(c_int, @divExact(@bitCast(c_long, @intFromPtr(c) -% @intFromPtr(l.*.elements)), @sizeOf(ListCell))));
}
pub fn lnext(arg_l: [*c]const List, arg_c: [*c]const ListCell) callconv(.C) [*c]ListCell {
    var l = arg_l;
    var c = arg_c;
    _ = @as(c_int, 1);
    c += 1;
    if (c < @ptrCast([*c]const ListCell, @alignCast(@import("std").meta.alignment([*c]const ListCell), &(blk: {
        const tmp = l.*.length;
        if (tmp >= 0) break :blk l.*.elements + @intCast(usize, tmp) else break :blk l.*.elements - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).*))) return @ptrFromInt([*c]ListCell, @intFromPtr(c)) else return null;
    return null;
}
pub fn for_each_from_setup(arg_lst: [*c]const List, arg_N: c_int) callconv(.C) ForEachState {
    var lst = arg_lst;
    var N = arg_N;
    var r: ForEachState = ForEachState{
        .l = lst,
        .i = N,
    };
    _ = @as(c_int, 1);
    return r;
}
pub fn for_each_cell_setup(arg_lst: [*c]const List, arg_initcell: [*c]const ListCell) callconv(.C) ForEachState {
    var lst = arg_lst;
    var initcell = arg_initcell;
    var r: ForEachState = ForEachState{
        .l = lst,
        .i = if (initcell != null) list_cell_number(lst, initcell) else list_length(lst),
    };
    return r;
}
pub fn for_both_cell_setup(arg_list1: [*c]const List, arg_initcell1: [*c]const ListCell, arg_list2: [*c]const List, arg_initcell2: [*c]const ListCell) callconv(.C) ForBothCellState {
    var list1 = arg_list1;
    var initcell1 = arg_initcell1;
    var list2 = arg_list2;
    var initcell2 = arg_initcell2;
    var r: ForBothCellState = ForBothCellState{
        .l1 = list1,
        .l2 = list2,
        .i1 = if (initcell1 != null) list_cell_number(list1, initcell1) else list_length(list1),
        .i2 = if (initcell2 != null) list_cell_number(list2, initcell2) else list_length(list2),
    };
    return r;
}
pub extern fn list_make1_impl(t: NodeTag, datum1: ListCell) [*c]List;
pub extern fn list_make2_impl(t: NodeTag, datum1: ListCell, datum2: ListCell) [*c]List;
pub extern fn list_make3_impl(t: NodeTag, datum1: ListCell, datum2: ListCell, datum3: ListCell) [*c]List;
pub extern fn list_make4_impl(t: NodeTag, datum1: ListCell, datum2: ListCell, datum3: ListCell, datum4: ListCell) [*c]List;
pub extern fn list_make5_impl(t: NodeTag, datum1: ListCell, datum2: ListCell, datum3: ListCell, datum4: ListCell, datum5: ListCell) [*c]List;
pub extern fn lappend(list: [*c]List, datum: ?*anyopaque) [*c]List;
pub extern fn lappend_int(list: [*c]List, datum: c_int) [*c]List;
pub extern fn lappend_oid(list: [*c]List, datum: Oid) [*c]List;
pub extern fn list_insert_nth(list: [*c]List, pos: c_int, datum: ?*anyopaque) [*c]List;
pub extern fn list_insert_nth_int(list: [*c]List, pos: c_int, datum: c_int) [*c]List;
pub extern fn list_insert_nth_oid(list: [*c]List, pos: c_int, datum: Oid) [*c]List;
pub extern fn lcons(datum: ?*anyopaque, list: [*c]List) [*c]List;
pub extern fn lcons_int(datum: c_int, list: [*c]List) [*c]List;
pub extern fn lcons_oid(datum: Oid, list: [*c]List) [*c]List;
pub extern fn list_concat(list1: [*c]List, list2: [*c]const List) [*c]List;
pub extern fn list_concat_copy(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_truncate(list: [*c]List, new_size: c_int) [*c]List;
pub extern fn list_member(list: [*c]const List, datum: ?*const anyopaque) bool;
pub extern fn list_member_ptr(list: [*c]const List, datum: ?*const anyopaque) bool;
pub extern fn list_member_int(list: [*c]const List, datum: c_int) bool;
pub extern fn list_member_oid(list: [*c]const List, datum: Oid) bool;
pub extern fn list_delete(list: [*c]List, datum: ?*anyopaque) [*c]List;
pub extern fn list_delete_ptr(list: [*c]List, datum: ?*anyopaque) [*c]List;
pub extern fn list_delete_int(list: [*c]List, datum: c_int) [*c]List;
pub extern fn list_delete_oid(list: [*c]List, datum: Oid) [*c]List;
pub extern fn list_delete_first(list: [*c]List) [*c]List;
pub extern fn list_delete_last(list: [*c]List) [*c]List;
pub extern fn list_delete_first_n(list: [*c]List, n: c_int) [*c]List;
pub extern fn list_delete_nth_cell(list: [*c]List, n: c_int) [*c]List;
pub extern fn list_delete_cell(list: [*c]List, cell: [*c]ListCell) [*c]List;
pub extern fn list_union(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_union_ptr(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_union_int(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_union_oid(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_intersection(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_intersection_int(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_difference(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_difference_ptr(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_difference_int(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_difference_oid(list1: [*c]const List, list2: [*c]const List) [*c]List;
pub extern fn list_append_unique(list: [*c]List, datum: ?*anyopaque) [*c]List;
pub extern fn list_append_unique_ptr(list: [*c]List, datum: ?*anyopaque) [*c]List;
pub extern fn list_append_unique_int(list: [*c]List, datum: c_int) [*c]List;
pub extern fn list_append_unique_oid(list: [*c]List, datum: Oid) [*c]List;
pub extern fn list_concat_unique(list1: [*c]List, list2: [*c]const List) [*c]List;
pub extern fn list_concat_unique_ptr(list1: [*c]List, list2: [*c]const List) [*c]List;
pub extern fn list_concat_unique_int(list1: [*c]List, list2: [*c]const List) [*c]List;
pub extern fn list_concat_unique_oid(list1: [*c]List, list2: [*c]const List) [*c]List;
pub extern fn list_deduplicate_oid(list: [*c]List) void;
pub extern fn list_free(list: [*c]List) void;
pub extern fn list_free_deep(list: [*c]List) void;
pub extern fn list_copy(list: [*c]const List) [*c]List;
pub extern fn list_copy_head(oldlist: [*c]const List, len: c_int) [*c]List;
pub extern fn list_copy_tail(list: [*c]const List, nskip: c_int) [*c]List;
pub extern fn list_copy_deep(oldlist: [*c]const List) [*c]List;
pub const list_sort_comparator = ?*const fn ([*c]const ListCell, [*c]const ListCell) callconv(.C) c_int;
pub extern fn list_sort(list: [*c]List, cmp: list_sort_comparator) void;
pub extern fn list_int_cmp(p1: [*c]const ListCell, p2: [*c]const ListCell) c_int;
pub extern fn list_oid_cmp(p1: [*c]const ListCell, p2: [*c]const ListCell) c_int;
pub const struct_AttrDefault = extern struct {
    adnum: AttrNumber,
    adbin: [*c]u8,
};
pub const AttrDefault = struct_AttrDefault;
pub const struct_ConstrCheck = extern struct {
    ccname: [*c]u8,
    ccbin: [*c]u8,
    ccvalid: bool,
    ccnoinherit: bool,
};
pub const ConstrCheck = struct_ConstrCheck;
pub const struct_AttrMissing = opaque {};
pub const struct_TupleConstr = extern struct {
    defval: [*c]AttrDefault,
    check: [*c]ConstrCheck,
    missing: ?*struct_AttrMissing,
    num_defval: uint16,
    num_check: uint16,
    has_not_null: bool,
    has_generated_stored: bool,
};
pub const TupleConstr = struct_TupleConstr;
pub const struct_TupleDescData = extern struct {
    natts: c_int align(8),
    tdtypeid: Oid,
    tdtypmod: int32,
    tdrefcount: c_int,
    constr: [*c]TupleConstr,
    pub fn attrs(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), FormData_pg_attribute) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), FormData_pg_attribute);
        return @ptrCast(ReturnType, @alignCast(@alignOf(FormData_pg_attribute), @ptrCast(Intermediate, self) + 24));
    }
};
pub const TupleDescData = struct_TupleDescData;
pub const TupleDesc = [*c]struct_TupleDescData;
pub extern fn CreateTemplateTupleDesc(natts: c_int) TupleDesc;
pub extern fn CreateTupleDesc(natts: c_int, attrs: [*c]Form_pg_attribute) TupleDesc;
pub extern fn CreateTupleDescCopy(tupdesc: TupleDesc) TupleDesc;
pub extern fn CreateTupleDescCopyConstr(tupdesc: TupleDesc) TupleDesc;
pub extern fn TupleDescCopy(dst: TupleDesc, src: TupleDesc) void;
pub extern fn TupleDescCopyEntry(dst: TupleDesc, dstAttno: AttrNumber, src: TupleDesc, srcAttno: AttrNumber) void;
pub extern fn FreeTupleDesc(tupdesc: TupleDesc) void;
pub extern fn IncrTupleDescRefCount(tupdesc: TupleDesc) void;
pub extern fn DecrTupleDescRefCount(tupdesc: TupleDesc) void;
pub extern fn equalTupleDescs(tupdesc1: TupleDesc, tupdesc2: TupleDesc) bool;
pub extern fn hashTupleDesc(tupdesc: TupleDesc) uint32;
pub extern fn TupleDescInitEntry(desc: TupleDesc, attributeNumber: AttrNumber, attributeName: [*c]const u8, oidtypeid: Oid, typmod: int32, attdim: c_int) void;
pub extern fn TupleDescInitBuiltinEntry(desc: TupleDesc, attributeNumber: AttrNumber, attributeName: [*c]const u8, oidtypeid: Oid, typmod: int32, attdim: c_int) void;
pub extern fn TupleDescInitEntryCollation(desc: TupleDesc, attributeNumber: AttrNumber, collationid: Oid) void;
pub extern fn BuildDescForRelation(schema: [*c]List) TupleDesc;
pub extern fn BuildDescFromLists(names: [*c]List, types: [*c]List, typmods: [*c]List, collations: [*c]List) TupleDesc;
pub const struct_AttrMap = extern struct {
    attnums: [*c]AttrNumber,
    maplen: c_int,
};
pub const AttrMap = struct_AttrMap;
pub extern fn make_attrmap(maplen: c_int) [*c]AttrMap;
pub extern fn free_attrmap(map: [*c]AttrMap) void;
pub extern fn build_attrmap_by_name(indesc: TupleDesc, outdesc: TupleDesc) [*c]AttrMap;
pub extern fn build_attrmap_by_name_if_req(indesc: TupleDesc, outdesc: TupleDesc) [*c]AttrMap;
pub extern fn build_attrmap_by_position(indesc: TupleDesc, outdesc: TupleDesc, msg: [*c]const u8) [*c]AttrMap;
pub const BlockNumber = uint32;
pub const struct_BlockIdData = extern struct {
    bi_hi: uint16,
    bi_lo: uint16,
};
pub const BlockIdData = struct_BlockIdData;
pub const BlockId = [*c]BlockIdData; // /home/sarna/repo/pgturso/postgres/src/include/storage/itemid.h:27:11: warning: struct demoted to opaque type - has bitfield
pub const struct_ItemIdData = opaque {};
pub const ItemIdData = struct_ItemIdData;
pub const ItemId = ?*ItemIdData;
pub const ItemOffset = uint16;
pub const ItemLength = uint16;
pub const OffsetNumber = uint16;
pub const struct_ItemPointerData = extern struct {
    ip_blkid: BlockIdData align(1),
    ip_posid: OffsetNumber align(1),
};
pub const ItemPointerData = struct_ItemPointerData;
pub const ItemPointer = [*c]ItemPointerData;
pub extern fn ItemPointerEquals(pointer1: ItemPointer, pointer2: ItemPointer) bool;
pub extern fn ItemPointerCompare(arg1: ItemPointer, arg2: ItemPointer) int32;
pub extern fn ItemPointerInc(pointer: ItemPointer) void;
pub extern fn ItemPointerDec(pointer: ItemPointer) void;
const union_unnamed_12 = extern union {
    t_cid: CommandId,
    t_xvac: TransactionId,
};
pub const struct_HeapTupleFields = extern struct {
    t_xmin: TransactionId,
    t_xmax: TransactionId,
    t_field3: union_unnamed_12,
};
pub const HeapTupleFields = struct_HeapTupleFields;
pub const struct_DatumTupleFields = extern struct {
    datum_len_: int32,
    datum_typmod: int32,
    datum_typeid: Oid,
};
pub const DatumTupleFields = struct_DatumTupleFields;
const union_unnamed_11 = extern union {
    t_heap: HeapTupleFields,
    t_datum: DatumTupleFields,
};
pub const struct_HeapTupleHeaderData = extern struct {
    t_choice: union_unnamed_11 align(4),
    t_ctid: ItemPointerData,
    t_infomask2: uint16,
    t_infomask: uint16,
    t_hoff: uint8,
    pub fn t_bits(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), bits8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), bits8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(bits8), @ptrCast(Intermediate, self) + 23));
    }
};
pub const HeapTupleHeaderData = struct_HeapTupleHeaderData;
pub const HeapTupleHeader = [*c]HeapTupleHeaderData;
pub const struct_MinimalTupleData = extern struct {
    t_len: uint32 align(4),
    mt_padding: [6]u8,
    t_infomask2: uint16,
    t_infomask: uint16,
    t_hoff: uint8,
    pub fn t_bits(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), bits8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), bits8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(bits8), @ptrCast(Intermediate, self) + 15));
    }
};
pub const MinimalTupleData = struct_MinimalTupleData;
pub const MinimalTuple = [*c]MinimalTupleData;
pub const struct_HeapTupleData = extern struct {
    t_len: uint32,
    t_self: ItemPointerData,
    t_tableOid: Oid,
    t_data: HeapTupleHeader,
};
pub const HeapTupleData = struct_HeapTupleData;
pub const HeapTuple = [*c]HeapTupleData;
pub extern fn HeapTupleHeaderGetCmin(tup: HeapTupleHeader) CommandId;
pub extern fn HeapTupleHeaderGetCmax(tup: HeapTupleHeader) CommandId;
pub extern fn HeapTupleHeaderAdjustCmax(tup: HeapTupleHeader, cmax: [*c]CommandId, iscombo: [*c]bool) void;
pub extern fn HeapTupleGetUpdateXid(tuple: HeapTupleHeader) TransactionId;
pub const struct_flock = extern struct {
    l_type: c_short,
    l_whence: c_short,
    l_start: __off_t,
    l_len: __off_t,
    l_pid: __pid_t,
};
pub const struct_stat = extern struct {
    st_dev: __dev_t,
    st_ino: __ino_t,
    st_nlink: __nlink_t,
    st_mode: __mode_t,
    st_uid: __uid_t,
    st_gid: __gid_t,
    __pad0: c_int,
    st_rdev: __dev_t,
    st_size: __off_t,
    st_blksize: __blksize_t,
    st_blocks: __blkcnt_t,
    st_atim: struct_timespec,
    st_mtim: struct_timespec,
    st_ctim: struct_timespec,
    __glibc_reserved: [3]__syscall_slong_t,
};
pub extern fn fcntl(__fd: c_int, __cmd: c_int, ...) c_int;
pub extern fn open(__file: [*c]const u8, __oflag: c_int, ...) c_int;
pub extern fn openat(__fd: c_int, __file: [*c]const u8, __oflag: c_int, ...) c_int;
pub extern fn creat(__file: [*c]const u8, __mode: mode_t) c_int;
pub extern fn lockf(__fd: c_int, __cmd: c_int, __len: off_t) c_int;
pub extern fn posix_fadvise(__fd: c_int, __offset: off_t, __len: off_t, __advise: c_int) c_int;
pub extern fn posix_fallocate(__fd: c_int, __offset: off_t, __len: off_t) c_int;
pub const XLogRecPtr = uint64;
pub const XLogSegNo = uint64;
pub const TimeLineID = uint32;
pub const RepOriginId = uint16;
pub const struct_FullTransactionId = extern struct {
    value: uint64,
};
pub const FullTransactionId = struct_FullTransactionId;
pub fn FullTransactionIdFromEpochAndXid(arg_epoch: uint32, arg_xid: TransactionId) callconv(.C) FullTransactionId {
    var epoch = arg_epoch;
    var xid = arg_xid;
    var result: FullTransactionId = undefined;
    result.value = (@bitCast(uint64, @as(c_ulong, epoch)) << @intCast(@import("std").math.Log2Int(uint64), 32)) | @bitCast(uint64, @as(c_ulong, xid));
    return result;
}
pub fn FullTransactionIdFromU64(arg_value: uint64) callconv(.C) FullTransactionId {
    var value = arg_value;
    var result: FullTransactionId = undefined;
    result.value = value;
    return result;
}
pub fn FullTransactionIdRetreat(arg_dest: [*c]FullTransactionId) callconv(.C) void {
    var dest = arg_dest;
    dest.*.value -%= 1;
    if (dest.*.value < FullTransactionIdFromEpochAndXid(@bitCast(uint32, @as(c_int, 0)), @bitCast(TransactionId, @as(c_int, 3))).value) return;
    while (@bitCast(uint32, @truncate(c_uint, dest.*.value)) < @bitCast(TransactionId, @as(c_int, 3))) {
        dest.*.value -%= 1;
    }
}
pub fn FullTransactionIdAdvance(arg_dest: [*c]FullTransactionId) callconv(.C) void {
    var dest = arg_dest;
    dest.*.value +%= 1;
    if (dest.*.value < FullTransactionIdFromEpochAndXid(@bitCast(uint32, @as(c_int, 0)), @bitCast(TransactionId, @as(c_int, 3))).value) return;
    while (@bitCast(uint32, @truncate(c_uint, dest.*.value)) < @bitCast(TransactionId, @as(c_int, 3))) {
        dest.*.value +%= 1;
    }
}
pub const struct_VariableCacheData = extern struct {
    nextOid: Oid,
    oidCount: uint32,
    nextXid: FullTransactionId,
    oldestXid: TransactionId,
    xidVacLimit: TransactionId,
    xidWarnLimit: TransactionId,
    xidStopLimit: TransactionId,
    xidWrapLimit: TransactionId,
    oldestXidDB: Oid,
    oldestCommitTsXid: TransactionId,
    newestCommitTsXid: TransactionId,
    latestCompletedXid: FullTransactionId,
    xactCompletionCount: uint64,
    oldestClogXid: TransactionId,
};
pub const VariableCacheData = struct_VariableCacheData;
pub const VariableCache = [*c]VariableCacheData;
pub extern fn TransactionStartedDuringRecovery() bool;
pub extern var ShmemVariableCache: VariableCache;
pub extern fn TransactionIdDidCommit(transactionId: TransactionId) bool;
pub extern fn TransactionIdDidAbort(transactionId: TransactionId) bool;
pub extern fn TransactionIdCommitTree(xid: TransactionId, nxids: c_int, xids: [*c]TransactionId) void;
pub extern fn TransactionIdAsyncCommitTree(xid: TransactionId, nxids: c_int, xids: [*c]TransactionId, lsn: XLogRecPtr) void;
pub extern fn TransactionIdAbortTree(xid: TransactionId, nxids: c_int, xids: [*c]TransactionId) void;
pub extern fn TransactionIdPrecedes(id1: TransactionId, id2: TransactionId) bool;
pub extern fn TransactionIdPrecedesOrEquals(id1: TransactionId, id2: TransactionId) bool;
pub extern fn TransactionIdFollows(id1: TransactionId, id2: TransactionId) bool;
pub extern fn TransactionIdFollowsOrEquals(id1: TransactionId, id2: TransactionId) bool;
pub extern fn TransactionIdLatest(mainxid: TransactionId, nxids: c_int, xids: [*c]const TransactionId) TransactionId;
pub extern fn TransactionIdGetCommitLSN(xid: TransactionId) XLogRecPtr;
pub extern fn GetNewTransactionId(isSubXact: bool) FullTransactionId;
pub extern fn AdvanceNextFullTransactionIdPastXid(xid: TransactionId) void;
pub extern fn ReadNextFullTransactionId() FullTransactionId;
pub extern fn SetTransactionIdLimit(oldest_datfrozenxid: TransactionId, oldest_datoid: Oid) void;
pub extern fn AdvanceOldestClogXid(oldest_datfrozenxid: TransactionId) void;
pub extern fn ForceTransactionIdLimitUpdate() bool;
pub extern fn GetNewObjectId() Oid;
pub extern fn StopGeneratingPinnedObjectIds() void;
pub fn ReadNextTransactionId() callconv(.C) TransactionId {
    return @bitCast(uint32, @truncate(c_uint, ReadNextFullTransactionId().value));
}
pub fn TransactionIdRetreatedBy(arg_xid: TransactionId, arg_amount: uint32) callconv(.C) TransactionId {
    var xid = arg_xid;
    var amount = arg_amount;
    xid -%= amount;
    while (xid < @bitCast(TransactionId, @as(c_int, 3))) {
        xid -%= 1;
    }
    return xid;
}
pub fn TransactionIdOlder(arg_a: TransactionId, arg_b: TransactionId) callconv(.C) TransactionId {
    var a = arg_a;
    var b = arg_b;
    if (!(a != @bitCast(TransactionId, @as(c_int, 0)))) return b;
    if (!(b != @bitCast(TransactionId, @as(c_int, 0)))) return a;
    if (TransactionIdPrecedes(a, b)) return a;
    return b;
}
pub fn NormalTransactionIdOlder(arg_a: TransactionId, arg_b: TransactionId) callconv(.C) TransactionId {
    var a = arg_a;
    var b = arg_b;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    if ((blk: {
        _ = @as(c_int, 1);
        break :blk @bitCast(int32, a -% b) < @as(c_int, 0);
    }) != 0) return a;
    return b;
}
pub fn FullTransactionIdNewer(arg_a: FullTransactionId, arg_b: FullTransactionId) callconv(.C) FullTransactionId {
    var a = arg_a;
    var b = arg_b;
    if (!(@bitCast(uint32, @truncate(c_uint, a.value)) != @bitCast(TransactionId, @as(c_int, 0)))) return b;
    if (!(@bitCast(uint32, @truncate(c_uint, b.value)) != @bitCast(TransactionId, @as(c_int, 0)))) return a;
    if (a.value > b.value) return a;
    return b;
}
pub const Item = Pointer;
pub const Page = Pointer;
pub const LocationIndex = uint16;
pub const PageXLogRecPtr = extern struct {
    xlogid: uint32,
    xrecoff: uint32,
};
pub const struct_PageHeaderData = extern struct {
    pd_lsn: PageXLogRecPtr align(4),
    pd_checksum: uint16,
    pd_flags: uint16,
    pd_lower: LocationIndex,
    pd_upper: LocationIndex,
    pd_special: LocationIndex,
    pd_pagesize_version: uint16,
    pd_prune_xid: TransactionId,
    pub fn pd_linp(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ItemIdData) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ItemIdData);
        return @ptrCast(ReturnType, @alignCast(@alignOf(ItemIdData), @ptrCast(Intermediate, self) + 24));
    }
};
pub const PageHeaderData = struct_PageHeaderData;
pub const PageHeader = [*c]PageHeaderData;
pub fn PageValidateSpecialPointer(arg_page: Page) callconv(.C) bool {
    var page = arg_page;
    _ = @TypeOf(page);
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    return @as(c_int, 1) != 0;
} // /home/sarna/repo/pgturso/postgres/src/include/c.h:944:2: warning: ignoring StaticAssert declaration
pub extern fn PageInit(page: Page, pageSize: Size, specialSize: Size) void;
pub extern fn PageIsVerifiedExtended(page: Page, blkno: BlockNumber, flags: c_int) bool;
pub extern fn PageAddItemExtended(page: Page, item: Item, size: Size, offsetNumber: OffsetNumber, flags: c_int) OffsetNumber;
pub extern fn PageGetTempPage(page: Page) Page;
pub extern fn PageGetTempPageCopy(page: Page) Page;
pub extern fn PageGetTempPageCopySpecial(page: Page) Page;
pub extern fn PageRestoreTempPage(tempPage: Page, oldPage: Page) void;
pub extern fn PageRepairFragmentation(page: Page) void;
pub extern fn PageTruncateLinePointerArray(page: Page) void;
pub extern fn PageGetFreeSpace(page: Page) Size;
pub extern fn PageGetFreeSpaceForMultipleTuples(page: Page, ntups: c_int) Size;
pub extern fn PageGetExactFreeSpace(page: Page) Size;
pub extern fn PageGetHeapFreeSpace(page: Page) Size;
pub extern fn PageIndexTupleDelete(page: Page, offset: OffsetNumber) void;
pub extern fn PageIndexMultiDelete(page: Page, itemnos: [*c]OffsetNumber, nitems: c_int) void;
pub extern fn PageIndexTupleDeleteNoCompact(page: Page, offset: OffsetNumber) void;
pub extern fn PageIndexTupleOverwrite(page: Page, offnum: OffsetNumber, newtup: Item, newsize: Size) bool;
pub extern fn PageSetChecksumCopy(page: Page, blkno: BlockNumber) [*c]u8;
pub extern fn PageSetChecksumInplace(page: Page, blkno: BlockNumber) void;
pub extern fn heap_compute_data_size(tupleDesc: TupleDesc, values: [*c]Datum, isnull: [*c]bool) Size;
pub extern fn heap_fill_tuple(tupleDesc: TupleDesc, values: [*c]Datum, isnull: [*c]bool, data: [*c]u8, data_size: Size, infomask: [*c]uint16, bit: [*c]bits8) void;
pub extern fn heap_attisnull(tup: HeapTuple, attnum: c_int, tupleDesc: TupleDesc) bool;
pub extern fn nocachegetattr(tup: HeapTuple, attnum: c_int, att: TupleDesc) Datum;
pub extern fn heap_getsysattr(tup: HeapTuple, attnum: c_int, tupleDesc: TupleDesc, isnull: [*c]bool) Datum;
pub extern fn getmissingattr(tupleDesc: TupleDesc, attnum: c_int, isnull: [*c]bool) Datum;
pub extern fn heap_copytuple(tuple: HeapTuple) HeapTuple;
pub extern fn heap_copytuple_with_tuple(src: HeapTuple, dest: HeapTuple) void;
pub extern fn heap_copy_tuple_as_datum(tuple: HeapTuple, tupleDesc: TupleDesc) Datum;
pub extern fn heap_form_tuple(tupleDescriptor: TupleDesc, values: [*c]Datum, isnull: [*c]bool) HeapTuple;
pub extern fn heap_modify_tuple(tuple: HeapTuple, tupleDesc: TupleDesc, replValues: [*c]Datum, replIsnull: [*c]bool, doReplace: [*c]bool) HeapTuple;
pub extern fn heap_modify_tuple_by_cols(tuple: HeapTuple, tupleDesc: TupleDesc, nCols: c_int, replCols: [*c]c_int, replValues: [*c]Datum, replIsnull: [*c]bool) HeapTuple;
pub extern fn heap_deform_tuple(tuple: HeapTuple, tupleDesc: TupleDesc, values: [*c]Datum, isnull: [*c]bool) void;
pub extern fn heap_freetuple(htup: HeapTuple) void;
pub extern fn heap_form_minimal_tuple(tupleDescriptor: TupleDesc, values: [*c]Datum, isnull: [*c]bool) MinimalTuple;
pub extern fn heap_free_minimal_tuple(mtup: MinimalTuple) void;
pub extern fn heap_copy_minimal_tuple(mtup: MinimalTuple) MinimalTuple;
pub extern fn heap_tuple_from_minimal_tuple(mtup: MinimalTuple) HeapTuple;
pub extern fn minimal_tuple_from_heap_tuple(htup: HeapTuple) MinimalTuple;
pub extern fn varsize_any(p: ?*anyopaque) usize;
pub extern fn heap_expand_tuple(sourceTuple: HeapTuple, tupleDesc: TupleDesc) HeapTuple;
pub extern fn minimal_expand_tuple(sourceTuple: HeapTuple, tupleDesc: TupleDesc) MinimalTuple;
pub fn fastgetattr(arg_tup: HeapTuple, arg_attnum: c_int, arg_tupleDesc: TupleDesc, arg_isnull: [*c]bool) callconv(.C) Datum {
    var tup = arg_tup;
    var attnum = arg_attnum;
    var tupleDesc = arg_tupleDesc;
    var isnull = arg_isnull;
    _ = @as(c_int, 1);
    isnull.* = @as(c_int, 0) != 0;
    if (!((@bitCast(c_int, @as(c_uint, tup.*.t_data.*.t_infomask)) & @as(c_int, 1)) != 0)) {
        var att: Form_pg_attribute = undefined;
        att = &tupleDesc.*.attrs()[@intCast(c_uint, attnum - @as(c_int, 1))];
        if (att.*.attcacheoff >= @as(c_int, 0)) return if (@as(c_int, @intFromBool(att.*.attbyval)) != 0) if (@bitCast(c_int, @as(c_int, att.*.attlen)) == @bitCast(c_int, @truncate(c_uint, @sizeOf(Datum)))) @ptrCast([*c]Datum, @alignCast(@import("std").meta.alignment([*c]Datum), (@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), tup.*.t_data)) + @bitCast(usize, @intCast(isize, @bitCast(c_int, @as(c_uint, tup.*.t_data.*.t_hoff))))) + @bitCast(usize, @intCast(isize, att.*.attcacheoff)))).* else if (@bitCast(c_int, @as(c_int, att.*.attlen)) == @bitCast(c_int, @truncate(c_uint, @sizeOf(int32)))) @bitCast(Datum, @as(c_long, @ptrCast([*c]int32, @alignCast(@import("std").meta.alignment([*c]int32), (@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), tup.*.t_data)) + @bitCast(usize, @intCast(isize, @bitCast(c_int, @as(c_uint, tup.*.t_data.*.t_hoff))))) + @bitCast(usize, @intCast(isize, att.*.attcacheoff)))).*)) else if (@bitCast(c_int, @as(c_int, att.*.attlen)) == @bitCast(c_int, @truncate(c_uint, @sizeOf(int16)))) @bitCast(Datum, @as(c_long, @ptrCast([*c]int16, @alignCast(@import("std").meta.alignment([*c]int16), (@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), tup.*.t_data)) + @bitCast(usize, @intCast(isize, @bitCast(c_int, @as(c_uint, tup.*.t_data.*.t_hoff))))) + @bitCast(usize, @intCast(isize, att.*.attcacheoff)))).*)) else blk: {
            _ = @as(c_int, 1);
            break :blk @bitCast(Datum, @as(c_ulong, ((@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), tup.*.t_data)) + @bitCast(usize, @intCast(isize, @bitCast(c_int, @as(c_uint, tup.*.t_data.*.t_hoff))))) + @bitCast(usize, @intCast(isize, att.*.attcacheoff))).*));
        } else @intCast(Datum, @intFromPtr((@ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), tup.*.t_data)) + @bitCast(usize, @intCast(isize, @bitCast(c_int, @as(c_uint, tup.*.t_data.*.t_hoff))))) + @bitCast(usize, @intCast(isize, att.*.attcacheoff)))) else return nocachegetattr(tup, attnum, tupleDesc);
    } else {
        if (!((@bitCast(c_int, @as(c_uint, tup.*.t_data.*.t_bits()[@intCast(c_uint, (attnum - @as(c_int, 1)) >> @intCast(@import("std").math.Log2Int(c_int), 3))])) & (@as(c_int, 1) << @intCast(@import("std").math.Log2Int(c_int), (attnum - @as(c_int, 1)) & @as(c_int, 7)))) != 0)) {
            isnull.* = @as(c_int, 1) != 0;
            return @intCast(Datum, @intFromPtr(@ptrFromInt(?*anyopaque, @as(c_int, 0))));
        } else return nocachegetattr(tup, attnum, tupleDesc);
    }
    return @import("std").mem.zeroes(Datum);
}
pub fn heap_getattr(arg_tup: HeapTuple, arg_attnum: c_int, arg_tupleDesc: TupleDesc, arg_isnull: [*c]bool) callconv(.C) Datum {
    var tup = arg_tup;
    var attnum = arg_attnum;
    var tupleDesc = arg_tupleDesc;
    var isnull = arg_isnull;
    if (attnum > @as(c_int, 0)) {
        if (attnum > (@bitCast(c_int, @as(c_uint, tup.*.t_data.*.t_infomask2)) & @as(c_int, 2047))) return getmissingattr(tupleDesc, attnum, isnull) else return fastgetattr(tup, attnum, tupleDesc, isnull);
    } else return heap_getsysattr(tup, attnum, tupleDesc, isnull);
    return @import("std").mem.zeroes(Datum);
}
pub const Buffer = c_int;
pub const struct_BufferAccessStrategyData = opaque {};
pub const BufferAccessStrategy = ?*struct_BufferAccessStrategyData;
pub const TupleTableSlotOps = struct_TupleTableSlotOps;
pub const struct_TupleTableSlot = extern struct {
    type: NodeTag,
    tts_flags: uint16,
    tts_nvalid: AttrNumber,
    tts_ops: [*c]const TupleTableSlotOps,
    tts_tupleDescriptor: TupleDesc,
    tts_values: [*c]Datum,
    tts_isnull: [*c]bool,
    tts_mcxt: MemoryContext,
    tts_tid: ItemPointerData,
    tts_tableOid: Oid,
};
pub const TupleTableSlot = struct_TupleTableSlot;
pub const struct_TupleTableSlotOps = extern struct {
    base_slot_size: usize,
    init: ?*const fn ([*c]TupleTableSlot) callconv(.C) void,
    release: ?*const fn ([*c]TupleTableSlot) callconv(.C) void,
    clear: ?*const fn ([*c]TupleTableSlot) callconv(.C) void,
    getsomeattrs: ?*const fn ([*c]TupleTableSlot, c_int) callconv(.C) void,
    getsysattr: ?*const fn ([*c]TupleTableSlot, c_int, [*c]bool) callconv(.C) Datum,
    materialize: ?*const fn ([*c]TupleTableSlot) callconv(.C) void,
    copyslot: ?*const fn ([*c]TupleTableSlot, [*c]TupleTableSlot) callconv(.C) void,
    get_heap_tuple: ?*const fn ([*c]TupleTableSlot) callconv(.C) HeapTuple,
    get_minimal_tuple: ?*const fn ([*c]TupleTableSlot) callconv(.C) MinimalTuple,
    copy_heap_tuple: ?*const fn ([*c]TupleTableSlot) callconv(.C) HeapTuple,
    copy_minimal_tuple: ?*const fn ([*c]TupleTableSlot) callconv(.C) MinimalTuple,
};
pub extern const TTSOpsVirtual: TupleTableSlotOps;
pub extern const TTSOpsHeapTuple: TupleTableSlotOps;
pub extern const TTSOpsMinimalTuple: TupleTableSlotOps;
pub extern const TTSOpsBufferHeapTuple: TupleTableSlotOps;
pub const struct_VirtualTupleTableSlot = extern struct {
    base: TupleTableSlot,
    data: [*c]u8,
};
pub const VirtualTupleTableSlot = struct_VirtualTupleTableSlot;
pub const struct_HeapTupleTableSlot = extern struct {
    base: TupleTableSlot,
    tuple: HeapTuple,
    off: uint32,
    tupdata: HeapTupleData,
};
pub const HeapTupleTableSlot = struct_HeapTupleTableSlot;
pub const struct_BufferHeapTupleTableSlot = extern struct {
    base: HeapTupleTableSlot,
    buffer: Buffer,
};
pub const BufferHeapTupleTableSlot = struct_BufferHeapTupleTableSlot;
pub const struct_MinimalTupleTableSlot = extern struct {
    base: TupleTableSlot,
    tuple: HeapTuple,
    mintuple: MinimalTuple,
    minhdr: HeapTupleData,
    off: uint32,
};
pub const MinimalTupleTableSlot = struct_MinimalTupleTableSlot;
pub extern fn MakeTupleTableSlot(tupleDesc: TupleDesc, tts_ops: [*c]const TupleTableSlotOps) [*c]TupleTableSlot;
pub extern fn ExecAllocTableSlot(tupleTable: [*c][*c]List, desc: TupleDesc, tts_ops: [*c]const TupleTableSlotOps) [*c]TupleTableSlot;
pub extern fn ExecResetTupleTable(tupleTable: [*c]List, shouldFree: bool) void;
pub extern fn MakeSingleTupleTableSlot(tupdesc: TupleDesc, tts_ops: [*c]const TupleTableSlotOps) [*c]TupleTableSlot;
pub extern fn ExecDropSingleTupleTableSlot(slot: [*c]TupleTableSlot) void;
pub extern fn ExecSetSlotDescriptor(slot: [*c]TupleTableSlot, tupdesc: TupleDesc) void;
pub extern fn ExecStoreHeapTuple(tuple: HeapTuple, slot: [*c]TupleTableSlot, shouldFree: bool) [*c]TupleTableSlot;
pub extern fn ExecForceStoreHeapTuple(tuple: HeapTuple, slot: [*c]TupleTableSlot, shouldFree: bool) void;
pub extern fn ExecStoreBufferHeapTuple(tuple: HeapTuple, slot: [*c]TupleTableSlot, buffer: Buffer) [*c]TupleTableSlot;
pub extern fn ExecStorePinnedBufferHeapTuple(tuple: HeapTuple, slot: [*c]TupleTableSlot, buffer: Buffer) [*c]TupleTableSlot;
pub extern fn ExecStoreMinimalTuple(mtup: MinimalTuple, slot: [*c]TupleTableSlot, shouldFree: bool) [*c]TupleTableSlot;
pub extern fn ExecForceStoreMinimalTuple(mtup: MinimalTuple, slot: [*c]TupleTableSlot, shouldFree: bool) void;
pub extern fn ExecStoreVirtualTuple(slot: [*c]TupleTableSlot) [*c]TupleTableSlot;
pub extern fn ExecStoreAllNullTuple(slot: [*c]TupleTableSlot) [*c]TupleTableSlot;
pub extern fn ExecStoreHeapTupleDatum(data: Datum, slot: [*c]TupleTableSlot) void;
pub extern fn ExecFetchSlotHeapTuple(slot: [*c]TupleTableSlot, materialize: bool, shouldFree: [*c]bool) HeapTuple;
pub extern fn ExecFetchSlotMinimalTuple(slot: [*c]TupleTableSlot, shouldFree: [*c]bool) MinimalTuple;
pub extern fn ExecFetchSlotHeapTupleDatum(slot: [*c]TupleTableSlot) Datum;
pub extern fn slot_getmissingattrs(slot: [*c]TupleTableSlot, startAttNum: c_int, lastAttNum: c_int) void;
pub extern fn slot_getsomeattrs_int(slot: [*c]TupleTableSlot, attnum: c_int) void;
pub fn slot_getsomeattrs(arg_slot: [*c]TupleTableSlot, arg_attnum: c_int) callconv(.C) void {
    var slot = arg_slot;
    var attnum = arg_attnum;
    if (@bitCast(c_int, @as(c_int, slot.*.tts_nvalid)) < attnum) {
        slot_getsomeattrs_int(slot, attnum);
    }
}
pub fn slot_getallattrs(arg_slot: [*c]TupleTableSlot) callconv(.C) void {
    var slot = arg_slot;
    slot_getsomeattrs(slot, slot.*.tts_tupleDescriptor.*.natts);
}
pub fn slot_attisnull(arg_slot: [*c]TupleTableSlot, arg_attnum: c_int) callconv(.C) bool {
    var slot = arg_slot;
    var attnum = arg_attnum;
    _ = @as(c_int, 1);
    if (attnum > @bitCast(c_int, @as(c_int, slot.*.tts_nvalid))) {
        slot_getsomeattrs(slot, attnum);
    }
    return (blk: {
        const tmp = attnum - @as(c_int, 1);
        if (tmp >= 0) break :blk slot.*.tts_isnull + @intCast(usize, tmp) else break :blk slot.*.tts_isnull - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).*;
}
pub fn slot_getattr(arg_slot: [*c]TupleTableSlot, arg_attnum: c_int, arg_isnull: [*c]bool) callconv(.C) Datum {
    var slot = arg_slot;
    var attnum = arg_attnum;
    var isnull = arg_isnull;
    _ = @as(c_int, 1);
    if (attnum > @bitCast(c_int, @as(c_int, slot.*.tts_nvalid))) {
        slot_getsomeattrs(slot, attnum);
    }
    isnull.* = (blk: {
        const tmp = attnum - @as(c_int, 1);
        if (tmp >= 0) break :blk slot.*.tts_isnull + @intCast(usize, tmp) else break :blk slot.*.tts_isnull - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).*;
    return (blk: {
        const tmp = attnum - @as(c_int, 1);
        if (tmp >= 0) break :blk slot.*.tts_values + @intCast(usize, tmp) else break :blk slot.*.tts_values - ~@bitCast(usize, @intCast(isize, tmp) +% -1);
    }).*;
}
pub fn slot_getsysattr(arg_slot: [*c]TupleTableSlot, arg_attnum: c_int, arg_isnull: [*c]bool) callconv(.C) Datum {
    var slot = arg_slot;
    var attnum = arg_attnum;
    var isnull = arg_isnull;
    _ = @as(c_int, 1);
    if (attnum == -@as(c_int, 6)) {
        isnull.* = @as(c_int, 0) != 0;
        return @bitCast(Datum, @as(c_ulong, slot.*.tts_tableOid));
    } else if (attnum == -@as(c_int, 1)) {
        isnull.* = @as(c_int, 0) != 0;
        return @intCast(Datum, @intFromPtr(&slot.*.tts_tid));
    }
    return slot.*.tts_ops.*.getsysattr.?(slot, attnum, isnull);
}
pub fn ExecClearTuple(arg_slot: [*c]TupleTableSlot) callconv(.C) [*c]TupleTableSlot {
    var slot = arg_slot;
    slot.*.tts_ops.*.clear.?(slot);
    return slot;
}
pub fn ExecMaterializeSlot(arg_slot: [*c]TupleTableSlot) callconv(.C) void {
    var slot = arg_slot;
    slot.*.tts_ops.*.materialize.?(slot);
}
pub fn ExecCopySlotHeapTuple(arg_slot: [*c]TupleTableSlot) callconv(.C) HeapTuple {
    var slot = arg_slot;
    _ = @as(c_int, 1);
    return slot.*.tts_ops.*.copy_heap_tuple.?(slot);
}
pub fn ExecCopySlotMinimalTuple(arg_slot: [*c]TupleTableSlot) callconv(.C) MinimalTuple {
    var slot = arg_slot;
    return slot.*.tts_ops.*.copy_minimal_tuple.?(slot);
}
pub fn ExecCopySlot(arg_dstslot: [*c]TupleTableSlot, arg_srcslot: [*c]TupleTableSlot) callconv(.C) [*c]TupleTableSlot {
    var dstslot = arg_dstslot;
    var srcslot = arg_srcslot;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    dstslot.*.tts_ops.*.copyslot.?(dstslot, srcslot);
    return dstslot;
}
pub const signedbitmapword = int64;
pub const Bitmapset = struct_Bitmapset;
pub const BMS_EQUAL: c_int = 0;
pub const BMS_SUBSET1: c_int = 1;
pub const BMS_SUBSET2: c_int = 2;
pub const BMS_DIFFERENT: c_int = 3;
pub const BMS_Comparison = c_uint;
pub const BMS_EMPTY_SET: c_int = 0;
pub const BMS_SINGLETON: c_int = 1;
pub const BMS_MULTIPLE: c_int = 2;
pub const BMS_Membership = c_uint;
pub extern fn bms_copy(a: [*c]const Bitmapset) [*c]Bitmapset;
pub extern fn bms_equal(a: [*c]const Bitmapset, b: [*c]const Bitmapset) bool;
pub extern fn bms_compare(a: [*c]const Bitmapset, b: [*c]const Bitmapset) c_int;
pub extern fn bms_make_singleton(x: c_int) [*c]Bitmapset;
pub extern fn bms_free(a: [*c]Bitmapset) void;
pub extern fn bms_union(a: [*c]const Bitmapset, b: [*c]const Bitmapset) [*c]Bitmapset;
pub extern fn bms_intersect(a: [*c]const Bitmapset, b: [*c]const Bitmapset) [*c]Bitmapset;
pub extern fn bms_difference(a: [*c]const Bitmapset, b: [*c]const Bitmapset) [*c]Bitmapset;
pub extern fn bms_is_subset(a: [*c]const Bitmapset, b: [*c]const Bitmapset) bool;
pub extern fn bms_subset_compare(a: [*c]const Bitmapset, b: [*c]const Bitmapset) BMS_Comparison;
pub extern fn bms_is_member(x: c_int, a: [*c]const Bitmapset) bool;
pub extern fn bms_member_index(a: [*c]Bitmapset, x: c_int) c_int;
pub extern fn bms_overlap(a: [*c]const Bitmapset, b: [*c]const Bitmapset) bool;
pub extern fn bms_overlap_list(a: [*c]const Bitmapset, b: [*c]const struct_List) bool;
pub extern fn bms_nonempty_difference(a: [*c]const Bitmapset, b: [*c]const Bitmapset) bool;
pub extern fn bms_singleton_member(a: [*c]const Bitmapset) c_int;
pub extern fn bms_get_singleton_member(a: [*c]const Bitmapset, member: [*c]c_int) bool;
pub extern fn bms_num_members(a: [*c]const Bitmapset) c_int;
pub extern fn bms_membership(a: [*c]const Bitmapset) BMS_Membership;
pub extern fn bms_is_empty(a: [*c]const Bitmapset) bool;
pub extern fn bms_add_member(a: [*c]Bitmapset, x: c_int) [*c]Bitmapset;
pub extern fn bms_del_member(a: [*c]Bitmapset, x: c_int) [*c]Bitmapset;
pub extern fn bms_add_members(a: [*c]Bitmapset, b: [*c]const Bitmapset) [*c]Bitmapset;
pub extern fn bms_add_range(a: [*c]Bitmapset, lower: c_int, upper: c_int) [*c]Bitmapset;
pub extern fn bms_int_members(a: [*c]Bitmapset, b: [*c]const Bitmapset) [*c]Bitmapset;
pub extern fn bms_del_members(a: [*c]Bitmapset, b: [*c]const Bitmapset) [*c]Bitmapset;
pub extern fn bms_join(a: [*c]Bitmapset, b: [*c]Bitmapset) [*c]Bitmapset;
pub extern fn bms_first_member(a: [*c]Bitmapset) c_int;
pub extern fn bms_next_member(a: [*c]const Bitmapset, prevbit: c_int) c_int;
pub extern fn bms_prev_member(a: [*c]const Bitmapset, prevbit: c_int) c_int;
pub extern fn bms_hash_value(a: [*c]const Bitmapset) uint32;
pub extern fn bitmap_hash(key: ?*const anyopaque, keysize: Size) uint32;
pub extern fn bitmap_match(key1: ?*const anyopaque, key2: ?*const anyopaque, keysize: Size) c_int;
pub const struct_TupleConversionMap = extern struct {
    indesc: TupleDesc,
    outdesc: TupleDesc,
    attrMap: [*c]AttrMap,
    invalues: [*c]Datum,
    inisnull: [*c]bool,
    outvalues: [*c]Datum,
    outisnull: [*c]bool,
};
pub const TupleConversionMap = struct_TupleConversionMap;
pub extern fn convert_tuples_by_position(indesc: TupleDesc, outdesc: TupleDesc, msg: [*c]const u8) [*c]TupleConversionMap;
pub extern fn convert_tuples_by_name(indesc: TupleDesc, outdesc: TupleDesc) [*c]TupleConversionMap;
pub extern fn execute_attr_map_tuple(tuple: HeapTuple, map: [*c]TupleConversionMap) HeapTuple;
pub extern fn execute_attr_map_slot(attrMap: [*c]AttrMap, in_slot: [*c]TupleTableSlot, out_slot: [*c]TupleTableSlot) [*c]TupleTableSlot;
pub extern fn execute_attr_map_cols(attrMap: [*c]AttrMap, inbitmap: [*c]Bitmapset) [*c]Bitmapset;
pub extern fn free_conversion_map(map: [*c]TupleConversionMap) void;
pub const struct_tm = extern struct {
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: c_int,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
    tm_wday: c_int,
    tm_yday: c_int,
    tm_isdst: c_int,
    tm_gmtoff: c_long,
    tm_zone: [*c]const u8,
};
pub const struct_itimerspec = extern struct {
    it_interval: struct_timespec,
    it_value: struct_timespec,
};
pub const struct_sigevent = opaque {};
pub extern fn clock() clock_t;
pub extern fn time(__timer: [*c]time_t) time_t;
pub extern fn difftime(__time1: time_t, __time0: time_t) f64;
pub extern fn mktime(__tp: [*c]struct_tm) time_t;
pub extern fn strftime(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm) usize;
pub extern fn strftime_l(noalias __s: [*c]u8, __maxsize: usize, noalias __format: [*c]const u8, noalias __tp: [*c]const struct_tm, __loc: locale_t) usize;
pub extern fn gmtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn localtime(__timer: [*c]const time_t) [*c]struct_tm;
pub extern fn gmtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn localtime_r(noalias __timer: [*c]const time_t, noalias __tp: [*c]struct_tm) [*c]struct_tm;
pub extern fn asctime(__tp: [*c]const struct_tm) [*c]u8;
pub extern fn ctime(__timer: [*c]const time_t) [*c]u8;
pub extern fn asctime_r(noalias __tp: [*c]const struct_tm, noalias __buf: [*c]u8) [*c]u8;
pub extern fn ctime_r(noalias __timer: [*c]const time_t, noalias __buf: [*c]u8) [*c]u8;
pub extern var __tzname: [2][*c]u8;
pub extern var __daylight: c_int;
pub extern var __timezone: c_long;
pub extern var tzname: [2][*c]u8;
pub extern fn tzset() void;
pub extern var daylight: c_int;
pub extern var timezone: c_long;
pub extern fn timegm(__tp: [*c]struct_tm) time_t;
pub extern fn timelocal(__tp: [*c]struct_tm) time_t;
pub extern fn dysize(__year: c_int) c_int;
pub extern fn nanosleep(__requested_time: [*c]const struct_timespec, __remaining: [*c]struct_timespec) c_int;
pub extern fn clock_getres(__clock_id: clockid_t, __res: [*c]struct_timespec) c_int;
pub extern fn clock_gettime(__clock_id: clockid_t, __tp: [*c]struct_timespec) c_int;
pub extern fn clock_settime(__clock_id: clockid_t, __tp: [*c]const struct_timespec) c_int;
pub extern fn clock_nanosleep(__clock_id: clockid_t, __flags: c_int, __req: [*c]const struct_timespec, __rem: [*c]struct_timespec) c_int;
pub extern fn clock_getcpuclockid(__pid: pid_t, __clock_id: [*c]clockid_t) c_int;
pub extern fn timer_create(__clock_id: clockid_t, noalias __evp: ?*struct_sigevent, noalias __timerid: [*c]timer_t) c_int;
pub extern fn timer_delete(__timerid: timer_t) c_int;
pub extern fn timer_settime(__timerid: timer_t, __flags: c_int, noalias __value: [*c]const struct_itimerspec, noalias __ovalue: [*c]struct_itimerspec) c_int;
pub extern fn timer_gettime(__timerid: timer_t, __value: [*c]struct_itimerspec) c_int;
pub extern fn timer_getoverrun(__timerid: timer_t) c_int;
pub extern fn timespec_get(__ts: [*c]struct_timespec, __base: c_int) c_int;
pub const instr_time = struct_timespec;
pub const struct_BufferUsage = extern struct {
    shared_blks_hit: int64,
    shared_blks_read: int64,
    shared_blks_dirtied: int64,
    shared_blks_written: int64,
    local_blks_hit: int64,
    local_blks_read: int64,
    local_blks_dirtied: int64,
    local_blks_written: int64,
    temp_blks_read: int64,
    temp_blks_written: int64,
    blk_read_time: instr_time,
    blk_write_time: instr_time,
    temp_blk_read_time: instr_time,
    temp_blk_write_time: instr_time,
};
pub const BufferUsage = struct_BufferUsage;
pub const struct_WalUsage = extern struct {
    wal_records: int64,
    wal_fpi: int64,
    wal_bytes: uint64,
};
pub const WalUsage = struct_WalUsage;
pub const INSTRUMENT_TIMER: c_int = 1;
pub const INSTRUMENT_BUFFERS: c_int = 2;
pub const INSTRUMENT_ROWS: c_int = 4;
pub const INSTRUMENT_WAL: c_int = 8;
pub const INSTRUMENT_ALL: c_int = 2147483647;
pub const enum_InstrumentOption = c_uint;
pub const InstrumentOption = enum_InstrumentOption;
pub const struct_Instrumentation = extern struct {
    need_timer: bool,
    need_bufusage: bool,
    need_walusage: bool,
    async_mode: bool,
    running: bool,
    starttime: instr_time,
    counter: instr_time,
    firsttuple: f64,
    tuplecount: f64,
    bufusage_start: BufferUsage,
    walusage_start: WalUsage,
    startup: f64,
    total: f64,
    ntuples: f64,
    ntuples2: f64,
    nloops: f64,
    nfiltered1: f64,
    nfiltered2: f64,
    bufusage: BufferUsage,
    walusage: WalUsage,
};
pub const Instrumentation = struct_Instrumentation;
pub const struct_WorkerInstrumentation = extern struct {
    num_workers: c_int align(8),
    pub fn instrument(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), Instrumentation) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), Instrumentation);
        return @ptrCast(ReturnType, @alignCast(@alignOf(Instrumentation), @ptrCast(Intermediate, self) + 8));
    }
};
pub const WorkerInstrumentation = struct_WorkerInstrumentation;
pub extern var pgBufferUsage: BufferUsage;
pub extern var pgWalUsage: WalUsage;
pub extern fn InstrAlloc(n: c_int, instrument_options: c_int, async_mode: bool) [*c]Instrumentation;
pub extern fn InstrInit(instr: [*c]Instrumentation, instrument_options: c_int) void;
pub extern fn InstrStartNode(instr: [*c]Instrumentation) void;
pub extern fn InstrStopNode(instr: [*c]Instrumentation, nTuples: f64) void;
pub extern fn InstrUpdateTupleCount(instr: [*c]Instrumentation, nTuples: f64) void;
pub extern fn InstrEndLoop(instr: [*c]Instrumentation) void;
pub extern fn InstrAggNode(dst: [*c]Instrumentation, add: [*c]Instrumentation) void;
pub extern fn InstrStartParallelQuery() void;
pub extern fn InstrEndParallelQuery(bufusage: [*c]BufferUsage, walusage: [*c]WalUsage) void;
pub extern fn InstrAccumParallelQuery(bufusage: [*c]BufferUsage, walusage: [*c]WalUsage) void;
pub extern fn BufferUsageAccumDiff(dst: [*c]BufferUsage, add: [*c]const BufferUsage, sub: [*c]const BufferUsage) void;
pub extern fn WalUsageAccumDiff(dst: [*c]WalUsage, add: [*c]const WalUsage, sub: [*c]const WalUsage) void;
pub const fmNodePtr = [*c]struct_Node;
pub const struct_Expr = extern struct {
    type: NodeTag,
};
pub const Expr = struct_Expr;
pub const struct_Aggref = extern struct {
    xpr: Expr,
    aggfnoid: Oid,
    aggtype: Oid,
    aggcollid: Oid,
    inputcollid: Oid,
    aggtranstype: Oid,
    aggargtypes: [*c]List,
    aggdirectargs: [*c]List,
    args: [*c]List,
    aggorder: [*c]List,
    aggdistinct: [*c]List,
    aggfilter: [*c]Expr,
    aggstar: bool,
    aggvariadic: bool,
    aggkind: u8,
    agglevelsup: Index,
    aggsplit: AggSplit,
    aggno: c_int,
    aggtransno: c_int,
    location: c_int,
};
pub const fmAggrefPtr = [*c]struct_Aggref;
pub const fmExprContextCallbackFunction = ?*const fn (Datum) callconv(.C) void;
pub const fmStringInfo = [*c]struct_StringInfoData;
pub const FunctionCallInfo = [*c]struct_FunctionCallInfoBaseData;
pub const PGFunction = ?*const fn (FunctionCallInfo) callconv(.C) Datum;
pub const struct_FmgrInfo = extern struct {
    fn_addr: PGFunction,
    fn_oid: Oid,
    fn_nargs: c_short,
    fn_strict: bool,
    fn_retset: bool,
    fn_stats: u8,
    fn_extra: ?*anyopaque,
    fn_mcxt: MemoryContext,
    fn_expr: fmNodePtr,
};
pub const FmgrInfo = struct_FmgrInfo;
pub const struct_FunctionCallInfoBaseData = extern struct {
    flinfo: [*c]FmgrInfo align(8),
    context: fmNodePtr,
    resultinfo: fmNodePtr,
    fncollation: Oid,
    isnull: bool,
    nargs: c_short,
    pub fn args(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), NullableDatum) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), NullableDatum);
        return @ptrCast(ReturnType, @alignCast(@alignOf(NullableDatum), @ptrCast(Intermediate, self) + 32));
    }
};
pub const FunctionCallInfoBaseData = struct_FunctionCallInfoBaseData;
pub extern fn fmgr_info(functionId: Oid, finfo: [*c]FmgrInfo) void;
pub extern fn fmgr_info_cxt(functionId: Oid, finfo: [*c]FmgrInfo, mcxt: MemoryContext) void;
pub extern fn fmgr_info_copy(dstinfo: [*c]FmgrInfo, srcinfo: [*c]FmgrInfo, destcxt: MemoryContext) void;
pub extern fn fmgr_symbol(functionId: Oid, mod: [*c][*c]u8, @"fn": [*c][*c]u8) void;
pub extern fn pg_detoast_datum(datum: [*c]struct_varlena) [*c]struct_varlena;
pub extern fn pg_detoast_datum_copy(datum: [*c]struct_varlena) [*c]struct_varlena;
pub extern fn pg_detoast_datum_slice(datum: [*c]struct_varlena, first: int32, count: int32) [*c]struct_varlena;
pub extern fn pg_detoast_datum_packed(datum: [*c]struct_varlena) [*c]struct_varlena;
pub const Pg_finfo_record = extern struct {
    api_version: c_int,
};
pub const PGFInfoFunction = ?*const fn () callconv(.C) [*c]const Pg_finfo_record;
pub const Pg_magic_struct = extern struct {
    len: c_int,
    version: c_int,
    funcmaxargs: c_int,
    indexmaxkeys: c_int,
    namedatalen: c_int,
    float8byval: c_int,
    abi_extra: [32]u8,
}; // /home/sarna/repo/pgturso/postgres/src/include/c.h:944:2: warning: ignoring StaticAssert declaration
pub const PGModuleMagicFunction = ?*const fn () callconv(.C) [*c]const Pg_magic_struct;
pub extern fn DirectFunctionCall1Coll(func: PGFunction, collation: Oid, arg1: Datum) Datum;
pub extern fn DirectFunctionCall2Coll(func: PGFunction, collation: Oid, arg1: Datum, arg2: Datum) Datum;
pub extern fn DirectFunctionCall3Coll(func: PGFunction, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum) Datum;
pub extern fn DirectFunctionCall4Coll(func: PGFunction, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum) Datum;
pub extern fn DirectFunctionCall5Coll(func: PGFunction, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum) Datum;
pub extern fn DirectFunctionCall6Coll(func: PGFunction, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum) Datum;
pub extern fn DirectFunctionCall7Coll(func: PGFunction, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum, arg7: Datum) Datum;
pub extern fn DirectFunctionCall8Coll(func: PGFunction, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum, arg7: Datum, arg8: Datum) Datum;
pub extern fn DirectFunctionCall9Coll(func: PGFunction, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum, arg7: Datum, arg8: Datum, arg9: Datum) Datum;
pub extern fn CallerFInfoFunctionCall1(func: PGFunction, flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum) Datum;
pub extern fn CallerFInfoFunctionCall2(func: PGFunction, flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum, arg2: Datum) Datum;
pub extern fn FunctionCall0Coll(flinfo: [*c]FmgrInfo, collation: Oid) Datum;
pub extern fn FunctionCall1Coll(flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum) Datum;
pub extern fn FunctionCall2Coll(flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum, arg2: Datum) Datum;
pub extern fn FunctionCall3Coll(flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum) Datum;
pub extern fn FunctionCall4Coll(flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum) Datum;
pub extern fn FunctionCall5Coll(flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum) Datum;
pub extern fn FunctionCall6Coll(flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum) Datum;
pub extern fn FunctionCall7Coll(flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum, arg7: Datum) Datum;
pub extern fn FunctionCall8Coll(flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum, arg7: Datum, arg8: Datum) Datum;
pub extern fn FunctionCall9Coll(flinfo: [*c]FmgrInfo, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum, arg7: Datum, arg8: Datum, arg9: Datum) Datum;
pub extern fn OidFunctionCall0Coll(functionId: Oid, collation: Oid) Datum;
pub extern fn OidFunctionCall1Coll(functionId: Oid, collation: Oid, arg1: Datum) Datum;
pub extern fn OidFunctionCall2Coll(functionId: Oid, collation: Oid, arg1: Datum, arg2: Datum) Datum;
pub extern fn OidFunctionCall3Coll(functionId: Oid, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum) Datum;
pub extern fn OidFunctionCall4Coll(functionId: Oid, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum) Datum;
pub extern fn OidFunctionCall5Coll(functionId: Oid, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum) Datum;
pub extern fn OidFunctionCall6Coll(functionId: Oid, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum) Datum;
pub extern fn OidFunctionCall7Coll(functionId: Oid, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum, arg7: Datum) Datum;
pub extern fn OidFunctionCall8Coll(functionId: Oid, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum, arg7: Datum, arg8: Datum) Datum;
pub extern fn OidFunctionCall9Coll(functionId: Oid, collation: Oid, arg1: Datum, arg2: Datum, arg3: Datum, arg4: Datum, arg5: Datum, arg6: Datum, arg7: Datum, arg8: Datum, arg9: Datum) Datum;
pub extern fn InputFunctionCall(flinfo: [*c]FmgrInfo, str: [*c]u8, typioparam: Oid, typmod: int32) Datum;
pub extern fn OidInputFunctionCall(functionId: Oid, str: [*c]u8, typioparam: Oid, typmod: int32) Datum;
pub extern fn OutputFunctionCall(flinfo: [*c]FmgrInfo, val: Datum) [*c]u8;
pub extern fn OidOutputFunctionCall(functionId: Oid, val: Datum) [*c]u8;
pub extern fn ReceiveFunctionCall(flinfo: [*c]FmgrInfo, buf: fmStringInfo, typioparam: Oid, typmod: int32) Datum;
pub extern fn OidReceiveFunctionCall(functionId: Oid, buf: fmStringInfo, typioparam: Oid, typmod: int32) Datum;
pub extern fn SendFunctionCall(flinfo: [*c]FmgrInfo, val: Datum) [*c]bytea;
pub extern fn OidSendFunctionCall(functionId: Oid, val: Datum) [*c]bytea;
pub extern fn fetch_finfo_record(filehandle: ?*anyopaque, funcname: [*c]const u8) [*c]const Pg_finfo_record;
pub extern fn fmgr_internal_function(proname: [*c]const u8) Oid;
pub extern fn get_fn_expr_rettype(flinfo: [*c]FmgrInfo) Oid;
pub extern fn get_fn_expr_argtype(flinfo: [*c]FmgrInfo, argnum: c_int) Oid;
pub extern fn get_call_expr_argtype(expr: fmNodePtr, argnum: c_int) Oid;
pub extern fn get_fn_expr_arg_stable(flinfo: [*c]FmgrInfo, argnum: c_int) bool;
pub extern fn get_call_expr_arg_stable(expr: fmNodePtr, argnum: c_int) bool;
pub extern fn get_fn_expr_variadic(flinfo: [*c]FmgrInfo) bool;
pub extern fn get_fn_opclass_options(flinfo: [*c]FmgrInfo) [*c]bytea;
pub extern fn has_fn_opclass_options(flinfo: [*c]FmgrInfo) bool;
pub extern fn set_fn_opclass_options(flinfo: [*c]FmgrInfo, options: [*c]bytea) void;
pub extern fn CheckFunctionValidatorAccess(validatorOid: Oid, functionOid: Oid) bool;
pub extern var Dynamic_library_path: [*c]u8;
pub extern fn load_external_function(filename: [*c]const u8, funcname: [*c]const u8, signalNotFound: bool, filehandle: [*c]?*anyopaque) ?*anyopaque;
pub extern fn lookup_external_function(filehandle: ?*anyopaque, funcname: [*c]const u8) ?*anyopaque;
pub extern fn load_file(filename: [*c]const u8, restricted: bool) void;
pub extern fn find_rendezvous_variable(varName: [*c]const u8) [*c]?*anyopaque;
pub extern fn EstimateLibraryStateSpace() Size;
pub extern fn SerializeLibraryState(maxsize: Size, start_address: [*c]u8) void;
pub extern fn RestoreLibraryState(start_address: [*c]u8) void;
pub extern fn AggCheckCallContext(fcinfo: FunctionCallInfo, aggcontext: [*c]MemoryContext) c_int;
pub extern fn AggGetAggref(fcinfo: FunctionCallInfo) fmAggrefPtr;
pub extern fn AggGetTempMemoryContext(fcinfo: FunctionCallInfo) MemoryContext;
pub extern fn AggStateIsShared(fcinfo: FunctionCallInfo) bool;
pub extern fn AggRegisterCallback(fcinfo: FunctionCallInfo, func: fmExprContextCallbackFunction, arg: Datum) void;
pub const FHET_START: c_int = 0;
pub const FHET_END: c_int = 1;
pub const FHET_ABORT: c_int = 2;
pub const enum_FmgrHookEventType = c_uint;
pub const FmgrHookEventType = enum_FmgrHookEventType;
pub const needs_fmgr_hook_type = ?*const fn (Oid) callconv(.C) bool;
pub const fmgr_hook_type = ?*const fn (FmgrHookEventType, [*c]FmgrInfo, [*c]Datum) callconv(.C) void;
pub extern var needs_fmgr_hook: needs_fmgr_hook_type;
pub extern var fmgr_hook: fmgr_hook_type;
pub const dlist_node = struct_dlist_node;
pub const struct_dlist_node = extern struct {
    prev: [*c]dlist_node,
    next: [*c]dlist_node,
};
pub const struct_dlist_head = extern struct {
    head: dlist_node,
};
pub const dlist_head = struct_dlist_head;
pub const struct_dlist_iter = extern struct {
    cur: [*c]dlist_node,
    end: [*c]dlist_node,
};
pub const dlist_iter = struct_dlist_iter;
pub const struct_dlist_mutable_iter = extern struct {
    cur: [*c]dlist_node,
    next: [*c]dlist_node,
    end: [*c]dlist_node,
};
pub const dlist_mutable_iter = struct_dlist_mutable_iter;
pub const slist_node = struct_slist_node;
pub const struct_slist_node = extern struct {
    next: [*c]slist_node,
};
pub const struct_slist_head = extern struct {
    head: slist_node,
};
pub const slist_head = struct_slist_head;
pub const struct_slist_iter = extern struct {
    cur: [*c]slist_node,
};
pub const slist_iter = struct_slist_iter;
pub const struct_slist_mutable_iter = extern struct {
    cur: [*c]slist_node,
    next: [*c]slist_node,
    prev: [*c]slist_node,
};
pub const slist_mutable_iter = struct_slist_mutable_iter;
pub extern fn slist_delete(head: [*c]slist_head, node: [*c]slist_node) void;
pub fn dlist_init(arg_head: [*c]dlist_head) callconv(.C) void {
    var head = arg_head;
    head.*.head.next = blk: {
        const tmp = &head.*.head;
        head.*.head.prev = tmp;
        break :blk tmp;
    };
}
pub fn dlist_is_empty(arg_head: [*c]dlist_head) callconv(.C) bool {
    var head = arg_head;
    _ = @TypeOf(head);
    return (head.*.head.next == @ptrCast([*c]dlist_node, @alignCast(@import("std").meta.alignment([*c]dlist_node), @ptrFromInt(?*anyopaque, @as(c_int, 0))))) or (head.*.head.next == (&head.*.head));
}
pub fn dlist_push_head(arg_head: [*c]dlist_head, arg_node: [*c]dlist_node) callconv(.C) void {
    var head = arg_head;
    var node = arg_node;
    if (head.*.head.next == @ptrCast([*c]dlist_node, @alignCast(@import("std").meta.alignment([*c]dlist_node), @ptrFromInt(?*anyopaque, @as(c_int, 0))))) {
        dlist_init(head);
    }
    node.*.next = head.*.head.next;
    node.*.prev = &head.*.head;
    node.*.next.*.prev = node;
    head.*.head.next = node;
    _ = @TypeOf(head);
}
pub fn dlist_push_tail(arg_head: [*c]dlist_head, arg_node: [*c]dlist_node) callconv(.C) void {
    var head = arg_head;
    var node = arg_node;
    if (head.*.head.next == @ptrCast([*c]dlist_node, @alignCast(@import("std").meta.alignment([*c]dlist_node), @ptrFromInt(?*anyopaque, @as(c_int, 0))))) {
        dlist_init(head);
    }
    node.*.next = &head.*.head;
    node.*.prev = head.*.head.prev;
    node.*.prev.*.next = node;
    head.*.head.prev = node;
    _ = @TypeOf(head);
}
pub fn dlist_insert_after(arg_after: [*c]dlist_node, arg_node: [*c]dlist_node) callconv(.C) void {
    var after = arg_after;
    var node = arg_node;
    node.*.prev = after;
    node.*.next = after.*.next;
    after.*.next = node;
    node.*.next.*.prev = node;
}
pub fn dlist_insert_before(arg_before: [*c]dlist_node, arg_node: [*c]dlist_node) callconv(.C) void {
    var before = arg_before;
    var node = arg_node;
    node.*.prev = before.*.prev;
    node.*.next = before;
    before.*.prev = node;
    node.*.prev.*.next = node;
}
pub fn dlist_delete(arg_node: [*c]dlist_node) callconv(.C) void {
    var node = arg_node;
    node.*.prev.*.next = node.*.next;
    node.*.next.*.prev = node.*.prev;
}
pub fn dlist_pop_head_node(arg_head: [*c]dlist_head) callconv(.C) [*c]dlist_node {
    var head = arg_head;
    var node: [*c]dlist_node = undefined;
    _ = @as(c_int, 1);
    node = head.*.head.next;
    dlist_delete(node);
    return node;
}
pub fn dlist_move_head(arg_head: [*c]dlist_head, arg_node: [*c]dlist_node) callconv(.C) void {
    var head = arg_head;
    var node = arg_node;
    if (head.*.head.next == node) return;
    dlist_delete(node);
    dlist_push_head(head, node);
    _ = @TypeOf(head);
}
pub fn dlist_move_tail(arg_head: [*c]dlist_head, arg_node: [*c]dlist_node) callconv(.C) void {
    var head = arg_head;
    var node = arg_node;
    if (head.*.head.prev == node) return;
    dlist_delete(node);
    dlist_push_tail(head, node);
    _ = @TypeOf(head);
}
pub fn dlist_has_next(arg_head: [*c]dlist_head, arg_node: [*c]dlist_node) callconv(.C) bool {
    var head = arg_head;
    var node = arg_node;
    return node.*.next != (&head.*.head);
}
pub fn dlist_has_prev(arg_head: [*c]dlist_head, arg_node: [*c]dlist_node) callconv(.C) bool {
    var head = arg_head;
    var node = arg_node;
    return node.*.prev != (&head.*.head);
}
pub fn dlist_next_node(arg_head: [*c]dlist_head, arg_node: [*c]dlist_node) callconv(.C) [*c]dlist_node {
    var head = arg_head;
    _ = @TypeOf(head);
    var node = arg_node;
    _ = @as(c_int, 1);
    return node.*.next;
}
pub fn dlist_prev_node(arg_head: [*c]dlist_head, arg_node: [*c]dlist_node) callconv(.C) [*c]dlist_node {
    var head = arg_head;
    _ = @TypeOf(head);
    var node = arg_node;
    _ = @as(c_int, 1);
    return node.*.prev;
}
pub fn dlist_head_element_off(arg_head: [*c]dlist_head, arg_off: usize) callconv(.C) ?*anyopaque {
    var head = arg_head;
    var off = arg_off;
    _ = @as(c_int, 1);
    return @ptrCast(?*anyopaque, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), head.*.head.next)) - off);
}
pub fn dlist_head_node(arg_head: [*c]dlist_head) callconv(.C) [*c]dlist_node {
    var head = arg_head;
    return @ptrCast([*c]dlist_node, @alignCast(@import("std").meta.alignment([*c]dlist_node), dlist_head_element_off(head, @bitCast(usize, @as(c_long, @as(c_int, 0))))));
}
pub fn dlist_tail_element_off(arg_head: [*c]dlist_head, arg_off: usize) callconv(.C) ?*anyopaque {
    var head = arg_head;
    var off = arg_off;
    _ = @as(c_int, 1);
    return @ptrCast(?*anyopaque, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), head.*.head.prev)) - off);
}
pub fn dlist_tail_node(arg_head: [*c]dlist_head) callconv(.C) [*c]dlist_node {
    var head = arg_head;
    return @ptrCast([*c]dlist_node, @alignCast(@import("std").meta.alignment([*c]dlist_node), dlist_tail_element_off(head, @bitCast(usize, @as(c_long, @as(c_int, 0))))));
}
pub fn slist_init(arg_head: [*c]slist_head) callconv(.C) void {
    var head = arg_head;
    head.*.head.next = null;
}
pub fn slist_is_empty(arg_head: [*c]slist_head) callconv(.C) bool {
    var head = arg_head;
    _ = @TypeOf(head);
    return head.*.head.next == @ptrCast([*c]slist_node, @alignCast(@import("std").meta.alignment([*c]slist_node), @ptrFromInt(?*anyopaque, @as(c_int, 0))));
}
pub fn slist_push_head(arg_head: [*c]slist_head, arg_node: [*c]slist_node) callconv(.C) void {
    var head = arg_head;
    var node = arg_node;
    node.*.next = head.*.head.next;
    head.*.head.next = node;
    _ = @TypeOf(head);
}
pub fn slist_insert_after(arg_after: [*c]slist_node, arg_node: [*c]slist_node) callconv(.C) void {
    var after = arg_after;
    var node = arg_node;
    node.*.next = after.*.next;
    after.*.next = node;
}
pub fn slist_pop_head_node(arg_head: [*c]slist_head) callconv(.C) [*c]slist_node {
    var head = arg_head;
    var node: [*c]slist_node = undefined;
    _ = @as(c_int, 1);
    node = head.*.head.next;
    head.*.head.next = node.*.next;
    _ = @TypeOf(head);
    return node;
}
pub fn slist_has_next(arg_head: [*c]slist_head, arg_node: [*c]slist_node) callconv(.C) bool {
    var head = arg_head;
    var node = arg_node;
    _ = @TypeOf(head);
    return node.*.next != @ptrCast([*c]slist_node, @alignCast(@import("std").meta.alignment([*c]slist_node), @ptrFromInt(?*anyopaque, @as(c_int, 0))));
}
pub fn slist_next_node(arg_head: [*c]slist_head, arg_node: [*c]slist_node) callconv(.C) [*c]slist_node {
    var head = arg_head;
    _ = @TypeOf(head);
    var node = arg_node;
    _ = @as(c_int, 1);
    return node.*.next;
}
pub fn slist_head_element_off(arg_head: [*c]slist_head, arg_off: usize) callconv(.C) ?*anyopaque {
    var head = arg_head;
    var off = arg_off;
    _ = @as(c_int, 1);
    return @ptrCast(?*anyopaque, @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), head.*.head.next)) - off);
}
pub fn slist_head_node(arg_head: [*c]slist_head) callconv(.C) [*c]slist_node {
    var head = arg_head;
    return @ptrCast([*c]slist_node, @alignCast(@import("std").meta.alignment([*c]slist_node), slist_head_element_off(head, @bitCast(usize, @as(c_long, @as(c_int, 0))))));
}
pub fn slist_delete_current(arg_iter: [*c]slist_mutable_iter) callconv(.C) void {
    var iter = arg_iter;
    iter.*.prev.*.next = iter.*.next;
    iter.*.cur = iter.*.prev;
}
pub const StringInfoData = struct_StringInfoData;
pub const StringInfo = [*c]StringInfoData;
pub extern fn makeStringInfo() StringInfo;
pub extern fn initStringInfo(str: StringInfo) void;
pub extern fn resetStringInfo(str: StringInfo) void;
pub extern fn appendStringInfo(str: StringInfo, fmt: [*c]const u8, ...) void;
pub extern fn appendStringInfoVA(str: StringInfo, fmt: [*c]const u8, args: [*c]struct___va_list_tag) c_int;
pub extern fn appendStringInfoString(str: StringInfo, s: [*c]const u8) void;
pub extern fn appendStringInfoChar(str: StringInfo, ch: u8) void;
pub extern fn appendStringInfoSpaces(str: StringInfo, count: c_int) void;
pub extern fn appendBinaryStringInfo(str: StringInfo, data: [*c]const u8, datalen: c_int) void;
pub extern fn appendBinaryStringInfoNT(str: StringInfo, data: [*c]const u8, datalen: c_int) void;
pub extern fn enlargeStringInfo(str: StringInfo, needed: c_int) void;
pub const struct_pairingheap_node = extern struct {
    first_child: [*c]struct_pairingheap_node,
    next_sibling: [*c]struct_pairingheap_node,
    prev_or_parent: [*c]struct_pairingheap_node,
};
pub const pairingheap_node = struct_pairingheap_node;
pub const pairingheap_comparator = ?*const fn ([*c]const pairingheap_node, [*c]const pairingheap_node, ?*anyopaque) callconv(.C) c_int;
pub const struct_pairingheap = extern struct {
    ph_compare: pairingheap_comparator,
    ph_arg: ?*anyopaque,
    ph_root: [*c]pairingheap_node,
};
pub const pairingheap = struct_pairingheap;
pub extern fn pairingheap_allocate(compare: pairingheap_comparator, arg: ?*anyopaque) [*c]pairingheap;
pub extern fn pairingheap_free(heap: [*c]pairingheap) void;
pub extern fn pairingheap_add(heap: [*c]pairingheap, node: [*c]pairingheap_node) void;
pub extern fn pairingheap_first(heap: [*c]pairingheap) [*c]pairingheap_node;
pub extern fn pairingheap_remove_first(heap: [*c]pairingheap) [*c]pairingheap_node;
pub extern fn pairingheap_remove(heap: [*c]pairingheap, node: [*c]pairingheap_node) void;
pub const struct_ExprEvalStep = opaque {};
pub const struct_ParamExecData = extern struct {
    execPlan: ?*anyopaque,
    value: Datum,
    isnull: bool,
};
pub const ParamExecData = struct_ParamExecData;
pub const struct_ParamExternData = extern struct {
    value: Datum,
    isnull: bool,
    pflags: uint16,
    ptype: Oid,
};
pub const ParamExternData = struct_ParamExternData;
pub const ParamFetchHook = ?*const fn (ParamListInfo, c_int, bool, [*c]ParamExternData) callconv(.C) [*c]ParamExternData;
pub const PARAM_EXTERN: c_int = 0;
pub const PARAM_EXEC: c_int = 1;
pub const PARAM_SUBLINK: c_int = 2;
pub const PARAM_MULTIEXPR: c_int = 3;
pub const enum_ParamKind = c_uint;
pub const ParamKind = enum_ParamKind;
pub const struct_Param = extern struct {
    xpr: Expr,
    paramkind: ParamKind,
    paramid: c_int,
    paramtype: Oid,
    paramtypmod: int32,
    paramcollid: Oid,
    location: c_int,
};
pub const ParamCompileHook = ?*const fn (ParamListInfo, [*c]struct_Param, [*c]struct_ExprState, [*c]Datum, [*c]bool) callconv(.C) void;
pub const struct_ParseState = opaque {};
pub const ParserSetupHook = ?*const fn (?*struct_ParseState, ?*anyopaque) callconv(.C) void;
pub const struct_ParamListInfoData = extern struct {
    paramFetch: ParamFetchHook align(8),
    paramFetchArg: ?*anyopaque,
    paramCompile: ParamCompileHook,
    paramCompileArg: ?*anyopaque,
    parserSetup: ParserSetupHook,
    parserSetupArg: ?*anyopaque,
    paramValuesStr: [*c]u8,
    numParams: c_int,
    pub fn params(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ParamExternData) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), ParamExternData);
        return @ptrCast(ReturnType, @alignCast(@alignOf(ParamExternData), @ptrCast(Intermediate, self) + 64));
    }
};
pub const ParamListInfo = [*c]struct_ParamListInfoData;
pub const BackwardScanDirection: c_int = -1;
pub const NoMovementScanDirection: c_int = 0;
pub const ForwardScanDirection: c_int = 1;
pub const enum_ScanDirection = c_int;
pub const ScanDirection = enum_ScanDirection;
pub const SNAPSHOT_MVCC: c_int = 0;
pub const SNAPSHOT_SELF: c_int = 1;
pub const SNAPSHOT_ANY: c_int = 2;
pub const SNAPSHOT_TOAST: c_int = 3;
pub const SNAPSHOT_DIRTY: c_int = 4;
pub const SNAPSHOT_HISTORIC_MVCC: c_int = 5;
pub const SNAPSHOT_NON_VACUUMABLE: c_int = 6;
pub const enum_SnapshotType = c_uint;
pub const SnapshotType = enum_SnapshotType;
pub const struct_GlobalVisState = opaque {};
pub const TimestampTz = int64;
pub const struct_SnapshotData = extern struct {
    snapshot_type: SnapshotType,
    xmin: TransactionId,
    xmax: TransactionId,
    xip: [*c]TransactionId,
    xcnt: uint32,
    subxip: [*c]TransactionId,
    subxcnt: int32,
    suboverflowed: bool,
    takenDuringRecovery: bool,
    copied: bool,
    curcid: CommandId,
    speculativeToken: uint32,
    vistest: ?*struct_GlobalVisState,
    active_count: uint32,
    regd_count: uint32,
    ph_node: pairingheap_node,
    whenTaken: TimestampTz,
    lsn: XLogRecPtr,
    snapXactCompletionCount: uint64,
};
pub const Snapshot = [*c]struct_SnapshotData;
pub const struct_RelationData = opaque {};
pub const Relation = ?*struct_RelationData;
pub const ROW_MARK_EXCLUSIVE: c_int = 0;
pub const ROW_MARK_NOKEYEXCLUSIVE: c_int = 1;
pub const ROW_MARK_SHARE: c_int = 2;
pub const ROW_MARK_KEYSHARE: c_int = 3;
pub const ROW_MARK_REFERENCE: c_int = 4;
pub const ROW_MARK_COPY: c_int = 5;
pub const enum_RowMarkType = c_uint;
pub const RowMarkType = enum_RowMarkType;
pub const LCS_NONE: c_int = 0;
pub const LCS_FORKEYSHARE: c_int = 1;
pub const LCS_FORSHARE: c_int = 2;
pub const LCS_FORNOKEYUPDATE: c_int = 3;
pub const LCS_FORUPDATE: c_int = 4;
pub const enum_LockClauseStrength = c_uint;
pub const LockClauseStrength = enum_LockClauseStrength;
pub const LockWaitBlock: c_int = 0;
pub const LockWaitSkip: c_int = 1;
pub const LockWaitError: c_int = 2;
pub const enum_LockWaitPolicy = c_uint;
pub const LockWaitPolicy = enum_LockWaitPolicy;
pub const struct_ExecRowMark = extern struct {
    relation: Relation,
    relid: Oid,
    rti: Index,
    prti: Index,
    rowmarkId: Index,
    markType: RowMarkType,
    strength: LockClauseStrength,
    waitPolicy: LockWaitPolicy,
    ermActive: bool,
    curCtid: ItemPointerData,
    ermExtra: ?*anyopaque,
};
pub const struct_Plan = extern struct {
    type: NodeTag,
    startup_cost: Cost,
    total_cost: Cost,
    plan_rows: Cardinality,
    plan_width: c_int,
    parallel_aware: bool,
    parallel_safe: bool,
    async_capable: bool,
    plan_node_id: c_int,
    targetlist: [*c]List,
    qual: [*c]List,
    lefttree: [*c]struct_Plan,
    righttree: [*c]struct_Plan,
    initPlan: [*c]List,
    extParam: [*c]Bitmapset,
    allParam: [*c]Bitmapset,
};
pub const struct_PlannedStmt = extern struct {
    type: NodeTag,
    commandType: CmdType,
    queryId: uint64,
    hasReturning: bool,
    hasModifyingCTE: bool,
    canSetTag: bool,
    transientPlan: bool,
    dependsOnRole: bool,
    parallelModeNeeded: bool,
    jitFlags: c_int,
    planTree: [*c]struct_Plan,
    rtable: [*c]List,
    resultRelations: [*c]List,
    appendRelations: [*c]List,
    subplans: [*c]List,
    rewindPlanIDs: [*c]Bitmapset,
    rowMarks: [*c]List,
    relationOids: [*c]List,
    invalItems: [*c]List,
    paramExecTypes: [*c]List,
    utilityStmt: [*c]Node,
    stmt_location: c_int,
    stmt_len: c_int,
};
pub const PlannedStmt = struct_PlannedStmt;
pub const struct_JunkFilter = extern struct {
    type: NodeTag,
    jf_targetList: [*c]List,
    jf_cleanTupType: TupleDesc,
    jf_cleanMap: [*c]AttrNumber,
    jf_resultSlot: [*c]TupleTableSlot,
};
pub const JunkFilter = struct_JunkFilter;
pub const RelationPtr = [*c]Relation;
pub const ExprState = struct_ExprState;
pub const struct_IndexInfo = extern struct {
    type: NodeTag,
    ii_NumIndexAttrs: c_int,
    ii_NumIndexKeyAttrs: c_int,
    ii_IndexAttrNumbers: [32]AttrNumber,
    ii_Expressions: [*c]List,
    ii_ExpressionsState: [*c]List,
    ii_Predicate: [*c]List,
    ii_PredicateState: [*c]ExprState,
    ii_ExclusionOps: [*c]Oid,
    ii_ExclusionProcs: [*c]Oid,
    ii_ExclusionStrats: [*c]uint16,
    ii_UniqueOps: [*c]Oid,
    ii_UniqueProcs: [*c]Oid,
    ii_UniqueStrats: [*c]uint16,
    ii_OpclassOptions: [*c]Datum,
    ii_Unique: bool,
    ii_NullsNotDistinct: bool,
    ii_ReadyForInserts: bool,
    ii_CheckedUnchanged: bool,
    ii_IndexUnchanged: bool,
    ii_Concurrent: bool,
    ii_BrokenHotChain: bool,
    ii_ParallelWorkers: c_int,
    ii_Am: Oid,
    ii_AmCache: ?*anyopaque,
    ii_Context: MemoryContext,
};
pub const IndexInfo = struct_IndexInfo;
pub const ExprContext = struct_ExprContext;
pub const struct_ProjectionInfo = extern struct {
    type: NodeTag,
    pi_state: ExprState,
    pi_exprContext: [*c]ExprContext,
};
pub const ProjectionInfo = struct_ProjectionInfo;
pub const struct_Trigger = extern struct {
    tgoid: Oid,
    tgname: [*c]u8,
    tgfoid: Oid,
    tgtype: int16,
    tgenabled: u8,
    tgisinternal: bool,
    tgisclone: bool,
    tgconstrrelid: Oid,
    tgconstrindid: Oid,
    tgconstraint: Oid,
    tgdeferrable: bool,
    tginitdeferred: bool,
    tgnargs: int16,
    tgnattr: int16,
    tgattr: [*c]int16,
    tgargs: [*c][*c]u8,
    tgqual: [*c]u8,
    tgoldtable: [*c]u8,
    tgnewtable: [*c]u8,
};
pub const Trigger = struct_Trigger;
pub const struct_TriggerDesc = extern struct {
    triggers: [*c]Trigger,
    numtriggers: c_int,
    trig_insert_before_row: bool,
    trig_insert_after_row: bool,
    trig_insert_instead_row: bool,
    trig_insert_before_statement: bool,
    trig_insert_after_statement: bool,
    trig_update_before_row: bool,
    trig_update_after_row: bool,
    trig_update_instead_row: bool,
    trig_update_before_statement: bool,
    trig_update_after_statement: bool,
    trig_delete_before_row: bool,
    trig_delete_after_row: bool,
    trig_delete_instead_row: bool,
    trig_delete_before_statement: bool,
    trig_delete_after_statement: bool,
    trig_truncate_before_statement: bool,
    trig_truncate_after_statement: bool,
    trig_insert_new_table: bool,
    trig_update_old_table: bool,
    trig_update_new_table: bool,
    trig_delete_old_table: bool,
};
pub const TriggerDesc = struct_TriggerDesc;
pub const struct_FdwRoutine = opaque {};
pub const struct_OnConflictSetState = extern struct {
    type: NodeTag,
    oc_Existing: [*c]TupleTableSlot,
    oc_ProjSlot: [*c]TupleTableSlot,
    oc_ProjInfo: [*c]ProjectionInfo,
    oc_WhereClause: [*c]ExprState,
};
pub const OnConflictSetState = struct_OnConflictSetState;
pub const struct_CopyMultiInsertBuffer = opaque {};
pub const struct_ResultRelInfo = extern struct {
    type: NodeTag,
    ri_RangeTableIndex: Index,
    ri_RelationDesc: Relation,
    ri_NumIndices: c_int,
    ri_IndexRelationDescs: RelationPtr,
    ri_IndexRelationInfo: [*c][*c]IndexInfo,
    ri_RowIdAttNo: AttrNumber,
    ri_projectNew: [*c]ProjectionInfo,
    ri_newTupleSlot: [*c]TupleTableSlot,
    ri_oldTupleSlot: [*c]TupleTableSlot,
    ri_projectNewInfoValid: bool,
    ri_TrigDesc: [*c]TriggerDesc,
    ri_TrigFunctions: [*c]FmgrInfo,
    ri_TrigWhenExprs: [*c][*c]ExprState,
    ri_TrigInstrument: [*c]Instrumentation,
    ri_ReturningSlot: [*c]TupleTableSlot,
    ri_TrigOldSlot: [*c]TupleTableSlot,
    ri_TrigNewSlot: [*c]TupleTableSlot,
    ri_FdwRoutine: ?*struct_FdwRoutine,
    ri_FdwState: ?*anyopaque,
    ri_usesFdwDirectModify: bool,
    ri_NumSlots: c_int,
    ri_NumSlotsInitialized: c_int,
    ri_BatchSize: c_int,
    ri_Slots: [*c][*c]TupleTableSlot,
    ri_PlanSlots: [*c][*c]TupleTableSlot,
    ri_WithCheckOptions: [*c]List,
    ri_WithCheckOptionExprs: [*c]List,
    ri_ConstraintExprs: [*c][*c]ExprState,
    ri_GeneratedExprs: [*c][*c]ExprState,
    ri_NumGeneratedNeeded: c_int,
    ri_returningList: [*c]List,
    ri_projectReturning: [*c]ProjectionInfo,
    ri_onConflictArbiterIndexes: [*c]List,
    ri_onConflict: [*c]OnConflictSetState,
    ri_matchedMergeAction: [*c]List,
    ri_notMatchedMergeAction: [*c]List,
    ri_PartitionCheckExpr: [*c]ExprState,
    ri_RootResultRelInfo: [*c]struct_ResultRelInfo,
    ri_RootToPartitionMap: [*c]TupleConversionMap,
    ri_PartitionTupleSlot: [*c]TupleTableSlot,
    ri_ChildToRootMap: [*c]TupleConversionMap,
    ri_ChildToRootMapValid: bool,
    ri_CopyMultiInsertBuffer: ?*struct_CopyMultiInsertBuffer,
    ri_ancestorResultRels: [*c]List,
};
pub const ResultRelInfo = struct_ResultRelInfo;
pub const struct_PartitionDirectoryData = opaque {};
pub const PartitionDirectory = ?*struct_PartitionDirectoryData;
pub const struct_QueryEnvironment = opaque {};
pub const QueryEnvironment = struct_QueryEnvironment;
pub const EState = struct_EState;
pub const Plan = struct_Plan;
pub const ExecRowMark = struct_ExecRowMark;
pub const struct_ExecAuxRowMark = extern struct {
    rowmark: [*c]ExecRowMark,
    ctidAttNo: AttrNumber,
    toidAttNo: AttrNumber,
    wholeAttNo: AttrNumber,
};
pub const ExecAuxRowMark = struct_ExecAuxRowMark;
pub const ExecProcNodeMtd = ?*const fn ([*c]struct_PlanState) callconv(.C) [*c]TupleTableSlot;
pub const struct_SharedJitInstrumentation = opaque {};
pub const struct_PlanState = extern struct {
    type: NodeTag,
    plan: [*c]Plan,
    state: [*c]EState,
    ExecProcNode: ExecProcNodeMtd,
    ExecProcNodeReal: ExecProcNodeMtd,
    instrument: [*c]Instrumentation,
    worker_instrument: [*c]WorkerInstrumentation,
    worker_jit_instrument: ?*struct_SharedJitInstrumentation,
    qual: [*c]ExprState,
    lefttree: [*c]struct_PlanState,
    righttree: [*c]struct_PlanState,
    initPlan: [*c]List,
    subPlan: [*c]List,
    chgParam: [*c]Bitmapset,
    ps_ResultTupleDesc: TupleDesc,
    ps_ResultTupleSlot: [*c]TupleTableSlot,
    ps_ExprContext: [*c]ExprContext,
    ps_ProjInfo: [*c]ProjectionInfo,
    async_capable: bool,
    scandesc: TupleDesc,
    scanops: [*c]const TupleTableSlotOps,
    outerops: [*c]const TupleTableSlotOps,
    innerops: [*c]const TupleTableSlotOps,
    resultops: [*c]const TupleTableSlotOps,
    scanopsfixed: bool,
    outeropsfixed: bool,
    inneropsfixed: bool,
    resultopsfixed: bool,
    scanopsset: bool,
    outeropsset: bool,
    inneropsset: bool,
    resultopsset: bool,
};
pub const PlanState = struct_PlanState;
pub const struct_EPQState = extern struct {
    parentestate: [*c]EState,
    epqParam: c_int,
    tuple_table: [*c]List,
    relsubs_slot: [*c][*c]TupleTableSlot,
    plan: [*c]Plan,
    arowMarks: [*c]List,
    origslot: [*c]TupleTableSlot,
    recheckestate: [*c]EState,
    relsubs_rowmark: [*c][*c]ExecAuxRowMark,
    relsubs_done: [*c]bool,
    recheckplanstate: [*c]PlanState,
};
pub const struct_dsa_area = opaque {};
pub const struct_JitContext = opaque {};
pub const struct_JitInstrumentation = opaque {};
pub const struct_EState = extern struct {
    type: NodeTag,
    es_direction: ScanDirection,
    es_snapshot: Snapshot,
    es_crosscheck_snapshot: Snapshot,
    es_range_table: [*c]List,
    es_range_table_size: Index,
    es_relations: [*c]Relation,
    es_rowmarks: [*c][*c]struct_ExecRowMark,
    es_plannedstmt: [*c]PlannedStmt,
    es_sourceText: [*c]const u8,
    es_junkFilter: [*c]JunkFilter,
    es_output_cid: CommandId,
    es_result_relations: [*c][*c]ResultRelInfo,
    es_opened_result_relations: [*c]List,
    es_partition_directory: PartitionDirectory,
    es_tuple_routing_result_relations: [*c]List,
    es_trig_target_relations: [*c]List,
    es_param_list_info: ParamListInfo,
    es_param_exec_vals: [*c]ParamExecData,
    es_queryEnv: ?*QueryEnvironment,
    es_query_cxt: MemoryContext,
    es_tupleTable: [*c]List,
    es_processed: uint64,
    es_top_eflags: c_int,
    es_instrument: c_int,
    es_finished: bool,
    es_exprcontexts: [*c]List,
    es_subplanstates: [*c]List,
    es_auxmodifytables: [*c]List,
    es_per_tuple_exprcontext: [*c]ExprContext,
    es_epq_active: [*c]struct_EPQState,
    es_use_parallel_mode: bool,
    es_query_dsa: ?*struct_dsa_area,
    es_jit_flags: c_int,
    es_jit: ?*struct_JitContext,
    es_jit_worker_instr: ?*struct_JitInstrumentation,
    es_insert_pending_result_relations: [*c]List,
    es_insert_pending_modifytables: [*c]List,
    es_resultrelinfo_extra: [*c]List,
};
pub const ExprContextCallbackFunction = ?*const fn (Datum) callconv(.C) void;
pub const struct_ExprContext_CB = extern struct {
    next: [*c]struct_ExprContext_CB,
    function: ExprContextCallbackFunction,
    arg: Datum,
};
pub const ExprContext_CB = struct_ExprContext_CB;
pub const struct_ExprContext = extern struct {
    type: NodeTag,
    ecxt_scantuple: [*c]TupleTableSlot,
    ecxt_innertuple: [*c]TupleTableSlot,
    ecxt_outertuple: [*c]TupleTableSlot,
    ecxt_per_query_memory: MemoryContext,
    ecxt_per_tuple_memory: MemoryContext,
    ecxt_param_exec_vals: [*c]ParamExecData,
    ecxt_param_list_info: ParamListInfo,
    ecxt_aggvalues: [*c]Datum,
    ecxt_aggnulls: [*c]bool,
    caseValue_datum: Datum,
    caseValue_isNull: bool,
    domainValue_datum: Datum,
    domainValue_isNull: bool,
    ecxt_estate: [*c]struct_EState,
    ecxt_callbacks: [*c]ExprContext_CB,
};
pub const ExprStateEvalFunc = ?*const fn ([*c]struct_ExprState, [*c]struct_ExprContext, [*c]bool) callconv(.C) Datum;
pub const struct_ExprState = extern struct {
    type: NodeTag,
    flags: uint8,
    resnull: bool,
    resvalue: Datum,
    resultslot: [*c]TupleTableSlot,
    steps: ?*struct_ExprEvalStep,
    evalfunc: ExprStateEvalFunc,
    expr: [*c]Expr,
    evalfunc_private: ?*anyopaque,
    steps_len: c_int,
    steps_alloc: c_int,
    parent: [*c]struct_PlanState,
    ext_params: ParamListInfo,
    innermost_caseval: [*c]Datum,
    innermost_casenull: [*c]bool,
    innermost_domainval: [*c]Datum,
    innermost_domainnull: [*c]bool,
};
pub const ParamListInfoData = struct_ParamListInfoData;
pub const struct_ParamsErrorCbData = extern struct {
    portalName: [*c]const u8,
    params: ParamListInfo,
};
pub const ParamsErrorCbData = struct_ParamsErrorCbData;
pub extern fn makeParamList(numParams: c_int) ParamListInfo;
pub extern fn copyParamList(from: ParamListInfo) ParamListInfo;
pub extern fn EstimateParamListSpace(paramLI: ParamListInfo) Size;
pub extern fn SerializeParamList(paramLI: ParamListInfo, start_address: [*c][*c]u8) void;
pub extern fn RestoreParamList(start_address: [*c][*c]u8) ParamListInfo;
pub extern fn BuildParamLogString(params: ParamListInfo, paramTextValues: [*c][*c]u8, valueLen: c_int) [*c]u8;
pub extern fn ParamsErrorCallback(arg: ?*anyopaque) void;
pub const StrategyNumber = uint16;
pub const LockTupleKeyShare: c_int = 0;
pub const LockTupleShare: c_int = 1;
pub const LockTupleNoKeyExclusive: c_int = 2;
pub const LockTupleExclusive: c_int = 3;
pub const enum_LockTupleMode = c_uint;
pub const LockTupleMode = enum_LockTupleMode;
pub const struct_Alias = extern struct {
    type: NodeTag,
    aliasname: [*c]u8,
    colnames: [*c]List,
};
pub const Alias = struct_Alias;
pub const ONCOMMIT_NOOP: c_int = 0;
pub const ONCOMMIT_PRESERVE_ROWS: c_int = 1;
pub const ONCOMMIT_DELETE_ROWS: c_int = 2;
pub const ONCOMMIT_DROP: c_int = 3;
pub const enum_OnCommitAction = c_uint;
pub const OnCommitAction = enum_OnCommitAction;
pub const struct_RangeVar = extern struct {
    type: NodeTag,
    catalogname: [*c]u8,
    schemaname: [*c]u8,
    relname: [*c]u8,
    inh: bool,
    relpersistence: u8,
    alias: [*c]Alias,
    location: c_int,
};
pub const RangeVar = struct_RangeVar;
pub const struct_TableFunc = extern struct {
    type: NodeTag,
    ns_uris: [*c]List,
    ns_names: [*c]List,
    docexpr: [*c]Node,
    rowexpr: [*c]Node,
    colnames: [*c]List,
    coltypes: [*c]List,
    coltypmods: [*c]List,
    colcollations: [*c]List,
    colexprs: [*c]List,
    coldefexprs: [*c]List,
    notnulls: [*c]Bitmapset,
    ordinalitycol: c_int,
    location: c_int,
};
pub const TableFunc = struct_TableFunc;
pub const struct_IntoClause = extern struct {
    type: NodeTag,
    rel: [*c]RangeVar,
    colNames: [*c]List,
    accessMethod: [*c]u8,
    options: [*c]List,
    onCommit: OnCommitAction,
    tableSpaceName: [*c]u8,
    viewQuery: [*c]Node,
    skipData: bool,
};
pub const IntoClause = struct_IntoClause;
pub const struct_Var = extern struct {
    xpr: Expr,
    varno: c_int,
    varattno: AttrNumber,
    vartype: Oid,
    vartypmod: int32,
    varcollid: Oid,
    varlevelsup: Index,
    varnosyn: Index,
    varattnosyn: AttrNumber,
    location: c_int,
};
pub const Var = struct_Var;
pub const struct_Const = extern struct {
    xpr: Expr,
    consttype: Oid,
    consttypmod: int32,
    constcollid: Oid,
    constlen: c_int,
    constvalue: Datum,
    constisnull: bool,
    constbyval: bool,
    location: c_int,
};
pub const Const = struct_Const;
pub const Param = struct_Param;
pub const Aggref = struct_Aggref;
pub const struct_GroupingFunc = extern struct {
    xpr: Expr,
    args: [*c]List,
    refs: [*c]List,
    cols: [*c]List,
    agglevelsup: Index,
    location: c_int,
};
pub const GroupingFunc = struct_GroupingFunc;
pub const struct_WindowFunc = extern struct {
    xpr: Expr,
    winfnoid: Oid,
    wintype: Oid,
    wincollid: Oid,
    inputcollid: Oid,
    args: [*c]List,
    aggfilter: [*c]Expr,
    winref: Index,
    winstar: bool,
    winagg: bool,
    location: c_int,
};
pub const WindowFunc = struct_WindowFunc;
pub const struct_SubscriptingRef = extern struct {
    xpr: Expr,
    refcontainertype: Oid,
    refelemtype: Oid,
    refrestype: Oid,
    reftypmod: int32,
    refcollid: Oid,
    refupperindexpr: [*c]List,
    reflowerindexpr: [*c]List,
    refexpr: [*c]Expr,
    refassgnexpr: [*c]Expr,
};
pub const SubscriptingRef = struct_SubscriptingRef;
pub const COERCION_IMPLICIT: c_int = 0;
pub const COERCION_ASSIGNMENT: c_int = 1;
pub const COERCION_PLPGSQL: c_int = 2;
pub const COERCION_EXPLICIT: c_int = 3;
pub const enum_CoercionContext = c_uint;
pub const CoercionContext = enum_CoercionContext;
pub const COERCE_EXPLICIT_CALL: c_int = 0;
pub const COERCE_EXPLICIT_CAST: c_int = 1;
pub const COERCE_IMPLICIT_CAST: c_int = 2;
pub const COERCE_SQL_SYNTAX: c_int = 3;
pub const enum_CoercionForm = c_uint;
pub const CoercionForm = enum_CoercionForm;
pub const struct_FuncExpr = extern struct {
    xpr: Expr,
    funcid: Oid,
    funcresulttype: Oid,
    funcretset: bool,
    funcvariadic: bool,
    funcformat: CoercionForm,
    funccollid: Oid,
    inputcollid: Oid,
    args: [*c]List,
    location: c_int,
};
pub const FuncExpr = struct_FuncExpr;
pub const struct_NamedArgExpr = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    name: [*c]u8,
    argnumber: c_int,
    location: c_int,
};
pub const NamedArgExpr = struct_NamedArgExpr;
pub const struct_OpExpr = extern struct {
    xpr: Expr,
    opno: Oid,
    opfuncid: Oid,
    opresulttype: Oid,
    opretset: bool,
    opcollid: Oid,
    inputcollid: Oid,
    args: [*c]List,
    location: c_int,
};
pub const OpExpr = struct_OpExpr;
pub const DistinctExpr = OpExpr;
pub const NullIfExpr = OpExpr;
pub const struct_ScalarArrayOpExpr = extern struct {
    xpr: Expr,
    opno: Oid,
    opfuncid: Oid,
    hashfuncid: Oid,
    negfuncid: Oid,
    useOr: bool,
    inputcollid: Oid,
    args: [*c]List,
    location: c_int,
};
pub const ScalarArrayOpExpr = struct_ScalarArrayOpExpr;
pub const AND_EXPR: c_int = 0;
pub const OR_EXPR: c_int = 1;
pub const NOT_EXPR: c_int = 2;
pub const enum_BoolExprType = c_uint;
pub const BoolExprType = enum_BoolExprType;
pub const struct_BoolExpr = extern struct {
    xpr: Expr,
    boolop: BoolExprType,
    args: [*c]List,
    location: c_int,
};
pub const BoolExpr = struct_BoolExpr;
pub const EXISTS_SUBLINK: c_int = 0;
pub const ALL_SUBLINK: c_int = 1;
pub const ANY_SUBLINK: c_int = 2;
pub const ROWCOMPARE_SUBLINK: c_int = 3;
pub const EXPR_SUBLINK: c_int = 4;
pub const MULTIEXPR_SUBLINK: c_int = 5;
pub const ARRAY_SUBLINK: c_int = 6;
pub const CTE_SUBLINK: c_int = 7;
pub const enum_SubLinkType = c_uint;
pub const SubLinkType = enum_SubLinkType;
pub const struct_SubLink = extern struct {
    xpr: Expr,
    subLinkType: SubLinkType,
    subLinkId: c_int,
    testexpr: [*c]Node,
    operName: [*c]List,
    subselect: [*c]Node,
    location: c_int,
};
pub const SubLink = struct_SubLink;
pub const struct_SubPlan = extern struct {
    xpr: Expr,
    subLinkType: SubLinkType,
    testexpr: [*c]Node,
    paramIds: [*c]List,
    plan_id: c_int,
    plan_name: [*c]u8,
    firstColType: Oid,
    firstColTypmod: int32,
    firstColCollation: Oid,
    useHashTable: bool,
    unknownEqFalse: bool,
    parallel_safe: bool,
    setParam: [*c]List,
    parParam: [*c]List,
    args: [*c]List,
    startup_cost: Cost,
    per_call_cost: Cost,
};
pub const SubPlan = struct_SubPlan;
pub const struct_AlternativeSubPlan = extern struct {
    xpr: Expr,
    subplans: [*c]List,
};
pub const AlternativeSubPlan = struct_AlternativeSubPlan;
pub const struct_FieldSelect = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    fieldnum: AttrNumber,
    resulttype: Oid,
    resulttypmod: int32,
    resultcollid: Oid,
};
pub const FieldSelect = struct_FieldSelect;
pub const struct_FieldStore = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    newvals: [*c]List,
    fieldnums: [*c]List,
    resulttype: Oid,
};
pub const FieldStore = struct_FieldStore;
pub const struct_RelabelType = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    resulttype: Oid,
    resulttypmod: int32,
    resultcollid: Oid,
    relabelformat: CoercionForm,
    location: c_int,
};
pub const RelabelType = struct_RelabelType;
pub const struct_CoerceViaIO = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    resulttype: Oid,
    resultcollid: Oid,
    coerceformat: CoercionForm,
    location: c_int,
};
pub const CoerceViaIO = struct_CoerceViaIO;
pub const struct_ArrayCoerceExpr = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    elemexpr: [*c]Expr,
    resulttype: Oid,
    resulttypmod: int32,
    resultcollid: Oid,
    coerceformat: CoercionForm,
    location: c_int,
};
pub const ArrayCoerceExpr = struct_ArrayCoerceExpr;
pub const struct_ConvertRowtypeExpr = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    resulttype: Oid,
    convertformat: CoercionForm,
    location: c_int,
};
pub const ConvertRowtypeExpr = struct_ConvertRowtypeExpr;
pub const struct_CollateExpr = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    collOid: Oid,
    location: c_int,
};
pub const CollateExpr = struct_CollateExpr;
pub const struct_CaseExpr = extern struct {
    xpr: Expr,
    casetype: Oid,
    casecollid: Oid,
    arg: [*c]Expr,
    args: [*c]List,
    defresult: [*c]Expr,
    location: c_int,
};
pub const CaseExpr = struct_CaseExpr;
pub const struct_CaseWhen = extern struct {
    xpr: Expr,
    expr: [*c]Expr,
    result: [*c]Expr,
    location: c_int,
};
pub const CaseWhen = struct_CaseWhen;
pub const struct_CaseTestExpr = extern struct {
    xpr: Expr,
    typeId: Oid,
    typeMod: int32,
    collation: Oid,
};
pub const CaseTestExpr = struct_CaseTestExpr;
pub const struct_ArrayExpr = extern struct {
    xpr: Expr,
    array_typeid: Oid,
    array_collid: Oid,
    element_typeid: Oid,
    elements: [*c]List,
    multidims: bool,
    location: c_int,
};
pub const ArrayExpr = struct_ArrayExpr;
pub const struct_RowExpr = extern struct {
    xpr: Expr,
    args: [*c]List,
    row_typeid: Oid,
    row_format: CoercionForm,
    colnames: [*c]List,
    location: c_int,
};
pub const RowExpr = struct_RowExpr;
pub const ROWCOMPARE_LT: c_int = 1;
pub const ROWCOMPARE_LE: c_int = 2;
pub const ROWCOMPARE_EQ: c_int = 3;
pub const ROWCOMPARE_GE: c_int = 4;
pub const ROWCOMPARE_GT: c_int = 5;
pub const ROWCOMPARE_NE: c_int = 6;
pub const enum_RowCompareType = c_uint;
pub const RowCompareType = enum_RowCompareType;
pub const struct_RowCompareExpr = extern struct {
    xpr: Expr,
    rctype: RowCompareType,
    opnos: [*c]List,
    opfamilies: [*c]List,
    inputcollids: [*c]List,
    largs: [*c]List,
    rargs: [*c]List,
};
pub const RowCompareExpr = struct_RowCompareExpr;
pub const struct_CoalesceExpr = extern struct {
    xpr: Expr,
    coalescetype: Oid,
    coalescecollid: Oid,
    args: [*c]List,
    location: c_int,
};
pub const CoalesceExpr = struct_CoalesceExpr;
pub const IS_GREATEST: c_int = 0;
pub const IS_LEAST: c_int = 1;
pub const enum_MinMaxOp = c_uint;
pub const MinMaxOp = enum_MinMaxOp;
pub const struct_MinMaxExpr = extern struct {
    xpr: Expr,
    minmaxtype: Oid,
    minmaxcollid: Oid,
    inputcollid: Oid,
    op: MinMaxOp,
    args: [*c]List,
    location: c_int,
};
pub const MinMaxExpr = struct_MinMaxExpr;
pub const SVFOP_CURRENT_DATE: c_int = 0;
pub const SVFOP_CURRENT_TIME: c_int = 1;
pub const SVFOP_CURRENT_TIME_N: c_int = 2;
pub const SVFOP_CURRENT_TIMESTAMP: c_int = 3;
pub const SVFOP_CURRENT_TIMESTAMP_N: c_int = 4;
pub const SVFOP_LOCALTIME: c_int = 5;
pub const SVFOP_LOCALTIME_N: c_int = 6;
pub const SVFOP_LOCALTIMESTAMP: c_int = 7;
pub const SVFOP_LOCALTIMESTAMP_N: c_int = 8;
pub const SVFOP_CURRENT_ROLE: c_int = 9;
pub const SVFOP_CURRENT_USER: c_int = 10;
pub const SVFOP_USER: c_int = 11;
pub const SVFOP_SESSION_USER: c_int = 12;
pub const SVFOP_CURRENT_CATALOG: c_int = 13;
pub const SVFOP_CURRENT_SCHEMA: c_int = 14;
pub const enum_SQLValueFunctionOp = c_uint;
pub const SQLValueFunctionOp = enum_SQLValueFunctionOp;
pub const struct_SQLValueFunction = extern struct {
    xpr: Expr,
    op: SQLValueFunctionOp,
    type: Oid,
    typmod: int32,
    location: c_int,
};
pub const SQLValueFunction = struct_SQLValueFunction;
pub const IS_XMLCONCAT: c_int = 0;
pub const IS_XMLELEMENT: c_int = 1;
pub const IS_XMLFOREST: c_int = 2;
pub const IS_XMLPARSE: c_int = 3;
pub const IS_XMLPI: c_int = 4;
pub const IS_XMLROOT: c_int = 5;
pub const IS_XMLSERIALIZE: c_int = 6;
pub const IS_DOCUMENT: c_int = 7;
pub const enum_XmlExprOp = c_uint;
pub const XmlExprOp = enum_XmlExprOp;
pub const XMLOPTION_DOCUMENT: c_int = 0;
pub const XMLOPTION_CONTENT: c_int = 1;
pub const enum_XmlOptionType = c_uint;
pub const XmlOptionType = enum_XmlOptionType;
pub const struct_XmlExpr = extern struct {
    xpr: Expr,
    op: XmlExprOp,
    name: [*c]u8,
    named_args: [*c]List,
    arg_names: [*c]List,
    args: [*c]List,
    xmloption: XmlOptionType,
    type: Oid,
    typmod: int32,
    location: c_int,
};
pub const XmlExpr = struct_XmlExpr;
pub const IS_NULL: c_int = 0;
pub const IS_NOT_NULL: c_int = 1;
pub const enum_NullTestType = c_uint;
pub const NullTestType = enum_NullTestType;
pub const struct_NullTest = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    nulltesttype: NullTestType,
    argisrow: bool,
    location: c_int,
};
pub const NullTest = struct_NullTest;
pub const IS_TRUE: c_int = 0;
pub const IS_NOT_TRUE: c_int = 1;
pub const IS_FALSE: c_int = 2;
pub const IS_NOT_FALSE: c_int = 3;
pub const IS_UNKNOWN: c_int = 4;
pub const IS_NOT_UNKNOWN: c_int = 5;
pub const enum_BoolTestType = c_uint;
pub const BoolTestType = enum_BoolTestType;
pub const struct_BooleanTest = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    booltesttype: BoolTestType,
    location: c_int,
};
pub const BooleanTest = struct_BooleanTest;
pub const struct_CoerceToDomain = extern struct {
    xpr: Expr,
    arg: [*c]Expr,
    resulttype: Oid,
    resulttypmod: int32,
    resultcollid: Oid,
    coercionformat: CoercionForm,
    location: c_int,
};
pub const CoerceToDomain = struct_CoerceToDomain;
pub const struct_CoerceToDomainValue = extern struct {
    xpr: Expr,
    typeId: Oid,
    typeMod: int32,
    collation: Oid,
    location: c_int,
};
pub const CoerceToDomainValue = struct_CoerceToDomainValue;
pub const struct_SetToDefault = extern struct {
    xpr: Expr,
    typeId: Oid,
    typeMod: int32,
    collation: Oid,
    location: c_int,
};
pub const SetToDefault = struct_SetToDefault;
pub const struct_CurrentOfExpr = extern struct {
    xpr: Expr,
    cvarno: Index,
    cursor_name: [*c]u8,
    cursor_param: c_int,
};
pub const CurrentOfExpr = struct_CurrentOfExpr;
pub const struct_NextValueExpr = extern struct {
    xpr: Expr,
    seqid: Oid,
    typeId: Oid,
};
pub const NextValueExpr = struct_NextValueExpr;
pub const struct_InferenceElem = extern struct {
    xpr: Expr,
    expr: [*c]Node,
    infercollid: Oid,
    inferopclass: Oid,
};
pub const InferenceElem = struct_InferenceElem;
pub const struct_TargetEntry = extern struct {
    xpr: Expr,
    expr: [*c]Expr,
    resno: AttrNumber,
    resname: [*c]u8,
    ressortgroupref: Index,
    resorigtbl: Oid,
    resorigcol: AttrNumber,
    resjunk: bool,
};
pub const TargetEntry = struct_TargetEntry;
pub const struct_RangeTblRef = extern struct {
    type: NodeTag,
    rtindex: c_int,
};
pub const RangeTblRef = struct_RangeTblRef;
pub const struct_JoinExpr = extern struct {
    type: NodeTag,
    jointype: JoinType,
    isNatural: bool,
    larg: [*c]Node,
    rarg: [*c]Node,
    usingClause: [*c]List,
    join_using_alias: [*c]Alias,
    quals: [*c]Node,
    alias: [*c]Alias,
    rtindex: c_int,
};
pub const JoinExpr = struct_JoinExpr;
pub const struct_FromExpr = extern struct {
    type: NodeTag,
    fromlist: [*c]List,
    quals: [*c]Node,
};
pub const FromExpr = struct_FromExpr;
pub const struct_OnConflictExpr = extern struct {
    type: NodeTag,
    action: OnConflictAction,
    arbiterElems: [*c]List,
    arbiterWhere: [*c]Node,
    constraint: Oid,
    onConflictSet: [*c]List,
    onConflictWhere: [*c]Node,
    exclRelIndex: c_int,
    exclRelTlist: [*c]List,
};
pub const OnConflictExpr = struct_OnConflictExpr;
pub const struct_Integer = extern struct {
    type: NodeTag,
    ival: c_int,
};
pub const Integer = struct_Integer;
pub const struct_Float = extern struct {
    type: NodeTag,
    fval: [*c]u8,
};
pub const Float = struct_Float;
pub const struct_Boolean = extern struct {
    type: NodeTag,
    boolval: bool,
};
pub const Boolean = struct_Boolean;
pub const struct_String = extern struct {
    type: NodeTag,
    sval: [*c]u8,
};
pub const String = struct_String;
pub const struct_BitString = extern struct {
    type: NodeTag,
    bsval: [*c]u8,
};
pub const BitString = struct_BitString;
pub extern fn makeInteger(i: c_int) [*c]Integer;
pub extern fn makeFloat(numericStr: [*c]u8) [*c]Float;
pub extern fn makeBoolean(@"var": bool) [*c]Boolean;
pub extern fn makeString(str: [*c]u8) [*c]String;
pub extern fn makeBitString(str: [*c]u8) [*c]BitString;
pub const struct_PartitionBoundInfoData = opaque {};
pub const PartitionBoundInfo = ?*struct_PartitionBoundInfoData;
pub const struct_PartitionKeyData = opaque {};
pub const PartitionKey = ?*struct_PartitionKeyData;
pub const struct_PartitionBoundSpec = extern struct {
    type: NodeTag,
    strategy: u8,
    is_default: bool,
    modulus: c_int,
    remainder: c_int,
    listdatums: [*c]List,
    lowerdatums: [*c]List,
    upperdatums: [*c]List,
    location: c_int,
};
pub const PartitionBoundSpec = struct_PartitionBoundSpec;
pub const struct_PartitionDescData = opaque {};
pub const PartitionDesc = ?*struct_PartitionDescData;
pub const OVERRIDING_NOT_SET: c_int = 0;
pub const OVERRIDING_USER_VALUE: c_int = 1;
pub const OVERRIDING_SYSTEM_VALUE: c_int = 2;
pub const enum_OverridingKind = c_uint;
pub const OverridingKind = enum_OverridingKind;
pub const QSRC_ORIGINAL: c_int = 0;
pub const QSRC_PARSER: c_int = 1;
pub const QSRC_INSTEAD_RULE: c_int = 2;
pub const QSRC_QUAL_INSTEAD_RULE: c_int = 3;
pub const QSRC_NON_INSTEAD_RULE: c_int = 4;
pub const enum_QuerySource = c_uint;
pub const QuerySource = enum_QuerySource;
pub const SORTBY_DEFAULT: c_int = 0;
pub const SORTBY_ASC: c_int = 1;
pub const SORTBY_DESC: c_int = 2;
pub const SORTBY_USING: c_int = 3;
pub const enum_SortByDir = c_uint;
pub const SortByDir = enum_SortByDir;
pub const SORTBY_NULLS_DEFAULT: c_int = 0;
pub const SORTBY_NULLS_FIRST: c_int = 1;
pub const SORTBY_NULLS_LAST: c_int = 2;
pub const enum_SortByNulls = c_uint;
pub const SortByNulls = enum_SortByNulls;
pub const SET_QUANTIFIER_DEFAULT: c_int = 0;
pub const SET_QUANTIFIER_ALL: c_int = 1;
pub const SET_QUANTIFIER_DISTINCT: c_int = 2;
pub const enum_SetQuantifier = c_uint;
pub const SetQuantifier = enum_SetQuantifier;
pub const AclMode = uint32;
pub const struct_Query = extern struct {
    type: NodeTag,
    commandType: CmdType,
    querySource: QuerySource,
    queryId: uint64,
    canSetTag: bool,
    utilityStmt: [*c]Node,
    resultRelation: c_int,
    hasAggs: bool,
    hasWindowFuncs: bool,
    hasTargetSRFs: bool,
    hasSubLinks: bool,
    hasDistinctOn: bool,
    hasRecursive: bool,
    hasModifyingCTE: bool,
    hasForUpdate: bool,
    hasRowSecurity: bool,
    isReturn: bool,
    cteList: [*c]List,
    rtable: [*c]List,
    jointree: [*c]FromExpr,
    mergeActionList: [*c]List,
    mergeUseOuterJoin: bool,
    targetList: [*c]List,
    override: OverridingKind,
    onConflict: [*c]OnConflictExpr,
    returningList: [*c]List,
    groupClause: [*c]List,
    groupDistinct: bool,
    groupingSets: [*c]List,
    havingQual: [*c]Node,
    windowClause: [*c]List,
    distinctClause: [*c]List,
    sortClause: [*c]List,
    limitOffset: [*c]Node,
    limitCount: [*c]Node,
    limitOption: LimitOption,
    rowMarks: [*c]List,
    setOperations: [*c]Node,
    constraintDeps: [*c]List,
    withCheckOptions: [*c]List,
    stmt_location: c_int,
    stmt_len: c_int,
};
pub const Query = struct_Query;
pub const struct_TypeName = extern struct {
    type: NodeTag,
    names: [*c]List,
    typeOid: Oid,
    setof: bool,
    pct_type: bool,
    typmods: [*c]List,
    typemod: int32,
    arrayBounds: [*c]List,
    location: c_int,
};
pub const TypeName = struct_TypeName;
pub const struct_ColumnRef = extern struct {
    type: NodeTag,
    fields: [*c]List,
    location: c_int,
};
pub const ColumnRef = struct_ColumnRef;
pub const struct_ParamRef = extern struct {
    type: NodeTag,
    number: c_int,
    location: c_int,
};
pub const ParamRef = struct_ParamRef;
pub const AEXPR_OP: c_int = 0;
pub const AEXPR_OP_ANY: c_int = 1;
pub const AEXPR_OP_ALL: c_int = 2;
pub const AEXPR_DISTINCT: c_int = 3;
pub const AEXPR_NOT_DISTINCT: c_int = 4;
pub const AEXPR_NULLIF: c_int = 5;
pub const AEXPR_IN: c_int = 6;
pub const AEXPR_LIKE: c_int = 7;
pub const AEXPR_ILIKE: c_int = 8;
pub const AEXPR_SIMILAR: c_int = 9;
pub const AEXPR_BETWEEN: c_int = 10;
pub const AEXPR_NOT_BETWEEN: c_int = 11;
pub const AEXPR_BETWEEN_SYM: c_int = 12;
pub const AEXPR_NOT_BETWEEN_SYM: c_int = 13;
pub const enum_A_Expr_Kind = c_uint;
pub const A_Expr_Kind = enum_A_Expr_Kind;
pub const struct_A_Expr = extern struct {
    type: NodeTag,
    kind: A_Expr_Kind,
    name: [*c]List,
    lexpr: [*c]Node,
    rexpr: [*c]Node,
    location: c_int,
};
pub const A_Expr = struct_A_Expr;
pub const union_ValUnion = extern union {
    node: Node,
    ival: Integer,
    fval: Float,
    boolval: Boolean,
    sval: String,
    bsval: BitString,
};
pub const struct_A_Const = extern struct {
    type: NodeTag,
    val: union_ValUnion,
    isnull: bool,
    location: c_int,
};
pub const A_Const = struct_A_Const;
pub const struct_TypeCast = extern struct {
    type: NodeTag,
    arg: [*c]Node,
    typeName: [*c]TypeName,
    location: c_int,
};
pub const TypeCast = struct_TypeCast;
pub const struct_CollateClause = extern struct {
    type: NodeTag,
    arg: [*c]Node,
    collname: [*c]List,
    location: c_int,
};
pub const CollateClause = struct_CollateClause;
pub const ROLESPEC_CSTRING: c_int = 0;
pub const ROLESPEC_CURRENT_ROLE: c_int = 1;
pub const ROLESPEC_CURRENT_USER: c_int = 2;
pub const ROLESPEC_SESSION_USER: c_int = 3;
pub const ROLESPEC_PUBLIC: c_int = 4;
pub const enum_RoleSpecType = c_uint;
pub const RoleSpecType = enum_RoleSpecType;
pub const struct_RoleSpec = extern struct {
    type: NodeTag,
    roletype: RoleSpecType,
    rolename: [*c]u8,
    location: c_int,
};
pub const RoleSpec = struct_RoleSpec;
pub const struct_WindowDef = extern struct {
    type: NodeTag,
    name: [*c]u8,
    refname: [*c]u8,
    partitionClause: [*c]List,
    orderClause: [*c]List,
    frameOptions: c_int,
    startOffset: [*c]Node,
    endOffset: [*c]Node,
    location: c_int,
};
pub const struct_FuncCall = extern struct {
    type: NodeTag,
    funcname: [*c]List,
    args: [*c]List,
    agg_order: [*c]List,
    agg_filter: [*c]Node,
    over: [*c]struct_WindowDef,
    agg_within_group: bool,
    agg_star: bool,
    agg_distinct: bool,
    func_variadic: bool,
    funcformat: CoercionForm,
    location: c_int,
};
pub const FuncCall = struct_FuncCall;
pub const struct_A_Star = extern struct {
    type: NodeTag,
};
pub const A_Star = struct_A_Star;
pub const struct_A_Indices = extern struct {
    type: NodeTag,
    is_slice: bool,
    lidx: [*c]Node,
    uidx: [*c]Node,
};
pub const A_Indices = struct_A_Indices;
pub const struct_A_Indirection = extern struct {
    type: NodeTag,
    arg: [*c]Node,
    indirection: [*c]List,
};
pub const A_Indirection = struct_A_Indirection;
pub const struct_A_ArrayExpr = extern struct {
    type: NodeTag,
    elements: [*c]List,
    location: c_int,
};
pub const A_ArrayExpr = struct_A_ArrayExpr;
pub const struct_ResTarget = extern struct {
    type: NodeTag,
    name: [*c]u8,
    indirection: [*c]List,
    val: [*c]Node,
    location: c_int,
};
pub const ResTarget = struct_ResTarget;
pub const struct_MultiAssignRef = extern struct {
    type: NodeTag,
    source: [*c]Node,
    colno: c_int,
    ncolumns: c_int,
};
pub const MultiAssignRef = struct_MultiAssignRef;
pub const struct_SortBy = extern struct {
    type: NodeTag,
    node: [*c]Node,
    sortby_dir: SortByDir,
    sortby_nulls: SortByNulls,
    useOp: [*c]List,
    location: c_int,
};
pub const SortBy = struct_SortBy;
pub const WindowDef = struct_WindowDef;
pub const struct_RangeSubselect = extern struct {
    type: NodeTag,
    lateral: bool,
    subquery: [*c]Node,
    alias: [*c]Alias,
};
pub const RangeSubselect = struct_RangeSubselect;
pub const struct_RangeFunction = extern struct {
    type: NodeTag,
    lateral: bool,
    ordinality: bool,
    is_rowsfrom: bool,
    functions: [*c]List,
    alias: [*c]Alias,
    coldeflist: [*c]List,
};
pub const RangeFunction = struct_RangeFunction;
pub const struct_RangeTableFunc = extern struct {
    type: NodeTag,
    lateral: bool,
    docexpr: [*c]Node,
    rowexpr: [*c]Node,
    namespaces: [*c]List,
    columns: [*c]List,
    alias: [*c]Alias,
    location: c_int,
};
pub const RangeTableFunc = struct_RangeTableFunc;
pub const struct_RangeTableFuncCol = extern struct {
    type: NodeTag,
    colname: [*c]u8,
    typeName: [*c]TypeName,
    for_ordinality: bool,
    is_not_null: bool,
    colexpr: [*c]Node,
    coldefexpr: [*c]Node,
    location: c_int,
};
pub const RangeTableFuncCol = struct_RangeTableFuncCol;
pub const struct_RangeTableSample = extern struct {
    type: NodeTag,
    relation: [*c]Node,
    method: [*c]List,
    args: [*c]List,
    repeatable: [*c]Node,
    location: c_int,
};
pub const RangeTableSample = struct_RangeTableSample;
pub const struct_ColumnDef = extern struct {
    type: NodeTag,
    colname: [*c]u8,
    typeName: [*c]TypeName,
    compression: [*c]u8,
    inhcount: c_int,
    is_local: bool,
    is_not_null: bool,
    is_from_type: bool,
    storage: u8,
    raw_default: [*c]Node,
    cooked_default: [*c]Node,
    identity: u8,
    identitySequence: [*c]RangeVar,
    generated: u8,
    collClause: [*c]CollateClause,
    collOid: Oid,
    constraints: [*c]List,
    fdwoptions: [*c]List,
    location: c_int,
};
pub const ColumnDef = struct_ColumnDef;
pub const struct_TableLikeClause = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    options: bits32,
    relationOid: Oid,
};
pub const TableLikeClause = struct_TableLikeClause;
pub const CREATE_TABLE_LIKE_COMMENTS: c_int = 1;
pub const CREATE_TABLE_LIKE_COMPRESSION: c_int = 2;
pub const CREATE_TABLE_LIKE_CONSTRAINTS: c_int = 4;
pub const CREATE_TABLE_LIKE_DEFAULTS: c_int = 8;
pub const CREATE_TABLE_LIKE_GENERATED: c_int = 16;
pub const CREATE_TABLE_LIKE_IDENTITY: c_int = 32;
pub const CREATE_TABLE_LIKE_INDEXES: c_int = 64;
pub const CREATE_TABLE_LIKE_STATISTICS: c_int = 128;
pub const CREATE_TABLE_LIKE_STORAGE: c_int = 256;
pub const CREATE_TABLE_LIKE_ALL: c_int = 2147483647;
pub const enum_TableLikeOption = c_uint;
pub const TableLikeOption = enum_TableLikeOption;
pub const struct_IndexElem = extern struct {
    type: NodeTag,
    name: [*c]u8,
    expr: [*c]Node,
    indexcolname: [*c]u8,
    collation: [*c]List,
    opclass: [*c]List,
    opclassopts: [*c]List,
    ordering: SortByDir,
    nulls_ordering: SortByNulls,
};
pub const IndexElem = struct_IndexElem;
pub const DEFELEM_UNSPEC: c_int = 0;
pub const DEFELEM_SET: c_int = 1;
pub const DEFELEM_ADD: c_int = 2;
pub const DEFELEM_DROP: c_int = 3;
pub const enum_DefElemAction = c_uint;
pub const DefElemAction = enum_DefElemAction;
pub const struct_DefElem = extern struct {
    type: NodeTag,
    defnamespace: [*c]u8,
    defname: [*c]u8,
    arg: [*c]Node,
    defaction: DefElemAction,
    location: c_int,
};
pub const DefElem = struct_DefElem;
pub const struct_LockingClause = extern struct {
    type: NodeTag,
    lockedRels: [*c]List,
    strength: LockClauseStrength,
    waitPolicy: LockWaitPolicy,
};
pub const LockingClause = struct_LockingClause;
pub const struct_XmlSerialize = extern struct {
    type: NodeTag,
    xmloption: XmlOptionType,
    expr: [*c]Node,
    typeName: [*c]TypeName,
    location: c_int,
};
pub const XmlSerialize = struct_XmlSerialize;
pub const struct_PartitionElem = extern struct {
    type: NodeTag,
    name: [*c]u8,
    expr: [*c]Node,
    collation: [*c]List,
    opclass: [*c]List,
    location: c_int,
};
pub const PartitionElem = struct_PartitionElem;
pub const struct_PartitionSpec = extern struct {
    type: NodeTag,
    strategy: [*c]u8,
    partParams: [*c]List,
    location: c_int,
};
pub const PartitionSpec = struct_PartitionSpec;
pub const PARTITION_RANGE_DATUM_MINVALUE: c_int = -1;
pub const PARTITION_RANGE_DATUM_VALUE: c_int = 0;
pub const PARTITION_RANGE_DATUM_MAXVALUE: c_int = 1;
pub const enum_PartitionRangeDatumKind = c_int;
pub const PartitionRangeDatumKind = enum_PartitionRangeDatumKind;
pub const struct_PartitionRangeDatum = extern struct {
    type: NodeTag,
    kind: PartitionRangeDatumKind,
    value: [*c]Node,
    location: c_int,
};
pub const PartitionRangeDatum = struct_PartitionRangeDatum;
pub const struct_PartitionCmd = extern struct {
    type: NodeTag,
    name: [*c]RangeVar,
    bound: [*c]PartitionBoundSpec,
    concurrent: bool,
};
pub const PartitionCmd = struct_PartitionCmd;
pub const RTE_RELATION: c_int = 0;
pub const RTE_SUBQUERY: c_int = 1;
pub const RTE_JOIN: c_int = 2;
pub const RTE_FUNCTION: c_int = 3;
pub const RTE_TABLEFUNC: c_int = 4;
pub const RTE_VALUES: c_int = 5;
pub const RTE_CTE: c_int = 6;
pub const RTE_NAMEDTUPLESTORE: c_int = 7;
pub const RTE_RESULT: c_int = 8;
pub const enum_RTEKind = c_uint;
pub const RTEKind = enum_RTEKind;
pub const struct_TableSampleClause = extern struct {
    type: NodeTag,
    tsmhandler: Oid,
    args: [*c]List,
    repeatable: [*c]Expr,
};
pub const struct_RangeTblEntry = extern struct {
    type: NodeTag,
    rtekind: RTEKind,
    relid: Oid,
    relkind: u8,
    rellockmode: c_int,
    tablesample: [*c]struct_TableSampleClause,
    subquery: [*c]Query,
    security_barrier: bool,
    jointype: JoinType,
    joinmergedcols: c_int,
    joinaliasvars: [*c]List,
    joinleftcols: [*c]List,
    joinrightcols: [*c]List,
    join_using_alias: [*c]Alias,
    functions: [*c]List,
    funcordinality: bool,
    tablefunc: [*c]TableFunc,
    values_lists: [*c]List,
    ctename: [*c]u8,
    ctelevelsup: Index,
    self_reference: bool,
    coltypes: [*c]List,
    coltypmods: [*c]List,
    colcollations: [*c]List,
    enrname: [*c]u8,
    enrtuples: Cardinality,
    alias: [*c]Alias,
    eref: [*c]Alias,
    lateral: bool,
    inh: bool,
    inFromCl: bool,
    requiredPerms: AclMode,
    checkAsUser: Oid,
    selectedCols: [*c]Bitmapset,
    insertedCols: [*c]Bitmapset,
    updatedCols: [*c]Bitmapset,
    extraUpdatedCols: [*c]Bitmapset,
    securityQuals: [*c]List,
};
pub const RangeTblEntry = struct_RangeTblEntry;
pub const struct_RangeTblFunction = extern struct {
    type: NodeTag,
    funcexpr: [*c]Node,
    funccolcount: c_int,
    funccolnames: [*c]List,
    funccoltypes: [*c]List,
    funccoltypmods: [*c]List,
    funccolcollations: [*c]List,
    funcparams: [*c]Bitmapset,
};
pub const RangeTblFunction = struct_RangeTblFunction;
pub const TableSampleClause = struct_TableSampleClause;
pub const WCO_VIEW_CHECK: c_int = 0;
pub const WCO_RLS_INSERT_CHECK: c_int = 1;
pub const WCO_RLS_UPDATE_CHECK: c_int = 2;
pub const WCO_RLS_CONFLICT_CHECK: c_int = 3;
pub const WCO_RLS_MERGE_UPDATE_CHECK: c_int = 4;
pub const WCO_RLS_MERGE_DELETE_CHECK: c_int = 5;
pub const enum_WCOKind = c_uint;
pub const WCOKind = enum_WCOKind;
pub const struct_WithCheckOption = extern struct {
    type: NodeTag,
    kind: WCOKind,
    relname: [*c]u8,
    polname: [*c]u8,
    qual: [*c]Node,
    cascaded: bool,
};
pub const WithCheckOption = struct_WithCheckOption;
pub const struct_SortGroupClause = extern struct {
    type: NodeTag,
    tleSortGroupRef: Index,
    eqop: Oid,
    sortop: Oid,
    nulls_first: bool,
    hashable: bool,
};
pub const SortGroupClause = struct_SortGroupClause;
pub const GROUPING_SET_EMPTY: c_int = 0;
pub const GROUPING_SET_SIMPLE: c_int = 1;
pub const GROUPING_SET_ROLLUP: c_int = 2;
pub const GROUPING_SET_CUBE: c_int = 3;
pub const GROUPING_SET_SETS: c_int = 4;
pub const enum_GroupingSetKind = c_uint;
pub const GroupingSetKind = enum_GroupingSetKind;
pub const struct_GroupingSet = extern struct {
    type: NodeTag,
    kind: GroupingSetKind,
    content: [*c]List,
    location: c_int,
};
pub const GroupingSet = struct_GroupingSet;
pub const struct_WindowClause = extern struct {
    type: NodeTag,
    name: [*c]u8,
    refname: [*c]u8,
    partitionClause: [*c]List,
    orderClause: [*c]List,
    frameOptions: c_int,
    startOffset: [*c]Node,
    endOffset: [*c]Node,
    runCondition: [*c]List,
    startInRangeFunc: Oid,
    endInRangeFunc: Oid,
    inRangeColl: Oid,
    inRangeAsc: bool,
    inRangeNullsFirst: bool,
    winref: Index,
    copiedOrder: bool,
};
pub const WindowClause = struct_WindowClause;
pub const struct_RowMarkClause = extern struct {
    type: NodeTag,
    rti: Index,
    strength: LockClauseStrength,
    waitPolicy: LockWaitPolicy,
    pushedDown: bool,
};
pub const RowMarkClause = struct_RowMarkClause;
pub const struct_WithClause = extern struct {
    type: NodeTag,
    ctes: [*c]List,
    recursive: bool,
    location: c_int,
};
pub const WithClause = struct_WithClause;
pub const struct_InferClause = extern struct {
    type: NodeTag,
    indexElems: [*c]List,
    whereClause: [*c]Node,
    conname: [*c]u8,
    location: c_int,
};
pub const InferClause = struct_InferClause;
pub const struct_OnConflictClause = extern struct {
    type: NodeTag,
    action: OnConflictAction,
    infer: [*c]InferClause,
    targetList: [*c]List,
    whereClause: [*c]Node,
    location: c_int,
};
pub const OnConflictClause = struct_OnConflictClause;
pub const CTEMaterializeDefault: c_int = 0;
pub const CTEMaterializeAlways: c_int = 1;
pub const CTEMaterializeNever: c_int = 2;
pub const enum_CTEMaterialize = c_uint;
pub const CTEMaterialize = enum_CTEMaterialize;
pub const struct_CTESearchClause = extern struct {
    type: NodeTag,
    search_col_list: [*c]List,
    search_breadth_first: bool,
    search_seq_column: [*c]u8,
    location: c_int,
};
pub const CTESearchClause = struct_CTESearchClause;
pub const struct_CTECycleClause = extern struct {
    type: NodeTag,
    cycle_col_list: [*c]List,
    cycle_mark_column: [*c]u8,
    cycle_mark_value: [*c]Node,
    cycle_mark_default: [*c]Node,
    cycle_path_column: [*c]u8,
    location: c_int,
    cycle_mark_type: Oid,
    cycle_mark_typmod: c_int,
    cycle_mark_collation: Oid,
    cycle_mark_neop: Oid,
};
pub const CTECycleClause = struct_CTECycleClause;
pub const struct_CommonTableExpr = extern struct {
    type: NodeTag,
    ctename: [*c]u8,
    aliascolnames: [*c]List,
    ctematerialized: CTEMaterialize,
    ctequery: [*c]Node,
    search_clause: [*c]CTESearchClause,
    cycle_clause: [*c]CTECycleClause,
    location: c_int,
    cterecursive: bool,
    cterefcount: c_int,
    ctecolnames: [*c]List,
    ctecoltypes: [*c]List,
    ctecoltypmods: [*c]List,
    ctecolcollations: [*c]List,
};
pub const CommonTableExpr = struct_CommonTableExpr;
pub const struct_MergeWhenClause = extern struct {
    type: NodeTag,
    matched: bool,
    commandType: CmdType,
    override: OverridingKind,
    condition: [*c]Node,
    targetList: [*c]List,
    values: [*c]List,
};
pub const MergeWhenClause = struct_MergeWhenClause;
pub const struct_MergeAction = extern struct {
    type: NodeTag,
    matched: bool,
    commandType: CmdType,
    override: OverridingKind,
    qual: [*c]Node,
    targetList: [*c]List,
    updateColnos: [*c]List,
};
pub const MergeAction = struct_MergeAction;
pub const struct_TriggerTransition = extern struct {
    type: NodeTag,
    name: [*c]u8,
    isNew: bool,
    isTable: bool,
};
pub const TriggerTransition = struct_TriggerTransition;
pub const struct_RawStmt = extern struct {
    type: NodeTag,
    stmt: [*c]Node,
    stmt_location: c_int,
    stmt_len: c_int,
};
pub const RawStmt = struct_RawStmt;
pub const struct_InsertStmt = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    cols: [*c]List,
    selectStmt: [*c]Node,
    onConflictClause: [*c]OnConflictClause,
    returningList: [*c]List,
    withClause: [*c]WithClause,
    override: OverridingKind,
};
pub const InsertStmt = struct_InsertStmt;
pub const struct_DeleteStmt = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    usingClause: [*c]List,
    whereClause: [*c]Node,
    returningList: [*c]List,
    withClause: [*c]WithClause,
};
pub const DeleteStmt = struct_DeleteStmt;
pub const struct_UpdateStmt = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    targetList: [*c]List,
    whereClause: [*c]Node,
    fromClause: [*c]List,
    returningList: [*c]List,
    withClause: [*c]WithClause,
};
pub const UpdateStmt = struct_UpdateStmt;
pub const struct_MergeStmt = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    sourceRelation: [*c]Node,
    joinCondition: [*c]Node,
    mergeWhenClauses: [*c]List,
    withClause: [*c]WithClause,
};
pub const MergeStmt = struct_MergeStmt;
pub const SETOP_NONE: c_int = 0;
pub const SETOP_UNION: c_int = 1;
pub const SETOP_INTERSECT: c_int = 2;
pub const SETOP_EXCEPT: c_int = 3;
pub const enum_SetOperation = c_uint;
pub const SetOperation = enum_SetOperation;
pub const struct_SelectStmt = extern struct {
    type: NodeTag,
    distinctClause: [*c]List,
    intoClause: [*c]IntoClause,
    targetList: [*c]List,
    fromClause: [*c]List,
    whereClause: [*c]Node,
    groupClause: [*c]List,
    groupDistinct: bool,
    havingClause: [*c]Node,
    windowClause: [*c]List,
    valuesLists: [*c]List,
    sortClause: [*c]List,
    limitOffset: [*c]Node,
    limitCount: [*c]Node,
    limitOption: LimitOption,
    lockingClause: [*c]List,
    withClause: [*c]WithClause,
    op: SetOperation,
    all: bool,
    larg: [*c]struct_SelectStmt,
    rarg: [*c]struct_SelectStmt,
};
pub const SelectStmt = struct_SelectStmt;
pub const struct_SetOperationStmt = extern struct {
    type: NodeTag,
    op: SetOperation,
    all: bool,
    larg: [*c]Node,
    rarg: [*c]Node,
    colTypes: [*c]List,
    colTypmods: [*c]List,
    colCollations: [*c]List,
    groupClauses: [*c]List,
};
pub const SetOperationStmt = struct_SetOperationStmt;
pub const struct_ReturnStmt = extern struct {
    type: NodeTag,
    returnval: [*c]Node,
};
pub const ReturnStmt = struct_ReturnStmt;
pub const struct_PLAssignStmt = extern struct {
    type: NodeTag,
    name: [*c]u8,
    indirection: [*c]List,
    nnames: c_int,
    val: [*c]SelectStmt,
    location: c_int,
};
pub const PLAssignStmt = struct_PLAssignStmt;
pub const OBJECT_ACCESS_METHOD: c_int = 0;
pub const OBJECT_AGGREGATE: c_int = 1;
pub const OBJECT_AMOP: c_int = 2;
pub const OBJECT_AMPROC: c_int = 3;
pub const OBJECT_ATTRIBUTE: c_int = 4;
pub const OBJECT_CAST: c_int = 5;
pub const OBJECT_COLUMN: c_int = 6;
pub const OBJECT_COLLATION: c_int = 7;
pub const OBJECT_CONVERSION: c_int = 8;
pub const OBJECT_DATABASE: c_int = 9;
pub const OBJECT_DEFAULT: c_int = 10;
pub const OBJECT_DEFACL: c_int = 11;
pub const OBJECT_DOMAIN: c_int = 12;
pub const OBJECT_DOMCONSTRAINT: c_int = 13;
pub const OBJECT_EVENT_TRIGGER: c_int = 14;
pub const OBJECT_EXTENSION: c_int = 15;
pub const OBJECT_FDW: c_int = 16;
pub const OBJECT_FOREIGN_SERVER: c_int = 17;
pub const OBJECT_FOREIGN_TABLE: c_int = 18;
pub const OBJECT_FUNCTION: c_int = 19;
pub const OBJECT_INDEX: c_int = 20;
pub const OBJECT_LANGUAGE: c_int = 21;
pub const OBJECT_LARGEOBJECT: c_int = 22;
pub const OBJECT_MATVIEW: c_int = 23;
pub const OBJECT_OPCLASS: c_int = 24;
pub const OBJECT_OPERATOR: c_int = 25;
pub const OBJECT_OPFAMILY: c_int = 26;
pub const OBJECT_PARAMETER_ACL: c_int = 27;
pub const OBJECT_POLICY: c_int = 28;
pub const OBJECT_PROCEDURE: c_int = 29;
pub const OBJECT_PUBLICATION: c_int = 30;
pub const OBJECT_PUBLICATION_NAMESPACE: c_int = 31;
pub const OBJECT_PUBLICATION_REL: c_int = 32;
pub const OBJECT_ROLE: c_int = 33;
pub const OBJECT_ROUTINE: c_int = 34;
pub const OBJECT_RULE: c_int = 35;
pub const OBJECT_SCHEMA: c_int = 36;
pub const OBJECT_SEQUENCE: c_int = 37;
pub const OBJECT_SUBSCRIPTION: c_int = 38;
pub const OBJECT_STATISTIC_EXT: c_int = 39;
pub const OBJECT_TABCONSTRAINT: c_int = 40;
pub const OBJECT_TABLE: c_int = 41;
pub const OBJECT_TABLESPACE: c_int = 42;
pub const OBJECT_TRANSFORM: c_int = 43;
pub const OBJECT_TRIGGER: c_int = 44;
pub const OBJECT_TSCONFIGURATION: c_int = 45;
pub const OBJECT_TSDICTIONARY: c_int = 46;
pub const OBJECT_TSPARSER: c_int = 47;
pub const OBJECT_TSTEMPLATE: c_int = 48;
pub const OBJECT_TYPE: c_int = 49;
pub const OBJECT_USER_MAPPING: c_int = 50;
pub const OBJECT_VIEW: c_int = 51;
pub const enum_ObjectType = c_uint;
pub const ObjectType = enum_ObjectType;
pub const struct_CreateSchemaStmt = extern struct {
    type: NodeTag,
    schemaname: [*c]u8,
    authrole: [*c]RoleSpec,
    schemaElts: [*c]List,
    if_not_exists: bool,
};
pub const CreateSchemaStmt = struct_CreateSchemaStmt;
pub const DROP_RESTRICT: c_int = 0;
pub const DROP_CASCADE: c_int = 1;
pub const enum_DropBehavior = c_uint;
pub const DropBehavior = enum_DropBehavior;
pub const struct_AlterTableStmt = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    cmds: [*c]List,
    objtype: ObjectType,
    missing_ok: bool,
};
pub const AlterTableStmt = struct_AlterTableStmt;
pub const AT_AddColumn: c_int = 0;
pub const AT_AddColumnRecurse: c_int = 1;
pub const AT_AddColumnToView: c_int = 2;
pub const AT_ColumnDefault: c_int = 3;
pub const AT_CookedColumnDefault: c_int = 4;
pub const AT_DropNotNull: c_int = 5;
pub const AT_SetNotNull: c_int = 6;
pub const AT_DropExpression: c_int = 7;
pub const AT_CheckNotNull: c_int = 8;
pub const AT_SetStatistics: c_int = 9;
pub const AT_SetOptions: c_int = 10;
pub const AT_ResetOptions: c_int = 11;
pub const AT_SetStorage: c_int = 12;
pub const AT_SetCompression: c_int = 13;
pub const AT_DropColumn: c_int = 14;
pub const AT_DropColumnRecurse: c_int = 15;
pub const AT_AddIndex: c_int = 16;
pub const AT_ReAddIndex: c_int = 17;
pub const AT_AddConstraint: c_int = 18;
pub const AT_AddConstraintRecurse: c_int = 19;
pub const AT_ReAddConstraint: c_int = 20;
pub const AT_ReAddDomainConstraint: c_int = 21;
pub const AT_AlterConstraint: c_int = 22;
pub const AT_ValidateConstraint: c_int = 23;
pub const AT_ValidateConstraintRecurse: c_int = 24;
pub const AT_AddIndexConstraint: c_int = 25;
pub const AT_DropConstraint: c_int = 26;
pub const AT_DropConstraintRecurse: c_int = 27;
pub const AT_ReAddComment: c_int = 28;
pub const AT_AlterColumnType: c_int = 29;
pub const AT_AlterColumnGenericOptions: c_int = 30;
pub const AT_ChangeOwner: c_int = 31;
pub const AT_ClusterOn: c_int = 32;
pub const AT_DropCluster: c_int = 33;
pub const AT_SetLogged: c_int = 34;
pub const AT_SetUnLogged: c_int = 35;
pub const AT_DropOids: c_int = 36;
pub const AT_SetAccessMethod: c_int = 37;
pub const AT_SetTableSpace: c_int = 38;
pub const AT_SetRelOptions: c_int = 39;
pub const AT_ResetRelOptions: c_int = 40;
pub const AT_ReplaceRelOptions: c_int = 41;
pub const AT_EnableTrig: c_int = 42;
pub const AT_EnableAlwaysTrig: c_int = 43;
pub const AT_EnableReplicaTrig: c_int = 44;
pub const AT_DisableTrig: c_int = 45;
pub const AT_EnableTrigAll: c_int = 46;
pub const AT_DisableTrigAll: c_int = 47;
pub const AT_EnableTrigUser: c_int = 48;
pub const AT_DisableTrigUser: c_int = 49;
pub const AT_EnableRule: c_int = 50;
pub const AT_EnableAlwaysRule: c_int = 51;
pub const AT_EnableReplicaRule: c_int = 52;
pub const AT_DisableRule: c_int = 53;
pub const AT_AddInherit: c_int = 54;
pub const AT_DropInherit: c_int = 55;
pub const AT_AddOf: c_int = 56;
pub const AT_DropOf: c_int = 57;
pub const AT_ReplicaIdentity: c_int = 58;
pub const AT_EnableRowSecurity: c_int = 59;
pub const AT_DisableRowSecurity: c_int = 60;
pub const AT_ForceRowSecurity: c_int = 61;
pub const AT_NoForceRowSecurity: c_int = 62;
pub const AT_GenericOptions: c_int = 63;
pub const AT_AttachPartition: c_int = 64;
pub const AT_DetachPartition: c_int = 65;
pub const AT_DetachPartitionFinalize: c_int = 66;
pub const AT_AddIdentity: c_int = 67;
pub const AT_SetIdentity: c_int = 68;
pub const AT_DropIdentity: c_int = 69;
pub const AT_ReAddStatistics: c_int = 70;
pub const enum_AlterTableType = c_uint;
pub const AlterTableType = enum_AlterTableType;
pub const struct_ReplicaIdentityStmt = extern struct {
    type: NodeTag,
    identity_type: u8,
    name: [*c]u8,
};
pub const ReplicaIdentityStmt = struct_ReplicaIdentityStmt;
pub const struct_AlterTableCmd = extern struct {
    type: NodeTag,
    subtype: AlterTableType,
    name: [*c]u8,
    num: int16,
    newowner: [*c]RoleSpec,
    def: [*c]Node,
    behavior: DropBehavior,
    missing_ok: bool,
    recurse: bool,
};
pub const AlterTableCmd = struct_AlterTableCmd;
pub const struct_AlterCollationStmt = extern struct {
    type: NodeTag,
    collname: [*c]List,
};
pub const AlterCollationStmt = struct_AlterCollationStmt;
pub const struct_AlterDomainStmt = extern struct {
    type: NodeTag,
    subtype: u8,
    typeName: [*c]List,
    name: [*c]u8,
    def: [*c]Node,
    behavior: DropBehavior,
    missing_ok: bool,
};
pub const AlterDomainStmt = struct_AlterDomainStmt;
pub const ACL_TARGET_OBJECT: c_int = 0;
pub const ACL_TARGET_ALL_IN_SCHEMA: c_int = 1;
pub const ACL_TARGET_DEFAULTS: c_int = 2;
pub const enum_GrantTargetType = c_uint;
pub const GrantTargetType = enum_GrantTargetType;
pub const struct_GrantStmt = extern struct {
    type: NodeTag,
    is_grant: bool,
    targtype: GrantTargetType,
    objtype: ObjectType,
    objects: [*c]List,
    privileges: [*c]List,
    grantees: [*c]List,
    grant_option: bool,
    grantor: [*c]RoleSpec,
    behavior: DropBehavior,
};
pub const GrantStmt = struct_GrantStmt;
pub const struct_ObjectWithArgs = extern struct {
    type: NodeTag,
    objname: [*c]List,
    objargs: [*c]List,
    objfuncargs: [*c]List,
    args_unspecified: bool,
};
pub const ObjectWithArgs = struct_ObjectWithArgs;
pub const struct_AccessPriv = extern struct {
    type: NodeTag,
    priv_name: [*c]u8,
    cols: [*c]List,
};
pub const AccessPriv = struct_AccessPriv;
pub const struct_GrantRoleStmt = extern struct {
    type: NodeTag,
    granted_roles: [*c]List,
    grantee_roles: [*c]List,
    is_grant: bool,
    admin_opt: bool,
    grantor: [*c]RoleSpec,
    behavior: DropBehavior,
};
pub const GrantRoleStmt = struct_GrantRoleStmt;
pub const struct_AlterDefaultPrivilegesStmt = extern struct {
    type: NodeTag,
    options: [*c]List,
    action: [*c]GrantStmt,
};
pub const AlterDefaultPrivilegesStmt = struct_AlterDefaultPrivilegesStmt;
pub const struct_CopyStmt = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    query: [*c]Node,
    attlist: [*c]List,
    is_from: bool,
    is_program: bool,
    filename: [*c]u8,
    options: [*c]List,
    whereClause: [*c]Node,
};
pub const CopyStmt = struct_CopyStmt;
pub const VAR_SET_VALUE: c_int = 0;
pub const VAR_SET_DEFAULT: c_int = 1;
pub const VAR_SET_CURRENT: c_int = 2;
pub const VAR_SET_MULTI: c_int = 3;
pub const VAR_RESET: c_int = 4;
pub const VAR_RESET_ALL: c_int = 5;
pub const enum_VariableSetKind = c_uint;
pub const VariableSetKind = enum_VariableSetKind;
pub const struct_VariableSetStmt = extern struct {
    type: NodeTag,
    kind: VariableSetKind,
    name: [*c]u8,
    args: [*c]List,
    is_local: bool,
};
pub const VariableSetStmt = struct_VariableSetStmt;
pub const struct_VariableShowStmt = extern struct {
    type: NodeTag,
    name: [*c]u8,
};
pub const VariableShowStmt = struct_VariableShowStmt;
pub const struct_CreateStmt = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    tableElts: [*c]List,
    inhRelations: [*c]List,
    partbound: [*c]PartitionBoundSpec,
    partspec: [*c]PartitionSpec,
    ofTypename: [*c]TypeName,
    constraints: [*c]List,
    options: [*c]List,
    oncommit: OnCommitAction,
    tablespacename: [*c]u8,
    accessMethod: [*c]u8,
    if_not_exists: bool,
};
pub const CreateStmt = struct_CreateStmt;
pub const CONSTR_NULL: c_int = 0;
pub const CONSTR_NOTNULL: c_int = 1;
pub const CONSTR_DEFAULT: c_int = 2;
pub const CONSTR_IDENTITY: c_int = 3;
pub const CONSTR_GENERATED: c_int = 4;
pub const CONSTR_CHECK: c_int = 5;
pub const CONSTR_PRIMARY: c_int = 6;
pub const CONSTR_UNIQUE: c_int = 7;
pub const CONSTR_EXCLUSION: c_int = 8;
pub const CONSTR_FOREIGN: c_int = 9;
pub const CONSTR_ATTR_DEFERRABLE: c_int = 10;
pub const CONSTR_ATTR_NOT_DEFERRABLE: c_int = 11;
pub const CONSTR_ATTR_DEFERRED: c_int = 12;
pub const CONSTR_ATTR_IMMEDIATE: c_int = 13;
pub const enum_ConstrType = c_uint;
pub const ConstrType = enum_ConstrType;
pub const struct_Constraint = extern struct {
    type: NodeTag,
    contype: ConstrType,
    conname: [*c]u8,
    deferrable: bool,
    initdeferred: bool,
    location: c_int,
    is_no_inherit: bool,
    raw_expr: [*c]Node,
    cooked_expr: [*c]u8,
    generated_when: u8,
    nulls_not_distinct: bool,
    keys: [*c]List,
    including: [*c]List,
    exclusions: [*c]List,
    options: [*c]List,
    indexname: [*c]u8,
    indexspace: [*c]u8,
    reset_default_tblspc: bool,
    access_method: [*c]u8,
    where_clause: [*c]Node,
    pktable: [*c]RangeVar,
    fk_attrs: [*c]List,
    pk_attrs: [*c]List,
    fk_matchtype: u8,
    fk_upd_action: u8,
    fk_del_action: u8,
    fk_del_set_cols: [*c]List,
    old_conpfeqop: [*c]List,
    old_pktable_oid: Oid,
    skip_validation: bool,
    initially_valid: bool,
};
pub const Constraint = struct_Constraint;
pub const struct_CreateTableSpaceStmt = extern struct {
    type: NodeTag,
    tablespacename: [*c]u8,
    owner: [*c]RoleSpec,
    location: [*c]u8,
    options: [*c]List,
};
pub const CreateTableSpaceStmt = struct_CreateTableSpaceStmt;
pub const struct_DropTableSpaceStmt = extern struct {
    type: NodeTag,
    tablespacename: [*c]u8,
    missing_ok: bool,
};
pub const DropTableSpaceStmt = struct_DropTableSpaceStmt;
pub const struct_AlterTableSpaceOptionsStmt = extern struct {
    type: NodeTag,
    tablespacename: [*c]u8,
    options: [*c]List,
    isReset: bool,
};
pub const AlterTableSpaceOptionsStmt = struct_AlterTableSpaceOptionsStmt;
pub const struct_AlterTableMoveAllStmt = extern struct {
    type: NodeTag,
    orig_tablespacename: [*c]u8,
    objtype: ObjectType,
    roles: [*c]List,
    new_tablespacename: [*c]u8,
    nowait: bool,
};
pub const AlterTableMoveAllStmt = struct_AlterTableMoveAllStmt;
pub const struct_CreateExtensionStmt = extern struct {
    type: NodeTag,
    extname: [*c]u8,
    if_not_exists: bool,
    options: [*c]List,
};
pub const CreateExtensionStmt = struct_CreateExtensionStmt;
pub const struct_AlterExtensionStmt = extern struct {
    type: NodeTag,
    extname: [*c]u8,
    options: [*c]List,
};
pub const AlterExtensionStmt = struct_AlterExtensionStmt;
pub const struct_AlterExtensionContentsStmt = extern struct {
    type: NodeTag,
    extname: [*c]u8,
    action: c_int,
    objtype: ObjectType,
    object: [*c]Node,
};
pub const AlterExtensionContentsStmt = struct_AlterExtensionContentsStmt;
pub const struct_CreateFdwStmt = extern struct {
    type: NodeTag,
    fdwname: [*c]u8,
    func_options: [*c]List,
    options: [*c]List,
};
pub const CreateFdwStmt = struct_CreateFdwStmt;
pub const struct_AlterFdwStmt = extern struct {
    type: NodeTag,
    fdwname: [*c]u8,
    func_options: [*c]List,
    options: [*c]List,
};
pub const AlterFdwStmt = struct_AlterFdwStmt;
pub const struct_CreateForeignServerStmt = extern struct {
    type: NodeTag,
    servername: [*c]u8,
    servertype: [*c]u8,
    version: [*c]u8,
    fdwname: [*c]u8,
    if_not_exists: bool,
    options: [*c]List,
};
pub const CreateForeignServerStmt = struct_CreateForeignServerStmt;
pub const struct_AlterForeignServerStmt = extern struct {
    type: NodeTag,
    servername: [*c]u8,
    version: [*c]u8,
    options: [*c]List,
    has_version: bool,
};
pub const AlterForeignServerStmt = struct_AlterForeignServerStmt;
pub const struct_CreateForeignTableStmt = extern struct {
    base: CreateStmt,
    servername: [*c]u8,
    options: [*c]List,
};
pub const CreateForeignTableStmt = struct_CreateForeignTableStmt;
pub const struct_CreateUserMappingStmt = extern struct {
    type: NodeTag,
    user: [*c]RoleSpec,
    servername: [*c]u8,
    if_not_exists: bool,
    options: [*c]List,
};
pub const CreateUserMappingStmt = struct_CreateUserMappingStmt;
pub const struct_AlterUserMappingStmt = extern struct {
    type: NodeTag,
    user: [*c]RoleSpec,
    servername: [*c]u8,
    options: [*c]List,
};
pub const AlterUserMappingStmt = struct_AlterUserMappingStmt;
pub const struct_DropUserMappingStmt = extern struct {
    type: NodeTag,
    user: [*c]RoleSpec,
    servername: [*c]u8,
    missing_ok: bool,
};
pub const DropUserMappingStmt = struct_DropUserMappingStmt;
pub const FDW_IMPORT_SCHEMA_ALL: c_int = 0;
pub const FDW_IMPORT_SCHEMA_LIMIT_TO: c_int = 1;
pub const FDW_IMPORT_SCHEMA_EXCEPT: c_int = 2;
pub const enum_ImportForeignSchemaType = c_uint;
pub const ImportForeignSchemaType = enum_ImportForeignSchemaType;
pub const struct_ImportForeignSchemaStmt = extern struct {
    type: NodeTag,
    server_name: [*c]u8,
    remote_schema: [*c]u8,
    local_schema: [*c]u8,
    list_type: ImportForeignSchemaType,
    table_list: [*c]List,
    options: [*c]List,
};
pub const ImportForeignSchemaStmt = struct_ImportForeignSchemaStmt;
pub const struct_CreatePolicyStmt = extern struct {
    type: NodeTag,
    policy_name: [*c]u8,
    table: [*c]RangeVar,
    cmd_name: [*c]u8,
    permissive: bool,
    roles: [*c]List,
    qual: [*c]Node,
    with_check: [*c]Node,
};
pub const CreatePolicyStmt = struct_CreatePolicyStmt;
pub const struct_AlterPolicyStmt = extern struct {
    type: NodeTag,
    policy_name: [*c]u8,
    table: [*c]RangeVar,
    roles: [*c]List,
    qual: [*c]Node,
    with_check: [*c]Node,
};
pub const AlterPolicyStmt = struct_AlterPolicyStmt;
pub const struct_CreateAmStmt = extern struct {
    type: NodeTag,
    amname: [*c]u8,
    handler_name: [*c]List,
    amtype: u8,
};
pub const CreateAmStmt = struct_CreateAmStmt;
pub const struct_CreateTrigStmt = extern struct {
    type: NodeTag,
    replace: bool,
    isconstraint: bool,
    trigname: [*c]u8,
    relation: [*c]RangeVar,
    funcname: [*c]List,
    args: [*c]List,
    row: bool,
    timing: int16,
    events: int16,
    columns: [*c]List,
    whenClause: [*c]Node,
    transitionRels: [*c]List,
    deferrable: bool,
    initdeferred: bool,
    constrrel: [*c]RangeVar,
};
pub const CreateTrigStmt = struct_CreateTrigStmt;
pub const struct_CreateEventTrigStmt = extern struct {
    type: NodeTag,
    trigname: [*c]u8,
    eventname: [*c]u8,
    whenclause: [*c]List,
    funcname: [*c]List,
};
pub const CreateEventTrigStmt = struct_CreateEventTrigStmt;
pub const struct_AlterEventTrigStmt = extern struct {
    type: NodeTag,
    trigname: [*c]u8,
    tgenabled: u8,
};
pub const AlterEventTrigStmt = struct_AlterEventTrigStmt;
pub const struct_CreatePLangStmt = extern struct {
    type: NodeTag,
    replace: bool,
    plname: [*c]u8,
    plhandler: [*c]List,
    plinline: [*c]List,
    plvalidator: [*c]List,
    pltrusted: bool,
};
pub const CreatePLangStmt = struct_CreatePLangStmt;
pub const ROLESTMT_ROLE: c_int = 0;
pub const ROLESTMT_USER: c_int = 1;
pub const ROLESTMT_GROUP: c_int = 2;
pub const enum_RoleStmtType = c_uint;
pub const RoleStmtType = enum_RoleStmtType;
pub const struct_CreateRoleStmt = extern struct {
    type: NodeTag,
    stmt_type: RoleStmtType,
    role: [*c]u8,
    options: [*c]List,
};
pub const CreateRoleStmt = struct_CreateRoleStmt;
pub const struct_AlterRoleStmt = extern struct {
    type: NodeTag,
    role: [*c]RoleSpec,
    options: [*c]List,
    action: c_int,
};
pub const AlterRoleStmt = struct_AlterRoleStmt;
pub const struct_AlterRoleSetStmt = extern struct {
    type: NodeTag,
    role: [*c]RoleSpec,
    database: [*c]u8,
    setstmt: [*c]VariableSetStmt,
};
pub const AlterRoleSetStmt = struct_AlterRoleSetStmt;
pub const struct_DropRoleStmt = extern struct {
    type: NodeTag,
    roles: [*c]List,
    missing_ok: bool,
};
pub const DropRoleStmt = struct_DropRoleStmt;
pub const struct_CreateSeqStmt = extern struct {
    type: NodeTag,
    sequence: [*c]RangeVar,
    options: [*c]List,
    ownerId: Oid,
    for_identity: bool,
    if_not_exists: bool,
};
pub const CreateSeqStmt = struct_CreateSeqStmt;
pub const struct_AlterSeqStmt = extern struct {
    type: NodeTag,
    sequence: [*c]RangeVar,
    options: [*c]List,
    for_identity: bool,
    missing_ok: bool,
};
pub const AlterSeqStmt = struct_AlterSeqStmt;
pub const struct_DefineStmt = extern struct {
    type: NodeTag,
    kind: ObjectType,
    oldstyle: bool,
    defnames: [*c]List,
    args: [*c]List,
    definition: [*c]List,
    if_not_exists: bool,
    replace: bool,
};
pub const DefineStmt = struct_DefineStmt;
pub const struct_CreateDomainStmt = extern struct {
    type: NodeTag,
    domainname: [*c]List,
    typeName: [*c]TypeName,
    collClause: [*c]CollateClause,
    constraints: [*c]List,
};
pub const CreateDomainStmt = struct_CreateDomainStmt;
pub const struct_CreateOpClassStmt = extern struct {
    type: NodeTag,
    opclassname: [*c]List,
    opfamilyname: [*c]List,
    amname: [*c]u8,
    datatype: [*c]TypeName,
    items: [*c]List,
    isDefault: bool,
};
pub const CreateOpClassStmt = struct_CreateOpClassStmt;
pub const struct_CreateOpClassItem = extern struct {
    type: NodeTag,
    itemtype: c_int,
    name: [*c]ObjectWithArgs,
    number: c_int,
    order_family: [*c]List,
    class_args: [*c]List,
    storedtype: [*c]TypeName,
};
pub const CreateOpClassItem = struct_CreateOpClassItem;
pub const struct_CreateOpFamilyStmt = extern struct {
    type: NodeTag,
    opfamilyname: [*c]List,
    amname: [*c]u8,
};
pub const CreateOpFamilyStmt = struct_CreateOpFamilyStmt;
pub const struct_AlterOpFamilyStmt = extern struct {
    type: NodeTag,
    opfamilyname: [*c]List,
    amname: [*c]u8,
    isDrop: bool,
    items: [*c]List,
};
pub const AlterOpFamilyStmt = struct_AlterOpFamilyStmt;
pub const struct_DropStmt = extern struct {
    type: NodeTag,
    objects: [*c]List,
    removeType: ObjectType,
    behavior: DropBehavior,
    missing_ok: bool,
    concurrent: bool,
};
pub const DropStmt = struct_DropStmt;
pub const struct_TruncateStmt = extern struct {
    type: NodeTag,
    relations: [*c]List,
    restart_seqs: bool,
    behavior: DropBehavior,
};
pub const TruncateStmt = struct_TruncateStmt;
pub const struct_CommentStmt = extern struct {
    type: NodeTag,
    objtype: ObjectType,
    object: [*c]Node,
    comment: [*c]u8,
};
pub const CommentStmt = struct_CommentStmt;
pub const struct_SecLabelStmt = extern struct {
    type: NodeTag,
    objtype: ObjectType,
    object: [*c]Node,
    provider: [*c]u8,
    label: [*c]u8,
};
pub const SecLabelStmt = struct_SecLabelStmt;
pub const struct_DeclareCursorStmt = extern struct {
    type: NodeTag,
    portalname: [*c]u8,
    options: c_int,
    query: [*c]Node,
};
pub const DeclareCursorStmt = struct_DeclareCursorStmt;
pub const struct_ClosePortalStmt = extern struct {
    type: NodeTag,
    portalname: [*c]u8,
};
pub const ClosePortalStmt = struct_ClosePortalStmt;
pub const FETCH_FORWARD: c_int = 0;
pub const FETCH_BACKWARD: c_int = 1;
pub const FETCH_ABSOLUTE: c_int = 2;
pub const FETCH_RELATIVE: c_int = 3;
pub const enum_FetchDirection = c_uint;
pub const FetchDirection = enum_FetchDirection;
pub const struct_FetchStmt = extern struct {
    type: NodeTag,
    direction: FetchDirection,
    howMany: c_long,
    portalname: [*c]u8,
    ismove: bool,
};
pub const FetchStmt = struct_FetchStmt;
pub const struct_IndexStmt = extern struct {
    type: NodeTag,
    idxname: [*c]u8,
    relation: [*c]RangeVar,
    accessMethod: [*c]u8,
    tableSpace: [*c]u8,
    indexParams: [*c]List,
    indexIncludingParams: [*c]List,
    options: [*c]List,
    whereClause: [*c]Node,
    excludeOpNames: [*c]List,
    idxcomment: [*c]u8,
    indexOid: Oid,
    oldNode: Oid,
    oldCreateSubid: SubTransactionId,
    oldFirstRelfilenodeSubid: SubTransactionId,
    unique: bool,
    nulls_not_distinct: bool,
    primary: bool,
    isconstraint: bool,
    deferrable: bool,
    initdeferred: bool,
    transformed: bool,
    concurrent: bool,
    if_not_exists: bool,
    reset_default_tblspc: bool,
};
pub const IndexStmt = struct_IndexStmt;
pub const struct_CreateStatsStmt = extern struct {
    type: NodeTag,
    defnames: [*c]List,
    stat_types: [*c]List,
    exprs: [*c]List,
    relations: [*c]List,
    stxcomment: [*c]u8,
    transformed: bool,
    if_not_exists: bool,
};
pub const CreateStatsStmt = struct_CreateStatsStmt;
pub const struct_StatsElem = extern struct {
    type: NodeTag,
    name: [*c]u8,
    expr: [*c]Node,
};
pub const StatsElem = struct_StatsElem;
pub const struct_AlterStatsStmt = extern struct {
    type: NodeTag,
    defnames: [*c]List,
    stxstattarget: c_int,
    missing_ok: bool,
};
pub const AlterStatsStmt = struct_AlterStatsStmt;
pub const struct_CreateFunctionStmt = extern struct {
    type: NodeTag,
    is_procedure: bool,
    replace: bool,
    funcname: [*c]List,
    parameters: [*c]List,
    returnType: [*c]TypeName,
    options: [*c]List,
    sql_body: [*c]Node,
};
pub const CreateFunctionStmt = struct_CreateFunctionStmt;
pub const FUNC_PARAM_IN: c_int = 105;
pub const FUNC_PARAM_OUT: c_int = 111;
pub const FUNC_PARAM_INOUT: c_int = 98;
pub const FUNC_PARAM_VARIADIC: c_int = 118;
pub const FUNC_PARAM_TABLE: c_int = 116;
pub const FUNC_PARAM_DEFAULT: c_int = 100;
pub const enum_FunctionParameterMode = c_uint;
pub const FunctionParameterMode = enum_FunctionParameterMode;
pub const struct_FunctionParameter = extern struct {
    type: NodeTag,
    name: [*c]u8,
    argType: [*c]TypeName,
    mode: FunctionParameterMode,
    defexpr: [*c]Node,
};
pub const FunctionParameter = struct_FunctionParameter;
pub const struct_AlterFunctionStmt = extern struct {
    type: NodeTag,
    objtype: ObjectType,
    func: [*c]ObjectWithArgs,
    actions: [*c]List,
};
pub const AlterFunctionStmt = struct_AlterFunctionStmt;
pub const struct_DoStmt = extern struct {
    type: NodeTag,
    args: [*c]List,
};
pub const DoStmt = struct_DoStmt;
pub const struct_InlineCodeBlock = extern struct {
    type: NodeTag,
    source_text: [*c]u8,
    langOid: Oid,
    langIsTrusted: bool,
    atomic: bool,
};
pub const InlineCodeBlock = struct_InlineCodeBlock;
pub const struct_CallStmt = extern struct {
    type: NodeTag,
    funccall: [*c]FuncCall,
    funcexpr: [*c]FuncExpr,
    outargs: [*c]List,
};
pub const CallStmt = struct_CallStmt;
pub const struct_CallContext = extern struct {
    type: NodeTag,
    atomic: bool,
};
pub const CallContext = struct_CallContext;
pub const struct_RenameStmt = extern struct {
    type: NodeTag,
    renameType: ObjectType,
    relationType: ObjectType,
    relation: [*c]RangeVar,
    object: [*c]Node,
    subname: [*c]u8,
    newname: [*c]u8,
    behavior: DropBehavior,
    missing_ok: bool,
};
pub const RenameStmt = struct_RenameStmt;
pub const struct_AlterObjectDependsStmt = extern struct {
    type: NodeTag,
    objectType: ObjectType,
    relation: [*c]RangeVar,
    object: [*c]Node,
    extname: [*c]String,
    remove: bool,
};
pub const AlterObjectDependsStmt = struct_AlterObjectDependsStmt;
pub const struct_AlterObjectSchemaStmt = extern struct {
    type: NodeTag,
    objectType: ObjectType,
    relation: [*c]RangeVar,
    object: [*c]Node,
    newschema: [*c]u8,
    missing_ok: bool,
};
pub const AlterObjectSchemaStmt = struct_AlterObjectSchemaStmt;
pub const struct_AlterOwnerStmt = extern struct {
    type: NodeTag,
    objectType: ObjectType,
    relation: [*c]RangeVar,
    object: [*c]Node,
    newowner: [*c]RoleSpec,
};
pub const AlterOwnerStmt = struct_AlterOwnerStmt;
pub const struct_AlterOperatorStmt = extern struct {
    type: NodeTag,
    opername: [*c]ObjectWithArgs,
    options: [*c]List,
};
pub const AlterOperatorStmt = struct_AlterOperatorStmt;
pub const struct_AlterTypeStmt = extern struct {
    type: NodeTag,
    typeName: [*c]List,
    options: [*c]List,
};
pub const AlterTypeStmt = struct_AlterTypeStmt;
pub const struct_RuleStmt = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    rulename: [*c]u8,
    whereClause: [*c]Node,
    event: CmdType,
    instead: bool,
    actions: [*c]List,
    replace: bool,
};
pub const RuleStmt = struct_RuleStmt;
pub const struct_NotifyStmt = extern struct {
    type: NodeTag,
    conditionname: [*c]u8,
    payload: [*c]u8,
};
pub const NotifyStmt = struct_NotifyStmt;
pub const struct_ListenStmt = extern struct {
    type: NodeTag,
    conditionname: [*c]u8,
};
pub const ListenStmt = struct_ListenStmt;
pub const struct_UnlistenStmt = extern struct {
    type: NodeTag,
    conditionname: [*c]u8,
};
pub const UnlistenStmt = struct_UnlistenStmt;
pub const TRANS_STMT_BEGIN: c_int = 0;
pub const TRANS_STMT_START: c_int = 1;
pub const TRANS_STMT_COMMIT: c_int = 2;
pub const TRANS_STMT_ROLLBACK: c_int = 3;
pub const TRANS_STMT_SAVEPOINT: c_int = 4;
pub const TRANS_STMT_RELEASE: c_int = 5;
pub const TRANS_STMT_ROLLBACK_TO: c_int = 6;
pub const TRANS_STMT_PREPARE: c_int = 7;
pub const TRANS_STMT_COMMIT_PREPARED: c_int = 8;
pub const TRANS_STMT_ROLLBACK_PREPARED: c_int = 9;
pub const enum_TransactionStmtKind = c_uint;
pub const TransactionStmtKind = enum_TransactionStmtKind;
pub const struct_TransactionStmt = extern struct {
    type: NodeTag,
    kind: TransactionStmtKind,
    options: [*c]List,
    savepoint_name: [*c]u8,
    gid: [*c]u8,
    chain: bool,
};
pub const TransactionStmt = struct_TransactionStmt;
pub const struct_CompositeTypeStmt = extern struct {
    type: NodeTag,
    typevar: [*c]RangeVar,
    coldeflist: [*c]List,
};
pub const CompositeTypeStmt = struct_CompositeTypeStmt;
pub const struct_CreateEnumStmt = extern struct {
    type: NodeTag,
    typeName: [*c]List,
    vals: [*c]List,
};
pub const CreateEnumStmt = struct_CreateEnumStmt;
pub const struct_CreateRangeStmt = extern struct {
    type: NodeTag,
    typeName: [*c]List,
    params: [*c]List,
};
pub const CreateRangeStmt = struct_CreateRangeStmt;
pub const struct_AlterEnumStmt = extern struct {
    type: NodeTag,
    typeName: [*c]List,
    oldVal: [*c]u8,
    newVal: [*c]u8,
    newValNeighbor: [*c]u8,
    newValIsAfter: bool,
    skipIfNewValExists: bool,
};
pub const AlterEnumStmt = struct_AlterEnumStmt;
pub const NO_CHECK_OPTION: c_int = 0;
pub const LOCAL_CHECK_OPTION: c_int = 1;
pub const CASCADED_CHECK_OPTION: c_int = 2;
pub const enum_ViewCheckOption = c_uint;
pub const ViewCheckOption = enum_ViewCheckOption;
pub const struct_ViewStmt = extern struct {
    type: NodeTag,
    view: [*c]RangeVar,
    aliases: [*c]List,
    query: [*c]Node,
    replace: bool,
    options: [*c]List,
    withCheckOption: ViewCheckOption,
};
pub const ViewStmt = struct_ViewStmt;
pub const struct_LoadStmt = extern struct {
    type: NodeTag,
    filename: [*c]u8,
};
pub const LoadStmt = struct_LoadStmt;
pub const struct_CreatedbStmt = extern struct {
    type: NodeTag,
    dbname: [*c]u8,
    options: [*c]List,
};
pub const CreatedbStmt = struct_CreatedbStmt;
pub const struct_AlterDatabaseStmt = extern struct {
    type: NodeTag,
    dbname: [*c]u8,
    options: [*c]List,
};
pub const AlterDatabaseStmt = struct_AlterDatabaseStmt;
pub const struct_AlterDatabaseRefreshCollStmt = extern struct {
    type: NodeTag,
    dbname: [*c]u8,
};
pub const AlterDatabaseRefreshCollStmt = struct_AlterDatabaseRefreshCollStmt;
pub const struct_AlterDatabaseSetStmt = extern struct {
    type: NodeTag,
    dbname: [*c]u8,
    setstmt: [*c]VariableSetStmt,
};
pub const AlterDatabaseSetStmt = struct_AlterDatabaseSetStmt;
pub const struct_DropdbStmt = extern struct {
    type: NodeTag,
    dbname: [*c]u8,
    missing_ok: bool,
    options: [*c]List,
};
pub const DropdbStmt = struct_DropdbStmt;
pub const struct_AlterSystemStmt = extern struct {
    type: NodeTag,
    setstmt: [*c]VariableSetStmt,
};
pub const AlterSystemStmt = struct_AlterSystemStmt;
pub const struct_ClusterStmt = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    indexname: [*c]u8,
    params: [*c]List,
};
pub const ClusterStmt = struct_ClusterStmt;
pub const struct_VacuumStmt = extern struct {
    type: NodeTag,
    options: [*c]List,
    rels: [*c]List,
    is_vacuumcmd: bool,
};
pub const VacuumStmt = struct_VacuumStmt;
pub const struct_VacuumRelation = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    oid: Oid,
    va_cols: [*c]List,
};
pub const VacuumRelation = struct_VacuumRelation;
pub const struct_ExplainStmt = extern struct {
    type: NodeTag,
    query: [*c]Node,
    options: [*c]List,
};
pub const ExplainStmt = struct_ExplainStmt;
pub const struct_CreateTableAsStmt = extern struct {
    type: NodeTag,
    query: [*c]Node,
    into: [*c]IntoClause,
    objtype: ObjectType,
    is_select_into: bool,
    if_not_exists: bool,
};
pub const CreateTableAsStmt = struct_CreateTableAsStmt;
pub const struct_RefreshMatViewStmt = extern struct {
    type: NodeTag,
    concurrent: bool,
    skipData: bool,
    relation: [*c]RangeVar,
};
pub const RefreshMatViewStmt = struct_RefreshMatViewStmt;
pub const struct_CheckPointStmt = extern struct {
    type: NodeTag,
};
pub const CheckPointStmt = struct_CheckPointStmt;
pub const DISCARD_ALL: c_int = 0;
pub const DISCARD_PLANS: c_int = 1;
pub const DISCARD_SEQUENCES: c_int = 2;
pub const DISCARD_TEMP: c_int = 3;
pub const enum_DiscardMode = c_uint;
pub const DiscardMode = enum_DiscardMode;
pub const struct_DiscardStmt = extern struct {
    type: NodeTag,
    target: DiscardMode,
};
pub const DiscardStmt = struct_DiscardStmt;
pub const struct_LockStmt = extern struct {
    type: NodeTag,
    relations: [*c]List,
    mode: c_int,
    nowait: bool,
};
pub const LockStmt = struct_LockStmt;
pub const struct_ConstraintsSetStmt = extern struct {
    type: NodeTag,
    constraints: [*c]List,
    deferred: bool,
};
pub const ConstraintsSetStmt = struct_ConstraintsSetStmt;
pub const REINDEX_OBJECT_INDEX: c_int = 0;
pub const REINDEX_OBJECT_TABLE: c_int = 1;
pub const REINDEX_OBJECT_SCHEMA: c_int = 2;
pub const REINDEX_OBJECT_SYSTEM: c_int = 3;
pub const REINDEX_OBJECT_DATABASE: c_int = 4;
pub const enum_ReindexObjectType = c_uint;
pub const ReindexObjectType = enum_ReindexObjectType;
pub const struct_ReindexStmt = extern struct {
    type: NodeTag,
    kind: ReindexObjectType,
    relation: [*c]RangeVar,
    name: [*c]const u8,
    params: [*c]List,
};
pub const ReindexStmt = struct_ReindexStmt;
pub const struct_CreateConversionStmt = extern struct {
    type: NodeTag,
    conversion_name: [*c]List,
    for_encoding_name: [*c]u8,
    to_encoding_name: [*c]u8,
    func_name: [*c]List,
    def: bool,
};
pub const CreateConversionStmt = struct_CreateConversionStmt;
pub const struct_CreateCastStmt = extern struct {
    type: NodeTag,
    sourcetype: [*c]TypeName,
    targettype: [*c]TypeName,
    func: [*c]ObjectWithArgs,
    context: CoercionContext,
    inout: bool,
};
pub const CreateCastStmt = struct_CreateCastStmt;
pub const struct_CreateTransformStmt = extern struct {
    type: NodeTag,
    replace: bool,
    type_name: [*c]TypeName,
    lang: [*c]u8,
    fromsql: [*c]ObjectWithArgs,
    tosql: [*c]ObjectWithArgs,
};
pub const CreateTransformStmt = struct_CreateTransformStmt;
pub const struct_PrepareStmt = extern struct {
    type: NodeTag,
    name: [*c]u8,
    argtypes: [*c]List,
    query: [*c]Node,
};
pub const PrepareStmt = struct_PrepareStmt;
pub const struct_ExecuteStmt = extern struct {
    type: NodeTag,
    name: [*c]u8,
    params: [*c]List,
};
pub const ExecuteStmt = struct_ExecuteStmt;
pub const struct_DeallocateStmt = extern struct {
    type: NodeTag,
    name: [*c]u8,
};
pub const DeallocateStmt = struct_DeallocateStmt;
pub const struct_DropOwnedStmt = extern struct {
    type: NodeTag,
    roles: [*c]List,
    behavior: DropBehavior,
};
pub const DropOwnedStmt = struct_DropOwnedStmt;
pub const struct_ReassignOwnedStmt = extern struct {
    type: NodeTag,
    roles: [*c]List,
    newrole: [*c]RoleSpec,
};
pub const ReassignOwnedStmt = struct_ReassignOwnedStmt;
pub const struct_AlterTSDictionaryStmt = extern struct {
    type: NodeTag,
    dictname: [*c]List,
    options: [*c]List,
};
pub const AlterTSDictionaryStmt = struct_AlterTSDictionaryStmt;
pub const ALTER_TSCONFIG_ADD_MAPPING: c_int = 0;
pub const ALTER_TSCONFIG_ALTER_MAPPING_FOR_TOKEN: c_int = 1;
pub const ALTER_TSCONFIG_REPLACE_DICT: c_int = 2;
pub const ALTER_TSCONFIG_REPLACE_DICT_FOR_TOKEN: c_int = 3;
pub const ALTER_TSCONFIG_DROP_MAPPING: c_int = 4;
pub const enum_AlterTSConfigType = c_uint;
pub const AlterTSConfigType = enum_AlterTSConfigType;
pub const struct_AlterTSConfigurationStmt = extern struct {
    type: NodeTag,
    kind: AlterTSConfigType,
    cfgname: [*c]List,
    tokentype: [*c]List,
    dicts: [*c]List,
    override: bool,
    replace: bool,
    missing_ok: bool,
};
pub const AlterTSConfigurationStmt = struct_AlterTSConfigurationStmt;
pub const struct_PublicationTable = extern struct {
    type: NodeTag,
    relation: [*c]RangeVar,
    whereClause: [*c]Node,
    columns: [*c]List,
};
pub const PublicationTable = struct_PublicationTable;
pub const PUBLICATIONOBJ_TABLE: c_int = 0;
pub const PUBLICATIONOBJ_TABLES_IN_SCHEMA: c_int = 1;
pub const PUBLICATIONOBJ_TABLES_IN_CUR_SCHEMA: c_int = 2;
pub const PUBLICATIONOBJ_CONTINUATION: c_int = 3;
pub const enum_PublicationObjSpecType = c_uint;
pub const PublicationObjSpecType = enum_PublicationObjSpecType;
pub const struct_PublicationObjSpec = extern struct {
    type: NodeTag,
    pubobjtype: PublicationObjSpecType,
    name: [*c]u8,
    pubtable: [*c]PublicationTable,
    location: c_int,
};
pub const PublicationObjSpec = struct_PublicationObjSpec;
pub const struct_CreatePublicationStmt = extern struct {
    type: NodeTag,
    pubname: [*c]u8,
    options: [*c]List,
    pubobjects: [*c]List,
    for_all_tables: bool,
};
pub const CreatePublicationStmt = struct_CreatePublicationStmt;
pub const AP_AddObjects: c_int = 0;
pub const AP_DropObjects: c_int = 1;
pub const AP_SetObjects: c_int = 2;
pub const enum_AlterPublicationAction = c_uint;
pub const AlterPublicationAction = enum_AlterPublicationAction;
pub const struct_AlterPublicationStmt = extern struct {
    type: NodeTag,
    pubname: [*c]u8,
    options: [*c]List,
    pubobjects: [*c]List,
    for_all_tables: bool,
    action: AlterPublicationAction,
};
pub const AlterPublicationStmt = struct_AlterPublicationStmt;
pub const struct_CreateSubscriptionStmt = extern struct {
    type: NodeTag,
    subname: [*c]u8,
    conninfo: [*c]u8,
    publication: [*c]List,
    options: [*c]List,
};
pub const CreateSubscriptionStmt = struct_CreateSubscriptionStmt;
pub const ALTER_SUBSCRIPTION_OPTIONS: c_int = 0;
pub const ALTER_SUBSCRIPTION_CONNECTION: c_int = 1;
pub const ALTER_SUBSCRIPTION_SET_PUBLICATION: c_int = 2;
pub const ALTER_SUBSCRIPTION_ADD_PUBLICATION: c_int = 3;
pub const ALTER_SUBSCRIPTION_DROP_PUBLICATION: c_int = 4;
pub const ALTER_SUBSCRIPTION_REFRESH: c_int = 5;
pub const ALTER_SUBSCRIPTION_ENABLED: c_int = 6;
pub const ALTER_SUBSCRIPTION_SKIP: c_int = 7;
pub const enum_AlterSubscriptionType = c_uint;
pub const AlterSubscriptionType = enum_AlterSubscriptionType;
pub const struct_AlterSubscriptionStmt = extern struct {
    type: NodeTag,
    kind: AlterSubscriptionType,
    subname: [*c]u8,
    conninfo: [*c]u8,
    publication: [*c]List,
    options: [*c]List,
};
pub const AlterSubscriptionStmt = struct_AlterSubscriptionStmt;
pub const struct_DropSubscriptionStmt = extern struct {
    type: NodeTag,
    subname: [*c]u8,
    missing_ok: bool,
    behavior: DropBehavior,
};
pub const DropSubscriptionStmt = struct_DropSubscriptionStmt;
pub const struct_Result = extern struct {
    plan: Plan,
    resconstantqual: [*c]Node,
};
pub const Result = struct_Result;
pub const struct_ProjectSet = extern struct {
    plan: Plan,
};
pub const ProjectSet = struct_ProjectSet;
pub const struct_ModifyTable = extern struct {
    plan: Plan,
    operation: CmdType,
    canSetTag: bool,
    nominalRelation: Index,
    rootRelation: Index,
    partColsUpdated: bool,
    resultRelations: [*c]List,
    updateColnosLists: [*c]List,
    withCheckOptionLists: [*c]List,
    returningLists: [*c]List,
    fdwPrivLists: [*c]List,
    fdwDirectModifyPlans: [*c]Bitmapset,
    rowMarks: [*c]List,
    epqParam: c_int,
    onConflictAction: OnConflictAction,
    arbiterIndexes: [*c]List,
    onConflictSet: [*c]List,
    onConflictCols: [*c]List,
    onConflictWhere: [*c]Node,
    exclRelRTI: Index,
    exclRelTlist: [*c]List,
    mergeActionLists: [*c]List,
};
pub const ModifyTable = struct_ModifyTable;
pub const struct_PartitionPruneInfo = extern struct {
    type: NodeTag,
    prune_infos: [*c]List,
    other_subplans: [*c]Bitmapset,
};
pub const struct_Append = extern struct {
    plan: Plan,
    apprelids: [*c]Bitmapset,
    appendplans: [*c]List,
    nasyncplans: c_int,
    first_partial_plan: c_int,
    part_prune_info: [*c]struct_PartitionPruneInfo,
};
pub const Append = struct_Append;
pub const struct_MergeAppend = extern struct {
    plan: Plan,
    apprelids: [*c]Bitmapset,
    mergeplans: [*c]List,
    numCols: c_int,
    sortColIdx: [*c]AttrNumber,
    sortOperators: [*c]Oid,
    collations: [*c]Oid,
    nullsFirst: [*c]bool,
    part_prune_info: [*c]struct_PartitionPruneInfo,
};
pub const MergeAppend = struct_MergeAppend;
pub const struct_RecursiveUnion = extern struct {
    plan: Plan,
    wtParam: c_int,
    numCols: c_int,
    dupColIdx: [*c]AttrNumber,
    dupOperators: [*c]Oid,
    dupCollations: [*c]Oid,
    numGroups: c_long,
};
pub const RecursiveUnion = struct_RecursiveUnion;
pub const struct_BitmapAnd = extern struct {
    plan: Plan,
    bitmapplans: [*c]List,
};
pub const BitmapAnd = struct_BitmapAnd;
pub const struct_BitmapOr = extern struct {
    plan: Plan,
    isshared: bool,
    bitmapplans: [*c]List,
};
pub const BitmapOr = struct_BitmapOr;
pub const struct_Scan = extern struct {
    plan: Plan,
    scanrelid: Index,
};
pub const Scan = struct_Scan;
pub const struct_SeqScan = extern struct {
    scan: Scan,
};
pub const SeqScan = struct_SeqScan;
pub const struct_SampleScan = extern struct {
    scan: Scan,
    tablesample: [*c]struct_TableSampleClause,
};
pub const SampleScan = struct_SampleScan;
pub const struct_IndexScan = extern struct {
    scan: Scan,
    indexid: Oid,
    indexqual: [*c]List,
    indexqualorig: [*c]List,
    indexorderby: [*c]List,
    indexorderbyorig: [*c]List,
    indexorderbyops: [*c]List,
    indexorderdir: ScanDirection,
};
pub const IndexScan = struct_IndexScan;
pub const struct_IndexOnlyScan = extern struct {
    scan: Scan,
    indexid: Oid,
    indexqual: [*c]List,
    recheckqual: [*c]List,
    indexorderby: [*c]List,
    indextlist: [*c]List,
    indexorderdir: ScanDirection,
};
pub const IndexOnlyScan = struct_IndexOnlyScan;
pub const struct_BitmapIndexScan = extern struct {
    scan: Scan,
    indexid: Oid,
    isshared: bool,
    indexqual: [*c]List,
    indexqualorig: [*c]List,
};
pub const BitmapIndexScan = struct_BitmapIndexScan;
pub const struct_BitmapHeapScan = extern struct {
    scan: Scan,
    bitmapqualorig: [*c]List,
};
pub const BitmapHeapScan = struct_BitmapHeapScan;
pub const struct_TidScan = extern struct {
    scan: Scan,
    tidquals: [*c]List,
};
pub const TidScan = struct_TidScan;
pub const struct_TidRangeScan = extern struct {
    scan: Scan,
    tidrangequals: [*c]List,
};
pub const TidRangeScan = struct_TidRangeScan;
pub const SUBQUERY_SCAN_UNKNOWN: c_int = 0;
pub const SUBQUERY_SCAN_TRIVIAL: c_int = 1;
pub const SUBQUERY_SCAN_NONTRIVIAL: c_int = 2;
pub const enum_SubqueryScanStatus = c_uint;
pub const SubqueryScanStatus = enum_SubqueryScanStatus;
pub const struct_SubqueryScan = extern struct {
    scan: Scan,
    subplan: [*c]Plan,
    scanstatus: SubqueryScanStatus,
};
pub const SubqueryScan = struct_SubqueryScan;
pub const struct_FunctionScan = extern struct {
    scan: Scan,
    functions: [*c]List,
    funcordinality: bool,
};
pub const FunctionScan = struct_FunctionScan;
pub const struct_ValuesScan = extern struct {
    scan: Scan,
    values_lists: [*c]List,
};
pub const ValuesScan = struct_ValuesScan;
pub const struct_TableFuncScan = extern struct {
    scan: Scan,
    tablefunc: [*c]TableFunc,
};
pub const TableFuncScan = struct_TableFuncScan;
pub const struct_CteScan = extern struct {
    scan: Scan,
    ctePlanId: c_int,
    cteParam: c_int,
};
pub const CteScan = struct_CteScan;
pub const struct_NamedTuplestoreScan = extern struct {
    scan: Scan,
    enrname: [*c]u8,
};
pub const NamedTuplestoreScan = struct_NamedTuplestoreScan;
pub const struct_WorkTableScan = extern struct {
    scan: Scan,
    wtParam: c_int,
};
pub const WorkTableScan = struct_WorkTableScan;
pub const struct_ForeignScan = extern struct {
    scan: Scan,
    operation: CmdType,
    resultRelation: Index,
    fs_server: Oid,
    fdw_exprs: [*c]List,
    fdw_private: [*c]List,
    fdw_scan_tlist: [*c]List,
    fdw_recheck_quals: [*c]List,
    fs_relids: [*c]Bitmapset,
    fsSystemCol: bool,
};
pub const ForeignScan = struct_ForeignScan;
pub const struct_CustomScanMethods = opaque {};
pub const struct_CustomScan = extern struct {
    scan: Scan,
    flags: uint32,
    custom_plans: [*c]List,
    custom_exprs: [*c]List,
    custom_private: [*c]List,
    custom_scan_tlist: [*c]List,
    custom_relids: [*c]Bitmapset,
    methods: ?*const struct_CustomScanMethods,
};
pub const CustomScan = struct_CustomScan;
pub const struct_Join = extern struct {
    plan: Plan,
    jointype: JoinType,
    inner_unique: bool,
    joinqual: [*c]List,
};
pub const Join = struct_Join;
pub const struct_NestLoop = extern struct {
    join: Join,
    nestParams: [*c]List,
};
pub const NestLoop = struct_NestLoop;
pub const struct_NestLoopParam = extern struct {
    type: NodeTag,
    paramno: c_int,
    paramval: [*c]Var,
};
pub const NestLoopParam = struct_NestLoopParam;
pub const struct_MergeJoin = extern struct {
    join: Join,
    skip_mark_restore: bool,
    mergeclauses: [*c]List,
    mergeFamilies: [*c]Oid,
    mergeCollations: [*c]Oid,
    mergeStrategies: [*c]c_int,
    mergeNullsFirst: [*c]bool,
};
pub const MergeJoin = struct_MergeJoin;
pub const struct_HashJoin = extern struct {
    join: Join,
    hashclauses: [*c]List,
    hashoperators: [*c]List,
    hashcollations: [*c]List,
    hashkeys: [*c]List,
};
pub const HashJoin = struct_HashJoin;
pub const struct_Material = extern struct {
    plan: Plan,
};
pub const Material = struct_Material;
pub const struct_Memoize = extern struct {
    plan: Plan,
    numKeys: c_int,
    hashOperators: [*c]Oid,
    collations: [*c]Oid,
    param_exprs: [*c]List,
    singlerow: bool,
    binary_mode: bool,
    est_entries: uint32,
    keyparamids: [*c]Bitmapset,
};
pub const Memoize = struct_Memoize;
pub const struct_Sort = extern struct {
    plan: Plan,
    numCols: c_int,
    sortColIdx: [*c]AttrNumber,
    sortOperators: [*c]Oid,
    collations: [*c]Oid,
    nullsFirst: [*c]bool,
};
pub const Sort = struct_Sort;
pub const struct_IncrementalSort = extern struct {
    sort: Sort,
    nPresortedCols: c_int,
};
pub const IncrementalSort = struct_IncrementalSort;
pub const struct_Group = extern struct {
    plan: Plan,
    numCols: c_int,
    grpColIdx: [*c]AttrNumber,
    grpOperators: [*c]Oid,
    grpCollations: [*c]Oid,
};
pub const Group = struct_Group;
pub const struct_Agg = extern struct {
    plan: Plan,
    aggstrategy: AggStrategy,
    aggsplit: AggSplit,
    numCols: c_int,
    grpColIdx: [*c]AttrNumber,
    grpOperators: [*c]Oid,
    grpCollations: [*c]Oid,
    numGroups: c_long,
    transitionSpace: uint64,
    aggParams: [*c]Bitmapset,
    groupingSets: [*c]List,
    chain: [*c]List,
};
pub const Agg = struct_Agg;
pub const struct_WindowAgg = extern struct {
    plan: Plan,
    winref: Index,
    partNumCols: c_int,
    partColIdx: [*c]AttrNumber,
    partOperators: [*c]Oid,
    partCollations: [*c]Oid,
    ordNumCols: c_int,
    ordColIdx: [*c]AttrNumber,
    ordOperators: [*c]Oid,
    ordCollations: [*c]Oid,
    frameOptions: c_int,
    startOffset: [*c]Node,
    endOffset: [*c]Node,
    runCondition: [*c]List,
    runConditionOrig: [*c]List,
    startInRangeFunc: Oid,
    endInRangeFunc: Oid,
    inRangeColl: Oid,
    inRangeAsc: bool,
    inRangeNullsFirst: bool,
    topWindow: bool,
};
pub const WindowAgg = struct_WindowAgg;
pub const struct_Unique = extern struct {
    plan: Plan,
    numCols: c_int,
    uniqColIdx: [*c]AttrNumber,
    uniqOperators: [*c]Oid,
    uniqCollations: [*c]Oid,
};
pub const Unique = struct_Unique;
pub const struct_Gather = extern struct {
    plan: Plan,
    num_workers: c_int,
    rescan_param: c_int,
    single_copy: bool,
    invisible: bool,
    initParam: [*c]Bitmapset,
};
pub const Gather = struct_Gather;
pub const struct_GatherMerge = extern struct {
    plan: Plan,
    num_workers: c_int,
    rescan_param: c_int,
    numCols: c_int,
    sortColIdx: [*c]AttrNumber,
    sortOperators: [*c]Oid,
    collations: [*c]Oid,
    nullsFirst: [*c]bool,
    initParam: [*c]Bitmapset,
};
pub const GatherMerge = struct_GatherMerge;
pub const struct_Hash = extern struct {
    plan: Plan,
    hashkeys: [*c]List,
    skewTable: Oid,
    skewColumn: AttrNumber,
    skewInherit: bool,
    rows_total: Cardinality,
};
pub const Hash = struct_Hash;
pub const struct_SetOp = extern struct {
    plan: Plan,
    cmd: SetOpCmd,
    strategy: SetOpStrategy,
    numCols: c_int,
    dupColIdx: [*c]AttrNumber,
    dupOperators: [*c]Oid,
    dupCollations: [*c]Oid,
    flagColIdx: AttrNumber,
    firstFlag: c_int,
    numGroups: c_long,
};
pub const SetOp = struct_SetOp;
pub const struct_LockRows = extern struct {
    plan: Plan,
    rowMarks: [*c]List,
    epqParam: c_int,
};
pub const LockRows = struct_LockRows;
pub const struct_Limit = extern struct {
    plan: Plan,
    limitOffset: [*c]Node,
    limitCount: [*c]Node,
    limitOption: LimitOption,
    uniqNumCols: c_int,
    uniqColIdx: [*c]AttrNumber,
    uniqOperators: [*c]Oid,
    uniqCollations: [*c]Oid,
};
pub const Limit = struct_Limit;
pub const struct_PlanRowMark = extern struct {
    type: NodeTag,
    rti: Index,
    prti: Index,
    rowmarkId: Index,
    markType: RowMarkType,
    allMarkTypes: c_int,
    strength: LockClauseStrength,
    waitPolicy: LockWaitPolicy,
    isParent: bool,
};
pub const PlanRowMark = struct_PlanRowMark;
pub const PartitionPruneInfo = struct_PartitionPruneInfo;
pub const struct_PartitionedRelPruneInfo = extern struct {
    type: NodeTag,
    rtindex: Index,
    present_parts: [*c]Bitmapset,
    nparts: c_int,
    subplan_map: [*c]c_int,
    subpart_map: [*c]c_int,
    relid_map: [*c]Oid,
    initial_pruning_steps: [*c]List,
    exec_pruning_steps: [*c]List,
    execparamids: [*c]Bitmapset,
};
pub const PartitionedRelPruneInfo = struct_PartitionedRelPruneInfo;
pub const struct_PartitionPruneStep = extern struct {
    type: NodeTag,
    step_id: c_int,
};
pub const PartitionPruneStep = struct_PartitionPruneStep;
pub const struct_PartitionPruneStepOp = extern struct {
    step: PartitionPruneStep,
    opstrategy: StrategyNumber,
    exprs: [*c]List,
    cmpfns: [*c]List,
    nullkeys: [*c]Bitmapset,
};
pub const PartitionPruneStepOp = struct_PartitionPruneStepOp;
pub const PARTPRUNE_COMBINE_UNION: c_int = 0;
pub const PARTPRUNE_COMBINE_INTERSECT: c_int = 1;
pub const enum_PartitionPruneCombineOp = c_uint;
pub const PartitionPruneCombineOp = enum_PartitionPruneCombineOp;
pub const struct_PartitionPruneStepCombine = extern struct {
    step: PartitionPruneStep,
    combineOp: PartitionPruneCombineOp,
    source_stepids: [*c]List,
};
pub const PartitionPruneStepCombine = struct_PartitionPruneStepCombine;
pub const struct_PlanInvalItem = extern struct {
    type: NodeTag,
    cacheId: c_int,
    hashValue: uint32,
};
pub const PlanInvalItem = struct_PlanInvalItem;
pub const MONOTONICFUNC_NONE: c_int = 0;
pub const MONOTONICFUNC_INCREASING: c_int = 1;
pub const MONOTONICFUNC_DECREASING: c_int = 2;
pub const MONOTONICFUNC_BOTH: c_int = 3;
pub const enum_MonotonicFunction = c_uint;
pub const MonotonicFunction = enum_MonotonicFunction;
pub const struct_pg_atomic_flag = extern struct {
    value: u8,
};
pub const pg_atomic_flag = struct_pg_atomic_flag;
pub const struct_pg_atomic_uint32 = extern struct {
    value: uint32,
};
pub const pg_atomic_uint32 = struct_pg_atomic_uint32;
pub const struct_pg_atomic_uint64 = extern struct {
    value: uint64,
};
pub const pg_atomic_uint64 = struct_pg_atomic_uint64; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:114:2: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:112:1: warning: unable to translate function, demoted to extern
pub extern fn pg_spin_delay_impl() callconv(.C) void; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:145:2: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:141:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_test_set_flag_impl(arg_ptr: [*c]volatile pg_atomic_flag) callconv(.C) bool; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:162:2: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:156:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_clear_flag_impl(arg_ptr: [*c]volatile pg_atomic_flag) callconv(.C) void; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:177:2: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:168:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_compare_exchange_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_expected: [*c]uint32, arg_newval: uint32) callconv(.C) bool; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:192:2: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:189:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_fetch_add_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_add_: int32) callconv(.C) uint32; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:214:2: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:205:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_compare_exchange_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_expected: [*c]uint64, arg_newval: uint64) callconv(.C) bool; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:229:2: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:226:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_fetch_add_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_add_: int64) callconv(.C) uint64;
pub fn pg_atomic_unlocked_test_flag_impl(arg_ptr: [*c]volatile pg_atomic_flag) callconv(.C) bool {
    var ptr = arg_ptr;
    return @bitCast(c_int, @as(c_uint, ptr.*.value)) == @as(c_int, 0);
}
pub fn pg_atomic_init_flag_impl(arg_ptr: [*c]volatile pg_atomic_flag) callconv(.C) void {
    var ptr = arg_ptr;
    pg_atomic_clear_flag_impl(ptr);
} // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:195:9: warning: TODO implement function '__sync_fetch_and_sub_4' in std.zig.c_builtins
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:193:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_fetch_sub_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_sub_: int32) callconv(.C) uint32; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:204:9: warning: TODO implement function '__sync_fetch_and_and_4' in std.zig.c_builtins
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:202:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_fetch_and_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_and_: uint32) callconv(.C) uint32; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:213:9: warning: TODO implement function '__sync_fetch_and_or_4' in std.zig.c_builtins
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:211:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_fetch_or_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_or_: uint32) callconv(.C) uint32; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:262:9: warning: TODO implement function '__sync_fetch_and_sub_8' in std.zig.c_builtins
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:260:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_fetch_sub_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_sub_: int64) callconv(.C) uint64; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:271:9: warning: TODO implement function '__sync_fetch_and_and_8' in std.zig.c_builtins
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:269:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_fetch_and_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_and_: uint64) callconv(.C) uint64; // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:280:9: warning: TODO implement function '__sync_fetch_and_or_8' in std.zig.c_builtins
// /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:278:1: warning: unable to translate function, demoted to extern
pub extern fn pg_atomic_fetch_or_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_or_: uint64) callconv(.C) uint64;
pub fn pg_atomic_read_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    return ptr.*.value;
}
pub fn pg_atomic_write_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_val: uint32) callconv(.C) void {
    var ptr = arg_ptr;
    var val = arg_val;
    ptr.*.value = val;
}
pub fn pg_atomic_unlocked_write_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_val: uint32) callconv(.C) void {
    var ptr = arg_ptr;
    var val = arg_val;
    ptr.*.value = val;
}
pub fn pg_atomic_init_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_val_: uint32) callconv(.C) void {
    var ptr = arg_ptr;
    var val_ = arg_val_;
    ptr.*.value = val_;
}
pub fn pg_atomic_exchange_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_xchg_: uint32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var xchg_ = arg_xchg_;
    var old: uint32 = undefined;
    old = ptr.*.value;
    while (!pg_atomic_compare_exchange_u32_impl(ptr, &old, xchg_)) {}
    return old;
}
pub fn pg_atomic_add_fetch_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_add_: int32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var add_ = arg_add_;
    return pg_atomic_fetch_add_u32_impl(ptr, add_) +% @bitCast(uint32, add_);
}
pub fn pg_atomic_sub_fetch_u32_impl(arg_ptr: [*c]volatile pg_atomic_uint32, arg_sub_: int32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var sub_ = arg_sub_;
    return pg_atomic_fetch_sub_u32_impl(ptr, sub_) -% @bitCast(uint32, sub_);
}
pub fn pg_atomic_exchange_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_xchg_: uint64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var xchg_ = arg_xchg_;
    var old: uint64 = undefined;
    old = ptr.*.value;
    while (!pg_atomic_compare_exchange_u64_impl(ptr, &old, xchg_)) {}
    return old;
}
pub fn pg_atomic_write_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_val: uint64) callconv(.C) void {
    var ptr = arg_ptr;
    var val = arg_val;
    _ = @as(c_int, 1);
    ptr.*.value = val;
}
pub fn pg_atomic_read_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    _ = @as(c_int, 1);
    return ptr.*.value;
}
pub fn pg_atomic_init_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_val_: uint64) callconv(.C) void {
    var ptr = arg_ptr;
    var val_ = arg_val_;
    ptr.*.value = val_;
}
pub fn pg_atomic_add_fetch_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_add_: int64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var add_ = arg_add_;
    return pg_atomic_fetch_add_u64_impl(ptr, add_) +% @bitCast(uint64, add_);
}
pub fn pg_atomic_sub_fetch_u64_impl(arg_ptr: [*c]volatile pg_atomic_uint64, arg_sub_: int64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var sub_ = arg_sub_;
    return pg_atomic_fetch_sub_u64_impl(ptr, sub_) -% @bitCast(uint64, sub_);
}
pub fn pg_atomic_init_flag(arg_ptr: [*c]volatile pg_atomic_flag) callconv(.C) void {
    var ptr = arg_ptr;
    pg_atomic_init_flag_impl(ptr);
}
pub fn pg_atomic_test_set_flag(arg_ptr: [*c]volatile pg_atomic_flag) callconv(.C) bool {
    var ptr = arg_ptr;
    return pg_atomic_test_set_flag_impl(ptr);
}
pub fn pg_atomic_unlocked_test_flag(arg_ptr: [*c]volatile pg_atomic_flag) callconv(.C) bool {
    var ptr = arg_ptr;
    return pg_atomic_unlocked_test_flag_impl(ptr);
}
pub fn pg_atomic_clear_flag(arg_ptr: [*c]volatile pg_atomic_flag) callconv(.C) void {
    var ptr = arg_ptr;
    pg_atomic_clear_flag_impl(ptr);
}
pub fn pg_atomic_init_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_val: uint32) callconv(.C) void {
    var ptr = arg_ptr;
    var val = arg_val;
    _ = @as(c_int, 1);
    pg_atomic_init_u32_impl(ptr, val);
}
pub fn pg_atomic_read_u32(arg_ptr: [*c]volatile pg_atomic_uint32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    _ = @as(c_int, 1);
    return pg_atomic_read_u32_impl(ptr);
}
pub fn pg_atomic_write_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_val: uint32) callconv(.C) void {
    var ptr = arg_ptr;
    var val = arg_val;
    _ = @as(c_int, 1);
    pg_atomic_write_u32_impl(ptr, val);
}
pub fn pg_atomic_unlocked_write_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_val: uint32) callconv(.C) void {
    var ptr = arg_ptr;
    var val = arg_val;
    _ = @as(c_int, 1);
    pg_atomic_unlocked_write_u32_impl(ptr, val);
}
pub fn pg_atomic_exchange_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_newval: uint32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var newval = arg_newval;
    _ = @as(c_int, 1);
    return pg_atomic_exchange_u32_impl(ptr, newval);
}
pub fn pg_atomic_compare_exchange_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_expected: [*c]uint32, arg_newval: uint32) callconv(.C) bool {
    var ptr = arg_ptr;
    var expected = arg_expected;
    var newval = arg_newval;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    return pg_atomic_compare_exchange_u32_impl(ptr, expected, newval);
}
pub fn pg_atomic_fetch_add_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_add_: int32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var add_ = arg_add_;
    _ = @as(c_int, 1);
    return pg_atomic_fetch_add_u32_impl(ptr, add_);
}
pub fn pg_atomic_fetch_sub_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_sub_: int32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var sub_ = arg_sub_;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    return pg_atomic_fetch_sub_u32_impl(ptr, sub_);
}
pub fn pg_atomic_fetch_and_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_and_: uint32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var and_ = arg_and_;
    _ = @as(c_int, 1);
    return pg_atomic_fetch_and_u32_impl(ptr, and_);
}
pub fn pg_atomic_fetch_or_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_or_: uint32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var or_ = arg_or_;
    _ = @as(c_int, 1);
    return pg_atomic_fetch_or_u32_impl(ptr, or_);
}
pub fn pg_atomic_add_fetch_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_add_: int32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var add_ = arg_add_;
    _ = @as(c_int, 1);
    return pg_atomic_add_fetch_u32_impl(ptr, add_);
}
pub fn pg_atomic_sub_fetch_u32(arg_ptr: [*c]volatile pg_atomic_uint32, arg_sub_: int32) callconv(.C) uint32 {
    var ptr = arg_ptr;
    var sub_ = arg_sub_;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    return pg_atomic_sub_fetch_u32_impl(ptr, sub_);
}
pub fn pg_atomic_init_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_val: uint64) callconv(.C) void {
    var ptr = arg_ptr;
    var val = arg_val;
    _ = @as(c_int, 1);
    pg_atomic_init_u64_impl(ptr, val);
}
pub fn pg_atomic_read_u64(arg_ptr: [*c]volatile pg_atomic_uint64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    _ = @as(c_int, 1);
    return pg_atomic_read_u64_impl(ptr);
}
pub fn pg_atomic_write_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_val: uint64) callconv(.C) void {
    var ptr = arg_ptr;
    var val = arg_val;
    _ = @as(c_int, 1);
    pg_atomic_write_u64_impl(ptr, val);
}
pub fn pg_atomic_exchange_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_newval: uint64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var newval = arg_newval;
    _ = @as(c_int, 1);
    return pg_atomic_exchange_u64_impl(ptr, newval);
}
pub fn pg_atomic_compare_exchange_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_expected: [*c]uint64, arg_newval: uint64) callconv(.C) bool {
    var ptr = arg_ptr;
    var expected = arg_expected;
    var newval = arg_newval;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    return pg_atomic_compare_exchange_u64_impl(ptr, expected, newval);
}
pub fn pg_atomic_fetch_add_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_add_: int64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var add_ = arg_add_;
    _ = @as(c_int, 1);
    return pg_atomic_fetch_add_u64_impl(ptr, add_);
}
pub fn pg_atomic_fetch_sub_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_sub_: int64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var sub_ = arg_sub_;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    return pg_atomic_fetch_sub_u64_impl(ptr, sub_);
}
pub fn pg_atomic_fetch_and_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_and_: uint64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var and_ = arg_and_;
    _ = @as(c_int, 1);
    return pg_atomic_fetch_and_u64_impl(ptr, and_);
}
pub fn pg_atomic_fetch_or_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_or_: uint64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var or_ = arg_or_;
    _ = @as(c_int, 1);
    return pg_atomic_fetch_or_u64_impl(ptr, or_);
}
pub fn pg_atomic_add_fetch_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_add_: int64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var add_ = arg_add_;
    _ = @as(c_int, 1);
    return pg_atomic_add_fetch_u64_impl(ptr, add_);
}
pub fn pg_atomic_sub_fetch_u64(arg_ptr: [*c]volatile pg_atomic_uint64, arg_sub_: int64) callconv(.C) uint64 {
    var ptr = arg_ptr;
    var sub_ = arg_sub_;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    return pg_atomic_sub_fetch_u64_impl(ptr, sub_);
}
pub extern var dynamic_shared_memory_type: c_int;
pub extern var min_dynamic_shared_memory: c_int;
pub const dsm_handle = uint32;
pub const DSM_OP_CREATE: c_int = 0;
pub const DSM_OP_ATTACH: c_int = 1;
pub const DSM_OP_DETACH: c_int = 2;
pub const DSM_OP_DESTROY: c_int = 3;
pub const dsm_op = c_uint;
pub extern fn dsm_impl_op(op: dsm_op, handle: dsm_handle, request_size: Size, impl_private: [*c]?*anyopaque, mapped_address: [*c]?*anyopaque, mapped_size: [*c]Size, elevel: c_int) bool;
pub extern fn dsm_impl_pin_segment(handle: dsm_handle, impl_private: ?*anyopaque, impl_private_pm_handle: [*c]?*anyopaque) void;
pub extern fn dsm_impl_unpin_segment(handle: dsm_handle, impl_private: [*c]?*anyopaque) void;
pub const struct_dsm_segment = opaque {};
pub const dsm_segment = struct_dsm_segment;
pub const struct_PGShmemHeader = opaque {};
pub extern fn dsm_cleanup_using_control_segment(old_control_handle: dsm_handle) void;
pub extern fn dsm_postmaster_startup(?*struct_PGShmemHeader) void;
pub extern fn dsm_backend_shutdown() void;
pub extern fn dsm_detach_all() void;
pub extern fn dsm_estimate_size() usize;
pub extern fn dsm_shmem_init() void;
pub extern fn dsm_create(size: Size, flags: c_int) ?*dsm_segment;
pub extern fn dsm_attach(h: dsm_handle) ?*dsm_segment;
pub extern fn dsm_detach(seg: ?*dsm_segment) void;
pub extern fn dsm_pin_mapping(seg: ?*dsm_segment) void;
pub extern fn dsm_unpin_mapping(seg: ?*dsm_segment) void;
pub extern fn dsm_pin_segment(seg: ?*dsm_segment) void;
pub extern fn dsm_unpin_segment(h: dsm_handle) void;
pub extern fn dsm_find_mapping(h: dsm_handle) ?*dsm_segment;
pub extern fn dsm_segment_address(seg: ?*dsm_segment) ?*anyopaque;
pub extern fn dsm_segment_map_length(seg: ?*dsm_segment) Size;
pub extern fn dsm_segment_handle(seg: ?*dsm_segment) dsm_handle;
pub const on_dsm_detach_callback = ?*const fn (?*dsm_segment, Datum) callconv(.C) void;
pub extern fn on_dsm_detach(seg: ?*dsm_segment, function: on_dsm_detach_callback, arg: Datum) void;
pub extern fn cancel_on_dsm_detach(seg: ?*dsm_segment, function: on_dsm_detach_callback, arg: Datum) void;
pub extern fn reset_on_dsm_detach() void;
pub const dsa_area = struct_dsa_area;
pub const dsa_pointer = uint64;
pub const dsa_pointer_atomic = pg_atomic_uint64;
pub const dsa_handle = dsm_handle;
pub extern fn dsa_create(tranche_id: c_int) ?*dsa_area;
pub extern fn dsa_create_in_place(place: ?*anyopaque, size: usize, tranche_id: c_int, segment: ?*dsm_segment) ?*dsa_area;
pub extern fn dsa_attach(handle: dsa_handle) ?*dsa_area;
pub extern fn dsa_attach_in_place(place: ?*anyopaque, segment: ?*dsm_segment) ?*dsa_area;
pub extern fn dsa_release_in_place(place: ?*anyopaque) void;
pub extern fn dsa_on_dsm_detach_release_in_place(?*dsm_segment, Datum) void;
pub extern fn dsa_on_shmem_exit_release_in_place(c_int, Datum) void;
pub extern fn dsa_pin_mapping(area: ?*dsa_area) void;
pub extern fn dsa_detach(area: ?*dsa_area) void;
pub extern fn dsa_pin(area: ?*dsa_area) void;
pub extern fn dsa_unpin(area: ?*dsa_area) void;
pub extern fn dsa_set_size_limit(area: ?*dsa_area, limit: usize) void;
pub extern fn dsa_minimum_size() usize;
pub extern fn dsa_get_handle(area: ?*dsa_area) dsa_handle;
pub extern fn dsa_allocate_extended(area: ?*dsa_area, size: usize, flags: c_int) dsa_pointer;
pub extern fn dsa_free(area: ?*dsa_area, dp: dsa_pointer) void;
pub extern fn dsa_get_address(area: ?*dsa_area, dp: dsa_pointer) ?*anyopaque;
pub extern fn dsa_trim(area: ?*dsa_area) void;
pub extern fn dsa_dump(area: ?*dsa_area) void;
pub const struct_TIDBitmap = opaque {};
pub const TIDBitmap = struct_TIDBitmap;
pub const struct_TBMIterator = opaque {};
pub const TBMIterator = struct_TBMIterator;
pub const struct_TBMSharedIterator = opaque {};
pub const TBMSharedIterator = struct_TBMSharedIterator;
pub const struct_TBMIterateResult = extern struct {
    blockno: BlockNumber align(4),
    ntuples: c_int,
    recheck: bool,
    pub fn offsets(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), OffsetNumber) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), OffsetNumber);
        return @ptrCast(ReturnType, @alignCast(@alignOf(OffsetNumber), @ptrCast(Intermediate, self) + 10));
    }
};
pub const TBMIterateResult = struct_TBMIterateResult;
pub extern fn tbm_create(maxbytes: c_long, dsa: ?*dsa_area) ?*TIDBitmap;
pub extern fn tbm_free(tbm: ?*TIDBitmap) void;
pub extern fn tbm_free_shared_area(dsa: ?*dsa_area, dp: dsa_pointer) void;
pub extern fn tbm_add_tuples(tbm: ?*TIDBitmap, tids: ItemPointer, ntids: c_int, recheck: bool) void;
pub extern fn tbm_add_page(tbm: ?*TIDBitmap, pageno: BlockNumber) void;
pub extern fn tbm_union(a: ?*TIDBitmap, b: ?*const TIDBitmap) void;
pub extern fn tbm_intersect(a: ?*TIDBitmap, b: ?*const TIDBitmap) void;
pub extern fn tbm_is_empty(tbm: ?*const TIDBitmap) bool;
pub extern fn tbm_begin_iterate(tbm: ?*TIDBitmap) ?*TBMIterator;
pub extern fn tbm_prepare_shared_iterate(tbm: ?*TIDBitmap) dsa_pointer;
pub extern fn tbm_iterate(iterator: ?*TBMIterator) [*c]TBMIterateResult;
pub extern fn tbm_shared_iterate(iterator: ?*TBMSharedIterator) [*c]TBMIterateResult;
pub extern fn tbm_end_iterate(iterator: ?*TBMIterator) void;
pub extern fn tbm_end_shared_iterate(iterator: ?*TBMSharedIterator) void;
pub extern fn tbm_attach_shared_iterate(dsa: ?*dsa_area, dp: dsa_pointer) ?*TBMSharedIterator;
pub extern fn tbm_calculate_entries(maxbytes: f64) c_long;
pub const struct_proclist_node = extern struct {
    next: c_int,
    prev: c_int,
};
pub const proclist_node = struct_proclist_node;
pub const struct_proclist_head = extern struct {
    head: c_int,
    tail: c_int,
};
pub const proclist_head = struct_proclist_head;
pub const struct_proclist_mutable_iter = extern struct {
    cur: c_int,
    next: c_int,
};
pub const proclist_mutable_iter = struct_proclist_mutable_iter;
pub const slock_t = u8; // /home/sarna/repo/pgturso/postgres/src/include/storage/s_lock.h:228:2: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/sarna/repo/pgturso/postgres/src/include/storage/s_lock.h:224:1: warning: unable to translate function, demoted to extern
pub extern fn tas(arg_lock: [*c]volatile slock_t) callconv(.C) c_int; // /home/sarna/repo/pgturso/postgres/src/include/storage/s_lock.h:246:2: warning: TODO implement translation of stmt class GCCAsmStmtClass
// /home/sarna/repo/pgturso/postgres/src/include/storage/s_lock.h:240:1: warning: unable to translate function, demoted to extern
pub extern fn spin_delay() callconv(.C) void;
pub extern var dummy_spinlock: slock_t;
pub extern fn s_lock(lock: [*c]volatile slock_t, file: [*c]const u8, line: c_int, func: [*c]const u8) c_int;
pub extern fn set_spins_per_delay(shared_spins_per_delay: c_int) void;
pub extern fn update_spins_per_delay(shared_spins_per_delay: c_int) c_int;
pub const SpinDelayStatus = extern struct {
    spins: c_int,
    delays: c_int,
    cur_delay: c_int,
    file: [*c]const u8,
    line: c_int,
    func: [*c]const u8,
};
pub fn init_spin_delay(arg_status: [*c]SpinDelayStatus, arg_file: [*c]const u8, arg_line: c_int, arg_func: [*c]const u8) callconv(.C) void {
    var status = arg_status;
    var file = arg_file;
    var line = arg_line;
    var func = arg_func;
    status.*.spins = 0;
    status.*.delays = 0;
    status.*.cur_delay = 0;
    status.*.file = file;
    status.*.line = line;
    status.*.func = func;
}
pub extern fn perform_spin_delay(status: [*c]SpinDelayStatus) void;
pub extern fn finish_spin_delay(status: [*c]SpinDelayStatus) void;
pub extern fn SpinlockSemas() c_int;
pub extern fn SpinlockSemaSize() Size;
pub const ConditionVariable = extern struct {
    mutex: slock_t,
    wakeup: proclist_head,
};
pub const union_ConditionVariableMinimallyPadded = extern union {
    cv: ConditionVariable,
    pad: [16]u8,
};
pub const ConditionVariableMinimallyPadded = union_ConditionVariableMinimallyPadded;
pub extern fn ConditionVariableInit(cv: [*c]ConditionVariable) void;
pub extern fn ConditionVariableSleep(cv: [*c]ConditionVariable, wait_event_info: uint32) void;
pub extern fn ConditionVariableTimedSleep(cv: [*c]ConditionVariable, timeout: c_long, wait_event_info: uint32) bool;
pub extern fn ConditionVariableCancelSleep() void;
pub extern fn ConditionVariablePrepareToSleep(cv: [*c]ConditionVariable) void;
pub extern fn ConditionVariableSignal(cv: [*c]ConditionVariable) void;
pub extern fn ConditionVariableBroadcast(cv: [*c]ConditionVariable) void;
pub const HashValueFunc = ?*const fn (?*const anyopaque, Size) callconv(.C) uint32;
pub const HashCompareFunc = ?*const fn (?*const anyopaque, ?*const anyopaque, Size) callconv(.C) c_int;
pub const HashCopyFunc = ?*const fn (?*anyopaque, ?*const anyopaque, Size) callconv(.C) ?*anyopaque;
pub const HashAllocFunc = ?*const fn (Size) callconv(.C) ?*anyopaque;
pub const struct_HASHELEMENT = extern struct {
    link: [*c]struct_HASHELEMENT,
    hashvalue: uint32,
};
pub const HASHELEMENT = struct_HASHELEMENT;
pub const struct_HASHHDR = opaque {};
pub const HASHHDR = struct_HASHHDR;
pub const struct_HTAB = opaque {};
pub const HTAB = struct_HTAB;
pub const struct_HASHCTL = extern struct {
    num_partitions: c_long,
    ssize: c_long,
    dsize: c_long,
    max_dsize: c_long,
    keysize: Size,
    entrysize: Size,
    hash: HashValueFunc,
    match: HashCompareFunc,
    keycopy: HashCopyFunc,
    alloc: HashAllocFunc,
    hcxt: MemoryContext,
    hctl: ?*HASHHDR,
};
pub const HASHCTL = struct_HASHCTL;
pub const HASH_FIND: c_int = 0;
pub const HASH_ENTER: c_int = 1;
pub const HASH_REMOVE: c_int = 2;
pub const HASH_ENTER_NULL: c_int = 3;
pub const HASHACTION = c_uint;
pub const HASH_SEQ_STATUS = extern struct {
    hashp: ?*HTAB,
    curBucket: uint32,
    curEntry: [*c]HASHELEMENT,
};
pub extern fn hash_create(tabname: [*c]const u8, nelem: c_long, info: [*c]const HASHCTL, flags: c_int) ?*HTAB;
pub extern fn hash_destroy(hashp: ?*HTAB) void;
pub extern fn hash_stats(where: [*c]const u8, hashp: ?*HTAB) void;
pub extern fn hash_search(hashp: ?*HTAB, keyPtr: ?*const anyopaque, action: HASHACTION, foundPtr: [*c]bool) ?*anyopaque;
pub extern fn get_hash_value(hashp: ?*HTAB, keyPtr: ?*const anyopaque) uint32;
pub extern fn hash_search_with_hash_value(hashp: ?*HTAB, keyPtr: ?*const anyopaque, hashvalue: uint32, action: HASHACTION, foundPtr: [*c]bool) ?*anyopaque;
pub extern fn hash_update_hash_key(hashp: ?*HTAB, existingEntry: ?*anyopaque, newKeyPtr: ?*const anyopaque) bool;
pub extern fn hash_get_num_entries(hashp: ?*HTAB) c_long;
pub extern fn hash_seq_init(status: [*c]HASH_SEQ_STATUS, hashp: ?*HTAB) void;
pub extern fn hash_seq_search(status: [*c]HASH_SEQ_STATUS) ?*anyopaque;
pub extern fn hash_seq_term(status: [*c]HASH_SEQ_STATUS) void;
pub extern fn hash_freeze(hashp: ?*HTAB) void;
pub extern fn hash_estimate_size(num_entries: c_long, entrysize: Size) Size;
pub extern fn hash_select_dirsize(num_entries: c_long) c_long;
pub extern fn hash_get_shared_size(info: [*c]HASHCTL, flags: c_int) Size;
pub extern fn AtEOXact_HashTables(isCommit: bool) void;
pub extern fn AtEOSubXact_HashTables(isCommit: bool, nestDepth: c_int) void;
pub const ENR_NAMED_TUPLESTORE: c_int = 0;
pub const enum_EphemeralNameRelationType = c_uint;
pub const EphemeralNameRelationType = enum_EphemeralNameRelationType;
pub const struct_EphemeralNamedRelationMetadataData = extern struct {
    name: [*c]u8,
    reliddesc: Oid,
    tupdesc: TupleDesc,
    enrtype: EphemeralNameRelationType,
    enrtuples: f64,
};
pub const EphemeralNamedRelationMetadataData = struct_EphemeralNamedRelationMetadataData;
pub const EphemeralNamedRelationMetadata = [*c]EphemeralNamedRelationMetadataData;
pub const struct_EphemeralNamedRelationData = extern struct {
    md: EphemeralNamedRelationMetadataData,
    reldata: ?*anyopaque,
};
pub const EphemeralNamedRelationData = struct_EphemeralNamedRelationData;
pub const EphemeralNamedRelation = [*c]EphemeralNamedRelationData;
pub extern fn create_queryEnv() ?*QueryEnvironment;
pub extern fn get_visible_ENR_metadata(queryEnv: ?*QueryEnvironment, refname: [*c]const u8) EphemeralNamedRelationMetadata;
pub extern fn register_ENR(queryEnv: ?*QueryEnvironment, enr: EphemeralNamedRelation) void;
pub extern fn unregister_ENR(queryEnv: ?*QueryEnvironment, name: [*c]const u8) void;
pub extern fn get_ENR(queryEnv: ?*QueryEnvironment, name: [*c]const u8) EphemeralNamedRelation;
pub extern fn ENRMetadataGetTupDesc(enrmd: EphemeralNamedRelationMetadata) TupleDesc;
pub const struct_dirent = extern struct {
    d_ino: __ino_t,
    d_off: __off_t,
    d_reclen: c_ushort,
    d_type: u8,
    d_name: [256]u8,
};
pub const DT_UNKNOWN: c_int = 0;
pub const DT_FIFO: c_int = 1;
pub const DT_CHR: c_int = 2;
pub const DT_DIR: c_int = 4;
pub const DT_BLK: c_int = 6;
pub const DT_REG: c_int = 8;
pub const DT_LNK: c_int = 10;
pub const DT_SOCK: c_int = 12;
pub const DT_WHT: c_int = 14;
const enum_unnamed_13 = c_uint;
pub const struct___dirstream = opaque {};
pub const DIR = struct___dirstream;
pub extern fn closedir(__dirp: ?*DIR) c_int;
pub extern fn opendir(__name: [*c]const u8) ?*DIR;
pub extern fn fdopendir(__fd: c_int) ?*DIR;
pub extern fn readdir(__dirp: ?*DIR) [*c]struct_dirent;
pub extern fn readdir_r(noalias __dirp: ?*DIR, noalias __entry: [*c]struct_dirent, noalias __result: [*c][*c]struct_dirent) c_int;
pub extern fn rewinddir(__dirp: ?*DIR) void;
pub extern fn seekdir(__dirp: ?*DIR, __pos: c_long) void;
pub extern fn telldir(__dirp: ?*DIR) c_long;
pub extern fn dirfd(__dirp: ?*DIR) c_int;
pub extern fn scandir(noalias __dir: [*c]const u8, noalias __namelist: [*c][*c][*c]struct_dirent, __selector: ?*const fn ([*c]const struct_dirent) callconv(.C) c_int, __cmp: ?*const fn ([*c][*c]const struct_dirent, [*c][*c]const struct_dirent) callconv(.C) c_int) c_int;
pub extern fn alphasort(__e1: [*c][*c]const struct_dirent, __e2: [*c][*c]const struct_dirent) c_int;
pub extern fn getdirentries(__fd: c_int, noalias __buf: [*c]u8, __nbytes: usize, noalias __basep: [*c]__off_t) __ssize_t;
pub const RECOVERY_INIT_SYNC_METHOD_FSYNC: c_int = 0;
pub const RECOVERY_INIT_SYNC_METHOD_SYNCFS: c_int = 1;
pub const enum_RecoveryInitSyncMethod = c_uint;
pub const RecoveryInitSyncMethod = enum_RecoveryInitSyncMethod;
pub const struct_iovec = opaque {};
pub const File = c_int;
pub extern var max_files_per_process: c_int;
pub extern var data_sync_retry: bool;
pub extern var recovery_init_sync_method: c_int;
pub extern var max_safe_fds: c_int;
pub extern fn PathNameOpenFile(fileName: [*c]const u8, fileFlags: c_int) File;
pub extern fn PathNameOpenFilePerm(fileName: [*c]const u8, fileFlags: c_int, fileMode: mode_t) File;
pub extern fn OpenTemporaryFile(interXact: bool) File;
pub extern fn FileClose(file: File) void;
pub extern fn FilePrefetch(file: File, offset: off_t, amount: c_int, wait_event_info: uint32) c_int;
pub extern fn FileRead(file: File, buffer: [*c]u8, amount: c_int, offset: off_t, wait_event_info: uint32) c_int;
pub extern fn FileWrite(file: File, buffer: [*c]u8, amount: c_int, offset: off_t, wait_event_info: uint32) c_int;
pub extern fn FileSync(file: File, wait_event_info: uint32) c_int;
pub extern fn FileSize(file: File) off_t;
pub extern fn FileTruncate(file: File, offset: off_t, wait_event_info: uint32) c_int;
pub extern fn FileWriteback(file: File, offset: off_t, nbytes: off_t, wait_event_info: uint32) void;
pub extern fn FilePathName(file: File) [*c]u8;
pub extern fn FileGetRawDesc(file: File) c_int;
pub extern fn FileGetRawFlags(file: File) c_int;
pub extern fn FileGetRawMode(file: File) mode_t;
pub extern fn PathNameCreateTemporaryFile(name: [*c]const u8, error_on_failure: bool) File;
pub extern fn PathNameOpenTemporaryFile(path: [*c]const u8, mode: c_int) File;
pub extern fn PathNameDeleteTemporaryFile(name: [*c]const u8, error_on_failure: bool) bool;
pub extern fn PathNameCreateTemporaryDir(base: [*c]const u8, name: [*c]const u8) void;
pub extern fn PathNameDeleteTemporaryDir(name: [*c]const u8) void;
pub extern fn TempTablespacePath(path: [*c]u8, tablespace: Oid) void;
pub extern fn AllocateFile(name: [*c]const u8, mode: [*c]const u8) [*c]FILE;
pub extern fn FreeFile(file: [*c]FILE) c_int;
pub extern fn OpenPipeStream(command: [*c]const u8, mode: [*c]const u8) [*c]FILE;
pub extern fn ClosePipeStream(file: [*c]FILE) c_int;
pub extern fn AllocateDir(dirname: [*c]const u8) ?*DIR;
pub extern fn ReadDir(dir: ?*DIR, dirname: [*c]const u8) [*c]struct_dirent;
pub extern fn ReadDirExtended(dir: ?*DIR, dirname: [*c]const u8, elevel: c_int) [*c]struct_dirent;
pub extern fn FreeDir(dir: ?*DIR) c_int;
pub extern fn OpenTransientFile(fileName: [*c]const u8, fileFlags: c_int) c_int;
pub extern fn OpenTransientFilePerm(fileName: [*c]const u8, fileFlags: c_int, fileMode: mode_t) c_int;
pub extern fn CloseTransientFile(fd: c_int) c_int;
pub extern fn BasicOpenFile(fileName: [*c]const u8, fileFlags: c_int) c_int;
pub extern fn BasicOpenFilePerm(fileName: [*c]const u8, fileFlags: c_int, fileMode: mode_t) c_int;
pub extern fn AcquireExternalFD() bool;
pub extern fn ReserveExternalFD() void;
pub extern fn ReleaseExternalFD() void;
pub extern fn MakePGDirectory(directoryName: [*c]const u8) c_int;
pub extern fn InitFileAccess() void;
pub extern fn InitTemporaryFileAccess() void;
pub extern fn set_max_safe_fds() void;
pub extern fn closeAllVfds() void;
pub extern fn SetTempTablespaces(tableSpaces: [*c]Oid, numSpaces: c_int) void;
pub extern fn TempTablespacesAreSet() bool;
pub extern fn GetTempTablespaces(tableSpaces: [*c]Oid, numSpaces: c_int) c_int;
pub extern fn GetNextTempTableSpace() Oid;
pub extern fn AtEOXact_Files(isCommit: bool) void;
pub extern fn AtEOSubXact_Files(isCommit: bool, mySubid: SubTransactionId, parentSubid: SubTransactionId) void;
pub extern fn RemovePgTempFiles() void;
pub extern fn RemovePgTempFilesInDir(tmpdirname: [*c]const u8, missing_ok: bool, unlink_all: bool) void;
pub extern fn looks_like_temp_rel_name(name: [*c]const u8) bool;
pub extern fn pg_fsync(fd: c_int) c_int;
pub extern fn pg_fsync_no_writethrough(fd: c_int) c_int;
pub extern fn pg_fsync_writethrough(fd: c_int) c_int;
pub extern fn pg_fdatasync(fd: c_int) c_int;
pub extern fn pg_flush_data(fd: c_int, offset: off_t, amount: off_t) void;
pub extern fn pg_pwritev_with_retry(fd: c_int, iov: ?*const struct_iovec, iovcnt: c_int, offset: off_t) isize;
pub extern fn pg_truncate(path: [*c]const u8, length: off_t) c_int;
pub extern fn fsync_fname(fname: [*c]const u8, isdir: bool) void;
pub extern fn fsync_fname_ext(fname: [*c]const u8, isdir: bool, ignore_perm: bool, elevel: c_int) c_int;
pub extern fn durable_rename(oldfile: [*c]const u8, newfile: [*c]const u8, loglevel: c_int) c_int;
pub extern fn durable_unlink(fname: [*c]const u8, loglevel: c_int) c_int;
pub extern fn durable_rename_excl(oldfile: [*c]const u8, newfile: [*c]const u8, loglevel: c_int) c_int;
pub extern fn SyncDataDirectory() void;
pub extern fn data_sync_elevel(elevel: c_int) c_int;
pub const struct_FileSet = extern struct {
    creator_pid: pid_t,
    number: uint32,
    ntablespaces: c_int,
    tablespaces: [8]Oid,
};
pub const FileSet = struct_FileSet;
pub extern fn FileSetInit(fileset: [*c]FileSet) void;
pub extern fn FileSetCreate(fileset: [*c]FileSet, name: [*c]const u8) File;
pub extern fn FileSetOpen(fileset: [*c]FileSet, name: [*c]const u8, mode: c_int) File;
pub extern fn FileSetDelete(fileset: [*c]FileSet, name: [*c]const u8, error_on_failure: bool) bool;
pub extern fn FileSetDeleteAll(fileset: [*c]FileSet) void;
pub const struct_SharedFileSet = extern struct {
    fs: FileSet,
    mutex: slock_t,
    refcnt: c_int,
};
pub const SharedFileSet = struct_SharedFileSet;
pub extern fn SharedFileSetInit(fileset: [*c]SharedFileSet, seg: ?*dsm_segment) void;
pub extern fn SharedFileSetAttach(fileset: [*c]SharedFileSet, seg: ?*dsm_segment) void;
pub extern fn SharedFileSetDeleteAll(fileset: [*c]SharedFileSet) void;
pub const struct_SharedTuplestore = opaque {};
pub const SharedTuplestore = struct_SharedTuplestore;
pub const struct_SharedTuplestoreAccessor = opaque {};
pub const SharedTuplestoreAccessor = struct_SharedTuplestoreAccessor;
pub extern fn sts_estimate(participants: c_int) usize;
pub extern fn sts_initialize(sts: ?*SharedTuplestore, participants: c_int, my_participant_number: c_int, meta_data_size: usize, flags: c_int, fileset: [*c]SharedFileSet, name: [*c]const u8) ?*SharedTuplestoreAccessor;
pub extern fn sts_attach(sts: ?*SharedTuplestore, my_participant_number: c_int, fileset: [*c]SharedFileSet) ?*SharedTuplestoreAccessor;
pub extern fn sts_end_write(accessor: ?*SharedTuplestoreAccessor) void;
pub extern fn sts_reinitialize(accessor: ?*SharedTuplestoreAccessor) void;
pub extern fn sts_begin_parallel_scan(accessor: ?*SharedTuplestoreAccessor) void;
pub extern fn sts_end_parallel_scan(accessor: ?*SharedTuplestoreAccessor) void;
pub extern fn sts_puttuple(accessor: ?*SharedTuplestoreAccessor, meta_data: ?*anyopaque, tuple: MinimalTuple) void;
pub extern fn sts_parallel_scan_next(accessor: ?*SharedTuplestoreAccessor, meta_data: ?*anyopaque) MinimalTuple;
pub const Timestamp = int64;
pub const TimeOffset = int64;
pub const fsec_t = int32;
pub const Interval = extern struct {
    time: TimeOffset,
    day: int32,
    month: int32,
};
pub const struct_pg_itm = extern struct {
    tm_usec: c_int,
    tm_sec: c_int,
    tm_min: c_int,
    tm_hour: int64,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
};
pub const struct_pg_itm_in = extern struct {
    tm_usec: int64,
    tm_mday: c_int,
    tm_mon: c_int,
    tm_year: c_int,
};
pub const SnapshotData = struct_SnapshotData;
pub extern fn RelationIdGetRelation(relationId: Oid) Relation;
pub extern fn RelationClose(relation: Relation) void;
pub extern fn RelationGetFKeyList(relation: Relation) [*c]List;
pub extern fn RelationGetIndexList(relation: Relation) [*c]List;
pub extern fn RelationGetStatExtList(relation: Relation) [*c]List;
pub extern fn RelationGetPrimaryKeyIndex(relation: Relation) Oid;
pub extern fn RelationGetReplicaIndex(relation: Relation) Oid;
pub extern fn RelationGetIndexExpressions(relation: Relation) [*c]List;
pub extern fn RelationGetDummyIndexExpressions(relation: Relation) [*c]List;
pub extern fn RelationGetIndexPredicate(relation: Relation) [*c]List;
pub extern fn RelationGetIndexRawAttOptions(relation: Relation) [*c]Datum;
pub extern fn RelationGetIndexAttOptions(relation: Relation, copy: bool) [*c][*c]bytea;
pub const INDEX_ATTR_BITMAP_ALL: c_int = 0;
pub const INDEX_ATTR_BITMAP_KEY: c_int = 1;
pub const INDEX_ATTR_BITMAP_PRIMARY_KEY: c_int = 2;
pub const INDEX_ATTR_BITMAP_IDENTITY_KEY: c_int = 3;
pub const enum_IndexAttrBitmapKind = c_uint;
pub const IndexAttrBitmapKind = enum_IndexAttrBitmapKind;
pub extern fn RelationGetIndexAttrBitmap(relation: Relation, attrKind: IndexAttrBitmapKind) [*c]Bitmapset;
pub extern fn RelationGetIdentityKeyBitmap(relation: Relation) [*c]Bitmapset;
pub extern fn RelationGetExclusionInfo(indexRelation: Relation, operators: [*c][*c]Oid, procs: [*c][*c]Oid, strategies: [*c][*c]uint16) void;
pub extern fn RelationInitIndexAccessInfo(relation: Relation) void;
pub const struct_PublicationDesc = opaque {};
pub extern fn RelationBuildPublicationDesc(relation: Relation, pubdesc: ?*struct_PublicationDesc) void;
pub extern fn RelationInitTableAccessMethod(relation: Relation) void;
pub extern fn errtable(rel: Relation) c_int;
pub extern fn errtablecol(rel: Relation, attnum: c_int) c_int;
pub extern fn errtablecolname(rel: Relation, colname: [*c]const u8) c_int;
pub extern fn errtableconstraint(rel: Relation, conname: [*c]const u8) c_int;
pub extern fn RelationCacheInitialize() void;
pub extern fn RelationCacheInitializePhase2() void;
pub extern fn RelationCacheInitializePhase3() void;
pub extern fn RelationBuildLocalRelation(relname: [*c]const u8, relnamespace: Oid, tupDesc: TupleDesc, relid: Oid, accessmtd: Oid, relfilenode: Oid, reltablespace: Oid, shared_relation: bool, mapped_relation: bool, relpersistence: u8, relkind: u8) Relation;
pub extern fn RelationSetNewRelfilenode(relation: Relation, persistence: u8) void;
pub extern fn RelationAssumeNewRelfilenode(relation: Relation) void;
pub extern fn RelationForgetRelation(rid: Oid) void;
pub extern fn RelationCacheInvalidateEntry(relationId: Oid) void;
pub extern fn RelationCacheInvalidate(debug_discard: bool) void;
pub extern fn RelationCloseSmgrByOid(relationId: Oid) void;
pub extern fn AtEOXact_RelationCache(isCommit: bool) void;
pub extern fn AtEOSubXact_RelationCache(isCommit: bool, mySubid: SubTransactionId, parentSubid: SubTransactionId) void;
pub extern fn RelationIdIsInInitFile(relationId: Oid) bool;
pub extern fn RelationCacheInitFilePreInvalidate() void;
pub extern fn RelationCacheInitFilePostInvalidate() void;
pub extern fn RelationCacheInitFileRemove() void;
pub extern var criticalRelcachesBuilt: bool;
pub extern var criticalSharedRelcachesBuilt: bool;
pub const SortSupport = [*c]struct_SortSupportData;
pub const struct_SortSupportData = extern struct {
    ssup_cxt: MemoryContext,
    ssup_collation: Oid,
    ssup_reverse: bool,
    ssup_nulls_first: bool,
    ssup_attno: AttrNumber,
    ssup_extra: ?*anyopaque,
    comparator: ?*const fn (Datum, Datum, SortSupport) callconv(.C) c_int,
    abbreviate: bool,
    abbrev_converter: ?*const fn (Datum, SortSupport) callconv(.C) Datum,
    abbrev_abort: ?*const fn (c_int, SortSupport) callconv(.C) bool,
    abbrev_full_comparator: ?*const fn (Datum, Datum, SortSupport) callconv(.C) c_int,
};
pub const SortSupportData = struct_SortSupportData;
pub fn ApplySortComparator(arg_datum1: Datum, arg_isNull1: bool, arg_datum2: Datum, arg_isNull2: bool, arg_ssup: SortSupport) callconv(.C) c_int {
    var datum1 = arg_datum1;
    var isNull1 = arg_isNull1;
    var datum2 = arg_datum2;
    var isNull2 = arg_isNull2;
    var ssup = arg_ssup;
    var compare: c_int = undefined;
    if (isNull1) {
        if (isNull2) {
            compare = 0;
        } else if (ssup.*.ssup_nulls_first) {
            compare = -@as(c_int, 1);
        } else {
            compare = 1;
        }
    } else if (isNull2) {
        if (ssup.*.ssup_nulls_first) {
            compare = 1;
        } else {
            compare = -@as(c_int, 1);
        }
    } else {
        compare = ssup.*.comparator.?(datum1, datum2, ssup);
        if (ssup.*.ssup_reverse) {
            _ = blk: {
                const tmp = if (compare < @as(c_int, 0)) @as(c_int, 1) else -compare;
                compare = tmp;
                break :blk tmp;
            };
        }
    }
    return compare;
}
pub fn ApplyUnsignedSortComparator(arg_datum1: Datum, arg_isNull1: bool, arg_datum2: Datum, arg_isNull2: bool, arg_ssup: SortSupport) callconv(.C) c_int {
    var datum1 = arg_datum1;
    var isNull1 = arg_isNull1;
    var datum2 = arg_datum2;
    var isNull2 = arg_isNull2;
    var ssup = arg_ssup;
    var compare: c_int = undefined;
    if (isNull1) {
        if (isNull2) {
            compare = 0;
        } else if (ssup.*.ssup_nulls_first) {
            compare = -@as(c_int, 1);
        } else {
            compare = 1;
        }
    } else if (isNull2) {
        if (ssup.*.ssup_nulls_first) {
            compare = 1;
        } else {
            compare = -@as(c_int, 1);
        }
    } else {
        compare = if (datum1 < datum2) -@as(c_int, 1) else if (datum1 > datum2) @as(c_int, 1) else @as(c_int, 0);
        if (ssup.*.ssup_reverse) {
            _ = blk: {
                const tmp = if (compare < @as(c_int, 0)) @as(c_int, 1) else -compare;
                compare = tmp;
                break :blk tmp;
            };
        }
    }
    return compare;
}
pub fn ApplySignedSortComparator(arg_datum1: Datum, arg_isNull1: bool, arg_datum2: Datum, arg_isNull2: bool, arg_ssup: SortSupport) callconv(.C) c_int {
    var datum1 = arg_datum1;
    var isNull1 = arg_isNull1;
    var datum2 = arg_datum2;
    var isNull2 = arg_isNull2;
    var ssup = arg_ssup;
    var compare: c_int = undefined;
    if (isNull1) {
        if (isNull2) {
            compare = 0;
        } else if (ssup.*.ssup_nulls_first) {
            compare = -@as(c_int, 1);
        } else {
            compare = 1;
        }
    } else if (isNull2) {
        if (ssup.*.ssup_nulls_first) {
            compare = 1;
        } else {
            compare = -@as(c_int, 1);
        }
    } else {
        compare = if (@bitCast(int64, datum1) < @bitCast(int64, datum2)) -@as(c_int, 1) else if (@bitCast(int64, datum1) > @bitCast(int64, datum2)) @as(c_int, 1) else @as(c_int, 0);
        if (ssup.*.ssup_reverse) {
            _ = blk: {
                const tmp = if (compare < @as(c_int, 0)) @as(c_int, 1) else -compare;
                compare = tmp;
                break :blk tmp;
            };
        }
    }
    return compare;
}
pub fn ApplyInt32SortComparator(arg_datum1: Datum, arg_isNull1: bool, arg_datum2: Datum, arg_isNull2: bool, arg_ssup: SortSupport) callconv(.C) c_int {
    var datum1 = arg_datum1;
    var isNull1 = arg_isNull1;
    var datum2 = arg_datum2;
    var isNull2 = arg_isNull2;
    var ssup = arg_ssup;
    var compare: c_int = undefined;
    if (isNull1) {
        if (isNull2) {
            compare = 0;
        } else if (ssup.*.ssup_nulls_first) {
            compare = -@as(c_int, 1);
        } else {
            compare = 1;
        }
    } else if (isNull2) {
        if (ssup.*.ssup_nulls_first) {
            compare = 1;
        } else {
            compare = -@as(c_int, 1);
        }
    } else {
        compare = if (@bitCast(int32, @truncate(c_uint, datum1)) < @bitCast(int32, @truncate(c_uint, datum2))) -@as(c_int, 1) else if (@bitCast(int32, @truncate(c_uint, datum1)) > @bitCast(int32, @truncate(c_uint, datum2))) @as(c_int, 1) else @as(c_int, 0);
        if (ssup.*.ssup_reverse) {
            _ = blk: {
                const tmp = if (compare < @as(c_int, 0)) @as(c_int, 1) else -compare;
                compare = tmp;
                break :blk tmp;
            };
        }
    }
    return compare;
}
pub fn ApplySortAbbrevFullComparator(arg_datum1: Datum, arg_isNull1: bool, arg_datum2: Datum, arg_isNull2: bool, arg_ssup: SortSupport) callconv(.C) c_int {
    var datum1 = arg_datum1;
    var isNull1 = arg_isNull1;
    var datum2 = arg_datum2;
    var isNull2 = arg_isNull2;
    var ssup = arg_ssup;
    var compare: c_int = undefined;
    if (isNull1) {
        if (isNull2) {
            compare = 0;
        } else if (ssup.*.ssup_nulls_first) {
            compare = -@as(c_int, 1);
        } else {
            compare = 1;
        }
    } else if (isNull2) {
        if (ssup.*.ssup_nulls_first) {
            compare = 1;
        } else {
            compare = -@as(c_int, 1);
        }
    } else {
        compare = ssup.*.abbrev_full_comparator.?(datum1, datum2, ssup);
        if (ssup.*.ssup_reverse) {
            _ = blk: {
                const tmp = if (compare < @as(c_int, 0)) @as(c_int, 1) else -compare;
                compare = tmp;
                break :blk tmp;
            };
        }
    }
    return compare;
}
pub extern fn ssup_datum_unsigned_cmp(x: Datum, y: Datum, ssup: SortSupport) c_int;
pub extern fn ssup_datum_signed_cmp(x: Datum, y: Datum, ssup: SortSupport) c_int;
pub extern fn ssup_datum_int32_cmp(x: Datum, y: Datum, ssup: SortSupport) c_int;
pub extern fn PrepareSortSupportComparisonShim(cmpFunc: Oid, ssup: SortSupport) void;
pub extern fn PrepareSortSupportFromOrderingOp(orderingOp: Oid, ssup: SortSupport) void;
pub extern fn PrepareSortSupportFromIndexRel(indexRel: Relation, strategy: int16, ssup: SortSupport) void;
pub extern fn PrepareSortSupportFromGistIndexRel(indexRel: Relation, ssup: SortSupport) void;
pub const struct_IndexTupleData = extern struct {
    t_tid: ItemPointerData,
    t_info: c_ushort,
};
pub const IndexTupleData = struct_IndexTupleData;
pub const IndexTuple = [*c]IndexTupleData;
pub const struct_IndexAttributeBitMapData = extern struct {
    bits: [4]bits8,
};
pub const IndexAttributeBitMapData = struct_IndexAttributeBitMapData;
pub const IndexAttributeBitMap = [*c]IndexAttributeBitMapData;
pub extern fn index_form_tuple(tupleDescriptor: TupleDesc, values: [*c]Datum, isnull: [*c]bool) IndexTuple;
pub extern fn index_form_tuple_context(tupleDescriptor: TupleDesc, values: [*c]Datum, isnull: [*c]bool, context: MemoryContext) IndexTuple;
pub extern fn nocache_index_getattr(tup: IndexTuple, attnum: c_int, tupleDesc: TupleDesc) Datum;
pub extern fn index_deform_tuple(tup: IndexTuple, tupleDescriptor: TupleDesc, values: [*c]Datum, isnull: [*c]bool) void;
pub extern fn index_deform_tuple_internal(tupleDescriptor: TupleDesc, values: [*c]Datum, isnull: [*c]bool, tp: [*c]u8, bp: [*c]bits8, hasnulls: c_int) void;
pub extern fn CopyIndexTuple(source: IndexTuple) IndexTuple;
pub extern fn index_truncate_tuple(sourceDescriptor: TupleDesc, source: IndexTuple, leavenatts: c_int) IndexTuple;
pub const struct_Tuplesortstate = opaque {};
pub const Tuplesortstate = struct_Tuplesortstate;
pub const struct_Sharedsort = opaque {};
pub const Sharedsort = struct_Sharedsort;
pub const struct_SortCoordinateData = extern struct {
    isWorker: bool,
    nParticipants: c_int,
    sharedsort: ?*Sharedsort,
};
pub const SortCoordinateData = struct_SortCoordinateData;
pub const SortCoordinate = [*c]struct_SortCoordinateData;
pub const SORT_TYPE_STILL_IN_PROGRESS: c_int = 0;
pub const SORT_TYPE_TOP_N_HEAPSORT: c_int = 1;
pub const SORT_TYPE_QUICKSORT: c_int = 2;
pub const SORT_TYPE_EXTERNAL_SORT: c_int = 4;
pub const SORT_TYPE_EXTERNAL_MERGE: c_int = 8;
pub const TuplesortMethod = c_uint;
pub const SORT_SPACE_TYPE_DISK: c_int = 0;
pub const SORT_SPACE_TYPE_MEMORY: c_int = 1;
pub const TuplesortSpaceType = c_uint;
pub const struct_TuplesortInstrumentation = extern struct {
    sortMethod: TuplesortMethod,
    spaceType: TuplesortSpaceType,
    spaceUsed: int64,
};
pub const TuplesortInstrumentation = struct_TuplesortInstrumentation;
pub extern fn tuplesort_begin_heap(tupDesc: TupleDesc, nkeys: c_int, attNums: [*c]AttrNumber, sortOperators: [*c]Oid, sortCollations: [*c]Oid, nullsFirstFlags: [*c]bool, workMem: c_int, coordinate: SortCoordinate, sortopt: c_int) ?*Tuplesortstate;
pub extern fn tuplesort_begin_cluster(tupDesc: TupleDesc, indexRel: Relation, workMem: c_int, coordinate: SortCoordinate, sortopt: c_int) ?*Tuplesortstate;
pub extern fn tuplesort_begin_index_btree(heapRel: Relation, indexRel: Relation, enforceUnique: bool, uniqueNullsNotDistinct: bool, workMem: c_int, coordinate: SortCoordinate, sortopt: c_int) ?*Tuplesortstate;
pub extern fn tuplesort_begin_index_hash(heapRel: Relation, indexRel: Relation, high_mask: uint32, low_mask: uint32, max_buckets: uint32, workMem: c_int, coordinate: SortCoordinate, sortopt: c_int) ?*Tuplesortstate;
pub extern fn tuplesort_begin_index_gist(heapRel: Relation, indexRel: Relation, workMem: c_int, coordinate: SortCoordinate, sortopt: c_int) ?*Tuplesortstate;
pub extern fn tuplesort_begin_datum(datumType: Oid, sortOperator: Oid, sortCollation: Oid, nullsFirstFlag: bool, workMem: c_int, coordinate: SortCoordinate, sortopt: c_int) ?*Tuplesortstate;
pub extern fn tuplesort_set_bound(state: ?*Tuplesortstate, bound: int64) void;
pub extern fn tuplesort_used_bound(state: ?*Tuplesortstate) bool;
pub extern fn tuplesort_puttupleslot(state: ?*Tuplesortstate, slot: [*c]TupleTableSlot) void;
pub extern fn tuplesort_putheaptuple(state: ?*Tuplesortstate, tup: HeapTuple) void;
pub extern fn tuplesort_putindextuplevalues(state: ?*Tuplesortstate, rel: Relation, self: ItemPointer, values: [*c]Datum, isnull: [*c]bool) void;
pub extern fn tuplesort_putdatum(state: ?*Tuplesortstate, val: Datum, isNull: bool) void;
pub extern fn tuplesort_performsort(state: ?*Tuplesortstate) void;
pub extern fn tuplesort_gettupleslot(state: ?*Tuplesortstate, forward: bool, copy: bool, slot: [*c]TupleTableSlot, abbrev: [*c]Datum) bool;
pub extern fn tuplesort_getheaptuple(state: ?*Tuplesortstate, forward: bool) HeapTuple;
pub extern fn tuplesort_getindextuple(state: ?*Tuplesortstate, forward: bool) IndexTuple;
pub extern fn tuplesort_getdatum(state: ?*Tuplesortstate, forward: bool, val: [*c]Datum, isNull: [*c]bool, abbrev: [*c]Datum) bool;
pub extern fn tuplesort_skiptuples(state: ?*Tuplesortstate, ntuples: int64, forward: bool) bool;
pub extern fn tuplesort_end(state: ?*Tuplesortstate) void;
pub extern fn tuplesort_reset(state: ?*Tuplesortstate) void;
pub extern fn tuplesort_get_stats(state: ?*Tuplesortstate, stats: [*c]TuplesortInstrumentation) void;
pub extern fn tuplesort_method_name(m: TuplesortMethod) [*c]const u8;
pub extern fn tuplesort_space_type_name(t: TuplesortSpaceType) [*c]const u8;
pub extern fn tuplesort_merge_order(allowedMem: int64) c_int;
pub extern fn tuplesort_estimate_shared(nworkers: c_int) Size;
pub extern fn tuplesort_initialize_shared(shared: ?*Sharedsort, nWorkers: c_int, seg: ?*dsm_segment) void;
pub extern fn tuplesort_attach_shared(shared: ?*Sharedsort, seg: ?*dsm_segment) void;
pub extern fn tuplesort_rescan(state: ?*Tuplesortstate) void;
pub extern fn tuplesort_markpos(state: ?*Tuplesortstate) void;
pub extern fn tuplesort_restorepos(state: ?*Tuplesortstate) void;
pub const struct_Tuplestorestate = opaque {};
pub const Tuplestorestate = struct_Tuplestorestate;
pub extern fn tuplestore_begin_heap(randomAccess: bool, interXact: bool, maxKBytes: c_int) ?*Tuplestorestate;
pub extern fn tuplestore_set_eflags(state: ?*Tuplestorestate, eflags: c_int) void;
pub extern fn tuplestore_puttupleslot(state: ?*Tuplestorestate, slot: [*c]TupleTableSlot) void;
pub extern fn tuplestore_puttuple(state: ?*Tuplestorestate, tuple: HeapTuple) void;
pub extern fn tuplestore_putvalues(state: ?*Tuplestorestate, tdesc: TupleDesc, values: [*c]Datum, isnull: [*c]bool) void;
pub extern fn tuplestore_alloc_read_pointer(state: ?*Tuplestorestate, eflags: c_int) c_int;
pub extern fn tuplestore_select_read_pointer(state: ?*Tuplestorestate, ptr: c_int) void;
pub extern fn tuplestore_copy_read_pointer(state: ?*Tuplestorestate, srcptr: c_int, destptr: c_int) void;
pub extern fn tuplestore_trim(state: ?*Tuplestorestate) void;
pub extern fn tuplestore_in_memory(state: ?*Tuplestorestate) bool;
pub extern fn tuplestore_gettupleslot(state: ?*Tuplestorestate, forward: bool, copy: bool, slot: [*c]TupleTableSlot) bool;
pub extern fn tuplestore_advance(state: ?*Tuplestorestate, forward: bool) bool;
pub extern fn tuplestore_skiptuples(state: ?*Tuplestorestate, ntuples: int64, forward: bool) bool;
pub extern fn tuplestore_tuple_count(state: ?*Tuplestorestate) int64;
pub extern fn tuplestore_ateof(state: ?*Tuplestorestate) bool;
pub extern fn tuplestore_rescan(state: ?*Tuplestorestate) void;
pub extern fn tuplestore_clear(state: ?*Tuplestorestate) void;
pub extern fn tuplestore_end(state: ?*Tuplestorestate) void;
pub const struct_ParallelHashJoinState = opaque {};
pub const struct_LogicalTapeSet = opaque {};
pub const ExprSingleResult: c_int = 0;
pub const ExprMultipleResult: c_int = 1;
pub const ExprEndResult: c_int = 2;
pub const ExprDoneCond = c_uint;
pub const SFRM_ValuePerCall: c_int = 1;
pub const SFRM_Materialize: c_int = 2;
pub const SFRM_Materialize_Random: c_int = 4;
pub const SFRM_Materialize_Preferred: c_int = 8;
pub const SetFunctionReturnMode = c_uint;
pub const struct_ReturnSetInfo = extern struct {
    type: NodeTag,
    econtext: [*c]ExprContext,
    expectedDesc: TupleDesc,
    allowedModes: c_int,
    returnMode: SetFunctionReturnMode,
    isDone: ExprDoneCond,
    setResult: ?*Tuplestorestate,
    setDesc: TupleDesc,
};
pub const ReturnSetInfo = struct_ReturnSetInfo;
pub const struct_MergeActionState = extern struct {
    type: NodeTag,
    mas_action: [*c]MergeAction,
    mas_proj: [*c]ProjectionInfo,
    mas_whenqual: [*c]ExprState,
};
pub const MergeActionState = struct_MergeActionState;
pub const struct_ResultRelInfoExtra = extern struct {
    rinfo: [*c]ResultRelInfo,
    ri_extraUpdatedCols: [*c]Bitmapset,
};
pub const ResultRelInfoExtra = struct_ResultRelInfoExtra;
pub const struct_AsyncRequest = extern struct {
    requestor: [*c]struct_PlanState,
    requestee: [*c]struct_PlanState,
    request_index: c_int,
    callback_pending: bool,
    request_complete: bool,
    result: [*c]TupleTableSlot,
};
pub const AsyncRequest = struct_AsyncRequest;
pub const struct_TupleHashEntryData = extern struct {
    firstTuple: MinimalTuple,
    additional: ?*anyopaque,
    status: uint32,
    hash: uint32,
};
pub const TupleHashEntry = [*c]struct_TupleHashEntryData;
pub const TupleHashEntryData = struct_TupleHashEntryData;
pub const struct_tuplehash_hash = extern struct {
    size: uint64,
    members: uint32,
    sizemask: uint32,
    grow_threshold: uint32,
    data: [*c]TupleHashEntryData,
    ctx: MemoryContext,
    private_data: ?*anyopaque,
};
pub const tuplehash_hash = struct_tuplehash_hash;
pub const struct_TupleHashTableData = extern struct {
    hashtab: [*c]tuplehash_hash,
    numCols: c_int,
    keyColIdx: [*c]AttrNumber,
    tab_hash_funcs: [*c]FmgrInfo,
    tab_eq_func: [*c]ExprState,
    tab_collations: [*c]Oid,
    tablecxt: MemoryContext,
    tempcxt: MemoryContext,
    entrysize: Size,
    tableslot: [*c]TupleTableSlot,
    inputslot: [*c]TupleTableSlot,
    in_hash_funcs: [*c]FmgrInfo,
    cur_eq_func: [*c]ExprState,
    hash_iv: uint32,
    exprcontext: [*c]ExprContext,
};
pub const TupleHashTable = [*c]struct_TupleHashTableData;
pub extern const pg_leftmost_one_pos: [256]uint8;
pub extern const pg_rightmost_one_pos: [256]uint8;
pub extern const pg_number_of_ones: [256]uint8;
pub fn pg_leftmost_one_pos32(arg_word: uint32) callconv(.C) c_int {
    var word = arg_word;
    _ = @as(c_int, 1);
    return @as(c_int, 31) - __builtin_clz(word);
} // /home/sarna/repo/pgturso/postgres/src/include/port/pg_bitutils.h:55:14: warning: TODO implement function '__builtin_clzl' in std.zig.c_builtins
// /home/sarna/repo/pgturso/postgres/src/include/port/pg_bitutils.h:49:1: warning: unable to translate function, demoted to extern
pub extern fn pg_leftmost_one_pos64(arg_word: uint64) callconv(.C) c_int;
pub fn pg_rightmost_one_pos32(arg_word: uint32) callconv(.C) c_int {
    var word = arg_word;
    _ = @as(c_int, 1);
    return __builtin_ctz(word);
} // /home/sarna/repo/pgturso/postgres/src/include/port/pg_bitutils.h:111:9: warning: TODO implement function '__builtin_ctzl' in std.zig.c_builtins
// /home/sarna/repo/pgturso/postgres/src/include/port/pg_bitutils.h:105:1: warning: unable to translate function, demoted to extern
pub extern fn pg_rightmost_one_pos64(arg_word: uint64) callconv(.C) c_int;
pub fn pg_nextpower2_32(arg_num: uint32) callconv(.C) uint32 {
    var num = arg_num;
    _ = @as(c_int, 1);
    if ((num & (num -% @bitCast(uint32, @as(c_int, 1)))) == @bitCast(uint32, @as(c_int, 0))) return num;
    return @bitCast(uint32, @as(c_int, 1)) << @intCast(@import("std").math.Log2Int(uint32), pg_leftmost_one_pos32(num) + @as(c_int, 1));
}
pub fn pg_nextpower2_64(arg_num: uint64) callconv(.C) uint64 {
    var num = arg_num;
    _ = @as(c_int, 1);
    if ((num & (num -% @bitCast(uint64, @as(c_long, @as(c_int, 1))))) == @bitCast(uint64, @as(c_long, @as(c_int, 0)))) return num;
    return @bitCast(uint64, @as(c_long, @as(c_int, 1))) << @intCast(@import("std").math.Log2Int(uint64), pg_leftmost_one_pos64(num) + @as(c_int, 1));
}
pub fn pg_prevpower2_32(arg_num: uint32) callconv(.C) uint32 {
    var num = arg_num;
    return @bitCast(uint32, @as(c_int, 1)) << @intCast(@import("std").math.Log2Int(uint32), pg_leftmost_one_pos32(num));
}
pub fn pg_prevpower2_64(arg_num: uint64) callconv(.C) uint64 {
    var num = arg_num;
    return @bitCast(uint64, @as(c_long, @as(c_int, 1))) << @intCast(@import("std").math.Log2Int(uint64), pg_leftmost_one_pos64(num));
}
pub fn pg_ceil_log2_32(arg_num: uint32) callconv(.C) uint32 {
    var num = arg_num;
    if (num < @bitCast(uint32, @as(c_int, 2))) return 0 else return @bitCast(uint32, pg_leftmost_one_pos32(num -% @bitCast(uint32, @as(c_int, 1))) + @as(c_int, 1));
    return @import("std").mem.zeroes(uint32);
}
pub fn pg_ceil_log2_64(arg_num: uint64) callconv(.C) uint64 {
    var num = arg_num;
    if (num < @bitCast(uint64, @as(c_long, @as(c_int, 2)))) return 0 else return @bitCast(uint64, @as(c_long, pg_leftmost_one_pos64(num -% @bitCast(uint64, @as(c_long, @as(c_int, 1)))) + @as(c_int, 1)));
    return @import("std").mem.zeroes(uint64);
}
pub extern var pg_popcount32: ?*const fn (uint32) callconv(.C) c_int;
pub extern var pg_popcount64: ?*const fn (uint64) callconv(.C) c_int;
pub extern fn pg_popcount(buf: [*c]const u8, bytes: c_int) uint64;
pub fn pg_rotate_right32(arg_word: uint32, arg_n: c_int) callconv(.C) uint32 {
    var word = arg_word;
    var n = arg_n;
    return (word >> @intCast(@import("std").math.Log2Int(uint32), n)) | (word << @intCast(@import("std").math.Log2Int(uint32), @as(c_int, 32) - n));
}
pub fn pg_rotate_left32(arg_word: uint32, arg_n: c_int) callconv(.C) uint32 {
    var word = arg_word;
    var n = arg_n;
    return (word << @intCast(@import("std").math.Log2Int(uint32), n)) | (word >> @intCast(@import("std").math.Log2Int(uint32), @as(c_int, 32) - n));
}
pub const tuplehash_SH_EMPTY: c_int = 0;
pub const tuplehash_SH_IN_USE: c_int = 1;
pub const enum_tuplehash_status = c_uint;
pub const tuplehash_status = enum_tuplehash_status;
pub const struct_tuplehash_iterator = extern struct {
    cur: uint32,
    end: uint32,
    done: bool,
};
pub const tuplehash_iterator = struct_tuplehash_iterator;
pub extern fn tuplehash_create(ctx: MemoryContext, nelements: uint32, private_data: ?*anyopaque) [*c]tuplehash_hash;
pub extern fn tuplehash_destroy(tb: [*c]tuplehash_hash) void;
pub extern fn tuplehash_reset(tb: [*c]tuplehash_hash) void;
pub extern fn tuplehash_grow(tb: [*c]tuplehash_hash, newsize: uint64) void;
pub extern fn tuplehash_insert(tb: [*c]tuplehash_hash, key: MinimalTuple, found: [*c]bool) [*c]TupleHashEntryData;
pub extern fn tuplehash_insert_hash(tb: [*c]tuplehash_hash, key: MinimalTuple, hash: uint32, found: [*c]bool) [*c]TupleHashEntryData;
pub extern fn tuplehash_lookup(tb: [*c]tuplehash_hash, key: MinimalTuple) [*c]TupleHashEntryData;
pub extern fn tuplehash_lookup_hash(tb: [*c]tuplehash_hash, key: MinimalTuple, hash: uint32) [*c]TupleHashEntryData;
pub extern fn tuplehash_delete_item(tb: [*c]tuplehash_hash, entry: [*c]TupleHashEntryData) void;
pub extern fn tuplehash_delete(tb: [*c]tuplehash_hash, key: MinimalTuple) bool;
pub extern fn tuplehash_start_iterate(tb: [*c]tuplehash_hash, iter: [*c]tuplehash_iterator) void;
pub extern fn tuplehash_start_iterate_at(tb: [*c]tuplehash_hash, iter: [*c]tuplehash_iterator, at: uint32) void;
pub extern fn tuplehash_iterate(tb: [*c]tuplehash_hash, iter: [*c]tuplehash_iterator) [*c]TupleHashEntryData;
pub extern fn tuplehash_stat(tb: [*c]tuplehash_hash) void;
pub const TupleHashTableData = struct_TupleHashTableData;
pub const TupleHashIterator = tuplehash_iterator;
pub const struct_WindowFuncExprState = extern struct {
    type: NodeTag,
    wfunc: [*c]WindowFunc,
    args: [*c]List,
    aggfilter: [*c]ExprState,
    wfuncno: c_int,
};
pub const WindowFuncExprState = struct_WindowFuncExprState;
pub const struct_SetExprState = extern struct {
    type: NodeTag,
    expr: [*c]Expr,
    args: [*c]List,
    elidedFuncState: [*c]ExprState,
    func: FmgrInfo,
    funcResultStore: ?*Tuplestorestate,
    funcResultSlot: [*c]TupleTableSlot,
    funcResultDesc: TupleDesc,
    funcReturnsTuple: bool,
    funcReturnsSet: bool,
    setArgsValid: bool,
    shutdown_reg: bool,
    fcinfo: FunctionCallInfo,
};
pub const SetExprState = struct_SetExprState;
pub const struct_SubPlanState = extern struct {
    type: NodeTag,
    subplan: [*c]SubPlan,
    planstate: [*c]struct_PlanState,
    parent: [*c]struct_PlanState,
    testexpr: [*c]ExprState,
    args: [*c]List,
    curTuple: HeapTuple,
    curArray: Datum,
    descRight: TupleDesc,
    projLeft: [*c]ProjectionInfo,
    projRight: [*c]ProjectionInfo,
    hashtable: TupleHashTable,
    hashnulls: TupleHashTable,
    havehashrows: bool,
    havenullrows: bool,
    hashtablecxt: MemoryContext,
    hashtempcxt: MemoryContext,
    innerecontext: [*c]ExprContext,
    numCols: c_int,
    keyColIdx: [*c]AttrNumber,
    tab_eq_funcoids: [*c]Oid,
    tab_collations: [*c]Oid,
    tab_hash_funcs: [*c]FmgrInfo,
    tab_eq_funcs: [*c]FmgrInfo,
    lhs_hash_funcs: [*c]FmgrInfo,
    cur_eq_funcs: [*c]FmgrInfo,
    cur_eq_comp: [*c]ExprState,
};
pub const SubPlanState = struct_SubPlanState;
pub const DOM_CONSTRAINT_NOTNULL: c_int = 0;
pub const DOM_CONSTRAINT_CHECK: c_int = 1;
pub const enum_DomainConstraintType = c_uint;
pub const DomainConstraintType = enum_DomainConstraintType;
pub const struct_DomainConstraintState = extern struct {
    type: NodeTag,
    constrainttype: DomainConstraintType,
    name: [*c]u8,
    check_expr: [*c]Expr,
    check_exprstate: [*c]ExprState,
};
pub const DomainConstraintState = struct_DomainConstraintState;
pub const EPQState = struct_EPQState;
pub const struct_ResultState = extern struct {
    ps: PlanState,
    resconstantqual: [*c]ExprState,
    rs_done: bool,
    rs_checkqual: bool,
};
pub const ResultState = struct_ResultState;
pub const struct_ProjectSetState = extern struct {
    ps: PlanState,
    elems: [*c][*c]Node,
    elemdone: [*c]ExprDoneCond,
    nelems: c_int,
    pending_srf_tuples: bool,
    argcontext: MemoryContext,
};
pub const ProjectSetState = struct_ProjectSetState;
pub const struct_PartitionTupleRouting = opaque {};
pub const struct_TransitionCaptureState = opaque {};
pub const struct_ModifyTableState = extern struct {
    ps: PlanState,
    operation: CmdType,
    canSetTag: bool,
    mt_done: bool,
    mt_nrels: c_int,
    resultRelInfo: [*c]ResultRelInfo,
    rootResultRelInfo: [*c]ResultRelInfo,
    mt_epqstate: EPQState,
    fireBSTriggers: bool,
    mt_resultOidAttno: c_int,
    mt_lastResultOid: Oid,
    mt_lastResultIndex: c_int,
    mt_resultOidHash: ?*HTAB,
    mt_root_tuple_slot: [*c]TupleTableSlot,
    mt_partition_tuple_routing: ?*struct_PartitionTupleRouting,
    mt_transition_capture: ?*struct_TransitionCaptureState,
    mt_oc_transition_capture: ?*struct_TransitionCaptureState,
    mt_merge_subcommands: c_int,
    mt_merge_inserted: f64,
    mt_merge_updated: f64,
    mt_merge_deleted: f64,
};
pub const ModifyTableState = struct_ModifyTableState;
pub const struct_WaitEventSet = opaque {};
pub const struct_ParallelAppendState = opaque {};
pub const ParallelAppendState = struct_ParallelAppendState;
pub const struct_PartitionPruneState = opaque {};
pub const AppendState = struct_AppendState;
pub const struct_AppendState = extern struct {
    ps: PlanState,
    appendplans: [*c][*c]PlanState,
    as_nplans: c_int,
    as_whichplan: c_int,
    as_begun: bool,
    as_asyncplans: [*c]Bitmapset,
    as_nasyncplans: c_int,
    as_asyncrequests: [*c][*c]AsyncRequest,
    as_asyncresults: [*c][*c]TupleTableSlot,
    as_nasyncresults: c_int,
    as_syncdone: bool,
    as_nasyncremain: c_int,
    as_needrequest: [*c]Bitmapset,
    as_eventset: ?*struct_WaitEventSet,
    as_first_partial_plan: c_int,
    as_pstate: ?*ParallelAppendState,
    pstate_len: Size,
    as_prune_state: ?*struct_PartitionPruneState,
    as_valid_subplans: [*c]Bitmapset,
    as_valid_asyncplans: [*c]Bitmapset,
    choose_next_subplan: ?*const fn ([*c]AppendState) callconv(.C) bool,
};
pub const struct_binaryheap = opaque {};
pub const struct_MergeAppendState = extern struct {
    ps: PlanState,
    mergeplans: [*c][*c]PlanState,
    ms_nplans: c_int,
    ms_nkeys: c_int,
    ms_sortkeys: SortSupport,
    ms_slots: [*c][*c]TupleTableSlot,
    ms_heap: ?*struct_binaryheap,
    ms_initialized: bool,
    ms_prune_state: ?*struct_PartitionPruneState,
    ms_valid_subplans: [*c]Bitmapset,
};
pub const MergeAppendState = struct_MergeAppendState;
pub const struct_RecursiveUnionState = extern struct {
    ps: PlanState,
    recursing: bool,
    intermediate_empty: bool,
    working_table: ?*Tuplestorestate,
    intermediate_table: ?*Tuplestorestate,
    eqfuncoids: [*c]Oid,
    hashfunctions: [*c]FmgrInfo,
    tempContext: MemoryContext,
    hashtable: TupleHashTable,
    tableContext: MemoryContext,
};
pub const RecursiveUnionState = struct_RecursiveUnionState;
pub const struct_BitmapAndState = extern struct {
    ps: PlanState,
    bitmapplans: [*c][*c]PlanState,
    nplans: c_int,
};
pub const BitmapAndState = struct_BitmapAndState;
pub const struct_BitmapOrState = extern struct {
    ps: PlanState,
    bitmapplans: [*c][*c]PlanState,
    nplans: c_int,
};
pub const BitmapOrState = struct_BitmapOrState;
pub const struct_TableScanDescData = opaque {};
pub const struct_ScanState = extern struct {
    ps: PlanState,
    ss_currentRelation: Relation,
    ss_currentScanDesc: ?*struct_TableScanDescData,
    ss_ScanTupleSlot: [*c]TupleTableSlot,
};
pub const ScanState = struct_ScanState;
pub const struct_SeqScanState = extern struct {
    ss: ScanState,
    pscan_len: Size,
};
pub const SeqScanState = struct_SeqScanState;
pub const struct_TsmRoutine = opaque {};
pub const struct_SampleScanState = extern struct {
    ss: ScanState,
    args: [*c]List,
    repeatable: [*c]ExprState,
    tsmroutine: ?*struct_TsmRoutine,
    tsm_state: ?*anyopaque,
    use_bulkread: bool,
    use_pagemode: bool,
    begun: bool,
    seed: uint32,
    donetuples: int64,
    haveblock: bool,
    done: bool,
};
pub const SampleScanState = struct_SampleScanState;
pub const struct_ScanKeyData = opaque {};
pub const IndexRuntimeKeyInfo = extern struct {
    scan_key: ?*struct_ScanKeyData,
    key_expr: [*c]ExprState,
    key_toastable: bool,
};
pub const IndexArrayKeyInfo = extern struct {
    scan_key: ?*struct_ScanKeyData,
    array_expr: [*c]ExprState,
    next_elem: c_int,
    num_elems: c_int,
    elem_values: [*c]Datum,
    elem_nulls: [*c]bool,
};
pub const struct_IndexScanDescData = opaque {};
pub const struct_IndexScanState = extern struct {
    ss: ScanState,
    indexqualorig: [*c]ExprState,
    indexorderbyorig: [*c]List,
    iss_ScanKeys: ?*struct_ScanKeyData,
    iss_NumScanKeys: c_int,
    iss_OrderByKeys: ?*struct_ScanKeyData,
    iss_NumOrderByKeys: c_int,
    iss_RuntimeKeys: [*c]IndexRuntimeKeyInfo,
    iss_NumRuntimeKeys: c_int,
    iss_RuntimeKeysReady: bool,
    iss_RuntimeContext: [*c]ExprContext,
    iss_RelationDesc: Relation,
    iss_ScanDesc: ?*struct_IndexScanDescData,
    iss_ReorderQueue: [*c]pairingheap,
    iss_ReachedEnd: bool,
    iss_OrderByValues: [*c]Datum,
    iss_OrderByNulls: [*c]bool,
    iss_SortSupport: SortSupport,
    iss_OrderByTypByVals: [*c]bool,
    iss_OrderByTypLens: [*c]int16,
    iss_PscanLen: Size,
};
pub const IndexScanState = struct_IndexScanState;
pub const struct_IndexOnlyScanState = extern struct {
    ss: ScanState,
    recheckqual: [*c]ExprState,
    ioss_ScanKeys: ?*struct_ScanKeyData,
    ioss_NumScanKeys: c_int,
    ioss_OrderByKeys: ?*struct_ScanKeyData,
    ioss_NumOrderByKeys: c_int,
    ioss_RuntimeKeys: [*c]IndexRuntimeKeyInfo,
    ioss_NumRuntimeKeys: c_int,
    ioss_RuntimeKeysReady: bool,
    ioss_RuntimeContext: [*c]ExprContext,
    ioss_RelationDesc: Relation,
    ioss_ScanDesc: ?*struct_IndexScanDescData,
    ioss_TableSlot: [*c]TupleTableSlot,
    ioss_VMBuffer: Buffer,
    ioss_PscanLen: Size,
};
pub const IndexOnlyScanState = struct_IndexOnlyScanState;
pub const struct_BitmapIndexScanState = extern struct {
    ss: ScanState,
    biss_result: ?*TIDBitmap,
    biss_ScanKeys: ?*struct_ScanKeyData,
    biss_NumScanKeys: c_int,
    biss_RuntimeKeys: [*c]IndexRuntimeKeyInfo,
    biss_NumRuntimeKeys: c_int,
    biss_ArrayKeys: [*c]IndexArrayKeyInfo,
    biss_NumArrayKeys: c_int,
    biss_RuntimeKeysReady: bool,
    biss_RuntimeContext: [*c]ExprContext,
    biss_RelationDesc: Relation,
    biss_ScanDesc: ?*struct_IndexScanDescData,
};
pub const BitmapIndexScanState = struct_BitmapIndexScanState;
pub const BM_INITIAL: c_int = 0;
pub const BM_INPROGRESS: c_int = 1;
pub const BM_FINISHED: c_int = 2;
pub const SharedBitmapState = c_uint;
pub const struct_ParallelBitmapHeapState = extern struct {
    tbmiterator: dsa_pointer align(8),
    prefetch_iterator: dsa_pointer,
    mutex: slock_t,
    prefetch_pages: c_int,
    prefetch_target: c_int,
    state: SharedBitmapState,
    cv: ConditionVariable,
    pub fn phs_snapshot_data(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        return @ptrCast(ReturnType, @alignCast(@alignOf(u8), @ptrCast(Intermediate, self) + 44));
    }
};
pub const ParallelBitmapHeapState = struct_ParallelBitmapHeapState;
pub const struct_BitmapHeapScanState = extern struct {
    ss: ScanState,
    bitmapqualorig: [*c]ExprState,
    tbm: ?*TIDBitmap,
    tbmiterator: ?*TBMIterator,
    tbmres: [*c]TBMIterateResult,
    can_skip_fetch: bool,
    return_empty_tuples: c_int,
    vmbuffer: Buffer,
    pvmbuffer: Buffer,
    exact_pages: c_long,
    lossy_pages: c_long,
    prefetch_iterator: ?*TBMIterator,
    prefetch_pages: c_int,
    prefetch_target: c_int,
    prefetch_maximum: c_int,
    pscan_len: Size,
    initialized: bool,
    shared_tbmiterator: ?*TBMSharedIterator,
    shared_prefetch_iterator: ?*TBMSharedIterator,
    pstate: [*c]ParallelBitmapHeapState,
};
pub const BitmapHeapScanState = struct_BitmapHeapScanState;
pub const struct_TidScanState = extern struct {
    ss: ScanState,
    tss_tidexprs: [*c]List,
    tss_isCurrentOf: bool,
    tss_NumTids: c_int,
    tss_TidPtr: c_int,
    tss_TidList: [*c]ItemPointerData,
    tss_htup: HeapTupleData,
};
pub const TidScanState = struct_TidScanState;
pub const struct_TidRangeScanState = extern struct {
    ss: ScanState,
    trss_tidexprs: [*c]List,
    trss_mintid: ItemPointerData,
    trss_maxtid: ItemPointerData,
    trss_inScan: bool,
};
pub const TidRangeScanState = struct_TidRangeScanState;
pub const struct_SubqueryScanState = extern struct {
    ss: ScanState,
    subplan: [*c]PlanState,
};
pub const SubqueryScanState = struct_SubqueryScanState;
pub const struct_FunctionScanPerFuncState = opaque {};
pub const struct_FunctionScanState = extern struct {
    ss: ScanState,
    eflags: c_int,
    ordinality: bool,
    simple: bool,
    ordinal: int64,
    nfuncs: c_int,
    funcstates: ?*struct_FunctionScanPerFuncState,
    argcontext: MemoryContext,
};
pub const FunctionScanState = struct_FunctionScanState;
pub const struct_ValuesScanState = extern struct {
    ss: ScanState,
    rowcontext: [*c]ExprContext,
    exprlists: [*c][*c]List,
    exprstatelists: [*c][*c]List,
    array_len: c_int,
    curr_idx: c_int,
};
pub const ValuesScanState = struct_ValuesScanState;
pub const struct_TableFuncRoutine = opaque {};
pub const struct_TableFuncScanState = extern struct {
    ss: ScanState,
    docexpr: [*c]ExprState,
    rowexpr: [*c]ExprState,
    colexprs: [*c]List,
    coldefexprs: [*c]List,
    ns_names: [*c]List,
    ns_uris: [*c]List,
    notnulls: [*c]Bitmapset,
    @"opaque": ?*anyopaque,
    routine: ?*const struct_TableFuncRoutine,
    in_functions: [*c]FmgrInfo,
    typioparams: [*c]Oid,
    ordinal: int64,
    perTableCxt: MemoryContext,
    tupstore: ?*Tuplestorestate,
};
pub const TableFuncScanState = struct_TableFuncScanState;
pub const struct_CteScanState = extern struct {
    ss: ScanState,
    eflags: c_int,
    readptr: c_int,
    cteplanstate: [*c]PlanState,
    leader: [*c]struct_CteScanState,
    cte_table: ?*Tuplestorestate,
    eof_cte: bool,
};
pub const CteScanState = struct_CteScanState;
pub const struct_NamedTuplestoreScanState = extern struct {
    ss: ScanState,
    readptr: c_int,
    tupdesc: TupleDesc,
    relation: ?*Tuplestorestate,
};
pub const NamedTuplestoreScanState = struct_NamedTuplestoreScanState;
pub const struct_WorkTableScanState = extern struct {
    ss: ScanState,
    rustate: [*c]RecursiveUnionState,
};
pub const WorkTableScanState = struct_WorkTableScanState;
pub const struct_ForeignScanState = extern struct {
    ss: ScanState,
    fdw_recheck_quals: [*c]ExprState,
    pscan_len: Size,
    resultRelInfo: [*c]ResultRelInfo,
    fdwroutine: ?*struct_FdwRoutine,
    fdw_state: ?*anyopaque,
};
pub const ForeignScanState = struct_ForeignScanState;
pub const struct_CustomExecMethods = opaque {};
pub const struct_CustomScanState = extern struct {
    ss: ScanState,
    flags: uint32,
    custom_ps: [*c]List,
    pscan_len: Size,
    methods: ?*const struct_CustomExecMethods,
};
pub const CustomScanState = struct_CustomScanState;
pub const struct_JoinState = extern struct {
    ps: PlanState,
    jointype: JoinType,
    single_match: bool,
    joinqual: [*c]ExprState,
};
pub const JoinState = struct_JoinState;
pub const struct_NestLoopState = extern struct {
    js: JoinState,
    nl_NeedNewOuter: bool,
    nl_MatchedOuter: bool,
    nl_NullInnerTupleSlot: [*c]TupleTableSlot,
};
pub const NestLoopState = struct_NestLoopState;
pub const struct_MergeJoinClauseData = opaque {};
pub const MergeJoinClause = ?*struct_MergeJoinClauseData;
pub const struct_MergeJoinState = extern struct {
    js: JoinState,
    mj_NumClauses: c_int,
    mj_Clauses: MergeJoinClause,
    mj_JoinState: c_int,
    mj_SkipMarkRestore: bool,
    mj_ExtraMarks: bool,
    mj_ConstFalseJoin: bool,
    mj_FillOuter: bool,
    mj_FillInner: bool,
    mj_MatchedOuter: bool,
    mj_MatchedInner: bool,
    mj_OuterTupleSlot: [*c]TupleTableSlot,
    mj_InnerTupleSlot: [*c]TupleTableSlot,
    mj_MarkedTupleSlot: [*c]TupleTableSlot,
    mj_NullOuterTupleSlot: [*c]TupleTableSlot,
    mj_NullInnerTupleSlot: [*c]TupleTableSlot,
    mj_OuterEContext: [*c]ExprContext,
    mj_InnerEContext: [*c]ExprContext,
};
pub const MergeJoinState = struct_MergeJoinState;
pub const struct_HashJoinTupleData = opaque {};
pub const HashJoinTuple = ?*struct_HashJoinTupleData;
pub const struct_HashJoinTableData = opaque {};
pub const HashJoinTable = ?*struct_HashJoinTableData;
pub const struct_HashJoinState = extern struct {
    js: JoinState,
    hashclauses: [*c]ExprState,
    hj_OuterHashKeys: [*c]List,
    hj_HashOperators: [*c]List,
    hj_Collations: [*c]List,
    hj_HashTable: HashJoinTable,
    hj_CurHashValue: uint32,
    hj_CurBucketNo: c_int,
    hj_CurSkewBucketNo: c_int,
    hj_CurTuple: HashJoinTuple,
    hj_OuterTupleSlot: [*c]TupleTableSlot,
    hj_HashTupleSlot: [*c]TupleTableSlot,
    hj_NullOuterTupleSlot: [*c]TupleTableSlot,
    hj_NullInnerTupleSlot: [*c]TupleTableSlot,
    hj_FirstOuterTupleSlot: [*c]TupleTableSlot,
    hj_JoinState: c_int,
    hj_MatchedOuter: bool,
    hj_OuterNotEmpty: bool,
};
pub const HashJoinState = struct_HashJoinState;
pub const struct_MaterialState = extern struct {
    ss: ScanState,
    eflags: c_int,
    eof_underlying: bool,
    tuplestorestate: ?*Tuplestorestate,
};
pub const MaterialState = struct_MaterialState;
pub const struct_MemoizeEntry = opaque {};
pub const struct_MemoizeTuple = opaque {};
pub const struct_MemoizeKey = opaque {};
pub const struct_MemoizeInstrumentation = extern struct {
    cache_hits: uint64,
    cache_misses: uint64,
    cache_evictions: uint64,
    cache_overflows: uint64,
    mem_peak: uint64,
};
pub const MemoizeInstrumentation = struct_MemoizeInstrumentation;
pub const struct_SharedMemoizeInfo = extern struct {
    num_workers: c_int align(8),
    pub fn sinstrument(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), MemoizeInstrumentation) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), MemoizeInstrumentation);
        return @ptrCast(ReturnType, @alignCast(@alignOf(MemoizeInstrumentation), @ptrCast(Intermediate, self) + 8));
    }
};
pub const SharedMemoizeInfo = struct_SharedMemoizeInfo;
pub const struct_memoize_hash = opaque {};
pub const struct_MemoizeState = extern struct {
    ss: ScanState,
    mstatus: c_int,
    nkeys: c_int,
    hashtable: ?*struct_memoize_hash,
    hashkeydesc: TupleDesc,
    tableslot: [*c]TupleTableSlot,
    probeslot: [*c]TupleTableSlot,
    cache_eq_expr: [*c]ExprState,
    param_exprs: [*c][*c]ExprState,
    hashfunctions: [*c]FmgrInfo,
    collations: [*c]Oid,
    mem_used: uint64,
    mem_limit: uint64,
    tableContext: MemoryContext,
    lru_list: dlist_head,
    last_tuple: ?*struct_MemoizeTuple,
    entry: ?*struct_MemoizeEntry,
    singlerow: bool,
    binary_mode: bool,
    stats: MemoizeInstrumentation,
    shared_info: [*c]SharedMemoizeInfo,
    keyparamids: [*c]Bitmapset,
};
pub const MemoizeState = struct_MemoizeState;
pub const struct_PresortedKeyData = extern struct {
    flinfo: FmgrInfo,
    fcinfo: FunctionCallInfo,
    attno: OffsetNumber,
};
pub const PresortedKeyData = struct_PresortedKeyData;
pub const struct_SharedSortInfo = extern struct {
    num_workers: c_int align(8),
    pub fn sinstrument(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), TuplesortInstrumentation) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), TuplesortInstrumentation);
        return @ptrCast(ReturnType, @alignCast(@alignOf(TuplesortInstrumentation), @ptrCast(Intermediate, self) + 8));
    }
};
pub const SharedSortInfo = struct_SharedSortInfo;
pub const struct_SortState = extern struct {
    ss: ScanState,
    randomAccess: bool,
    bounded: bool,
    bound: int64,
    sort_Done: bool,
    bounded_Done: bool,
    bound_Done: int64,
    tuplesortstate: ?*anyopaque,
    am_worker: bool,
    datumSort: bool,
    shared_info: [*c]SharedSortInfo,
};
pub const SortState = struct_SortState;
pub const struct_IncrementalSortGroupInfo = extern struct {
    groupCount: int64,
    maxDiskSpaceUsed: int64,
    totalDiskSpaceUsed: int64,
    maxMemorySpaceUsed: int64,
    totalMemorySpaceUsed: int64,
    sortMethods: bits32,
};
pub const IncrementalSortGroupInfo = struct_IncrementalSortGroupInfo;
pub const struct_IncrementalSortInfo = extern struct {
    fullsortGroupInfo: IncrementalSortGroupInfo,
    prefixsortGroupInfo: IncrementalSortGroupInfo,
};
pub const IncrementalSortInfo = struct_IncrementalSortInfo;
pub const struct_SharedIncrementalSortInfo = extern struct {
    num_workers: c_int align(8),
    pub fn sinfo(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), IncrementalSortInfo) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), IncrementalSortInfo);
        return @ptrCast(ReturnType, @alignCast(@alignOf(IncrementalSortInfo), @ptrCast(Intermediate, self) + 8));
    }
};
pub const SharedIncrementalSortInfo = struct_SharedIncrementalSortInfo;
pub const INCSORT_LOADFULLSORT: c_int = 0;
pub const INCSORT_LOADPREFIXSORT: c_int = 1;
pub const INCSORT_READFULLSORT: c_int = 2;
pub const INCSORT_READPREFIXSORT: c_int = 3;
pub const IncrementalSortExecutionStatus = c_uint;
pub const struct_IncrementalSortState = extern struct {
    ss: ScanState,
    bounded: bool,
    bound: int64,
    outerNodeDone: bool,
    bound_Done: int64,
    execution_status: IncrementalSortExecutionStatus,
    n_fullsort_remaining: int64,
    fullsort_state: ?*Tuplesortstate,
    prefixsort_state: ?*Tuplesortstate,
    presorted_keys: [*c]PresortedKeyData,
    incsort_info: IncrementalSortInfo,
    group_pivot: [*c]TupleTableSlot,
    transfer_tuple: [*c]TupleTableSlot,
    am_worker: bool,
    shared_info: [*c]SharedIncrementalSortInfo,
};
pub const IncrementalSortState = struct_IncrementalSortState;
pub const struct_GroupState = extern struct {
    ss: ScanState,
    eqfunction: [*c]ExprState,
    grp_done: bool,
};
pub const GroupState = struct_GroupState;
pub const struct_AggregateInstrumentation = extern struct {
    hash_mem_peak: Size,
    hash_disk_used: uint64,
    hash_batches_used: c_int,
};
pub const AggregateInstrumentation = struct_AggregateInstrumentation;
pub const struct_SharedAggInfo = extern struct {
    num_workers: c_int align(8),
    pub fn sinstrument(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), AggregateInstrumentation) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), AggregateInstrumentation);
        return @ptrCast(ReturnType, @alignCast(@alignOf(AggregateInstrumentation), @ptrCast(Intermediate, self) + 8));
    }
};
pub const SharedAggInfo = struct_SharedAggInfo;
pub const struct_AggStatePerAggData = opaque {};
pub const AggStatePerAgg = ?*struct_AggStatePerAggData;
pub const struct_AggStatePerTransData = opaque {};
pub const AggStatePerTrans = ?*struct_AggStatePerTransData;
pub const struct_AggStatePerGroupData = opaque {};
pub const AggStatePerGroup = ?*struct_AggStatePerGroupData;
pub const struct_AggStatePerPhaseData = opaque {};
pub const AggStatePerPhase = ?*struct_AggStatePerPhaseData;
pub const struct_AggStatePerHashData = opaque {};
pub const AggStatePerHash = ?*struct_AggStatePerHashData;
pub const struct_HashAggSpill = opaque {};
pub const struct_AggState = extern struct {
    ss: ScanState,
    aggs: [*c]List,
    numaggs: c_int,
    numtrans: c_int,
    aggstrategy: AggStrategy,
    aggsplit: AggSplit,
    phase: AggStatePerPhase,
    numphases: c_int,
    current_phase: c_int,
    peragg: AggStatePerAgg,
    pertrans: AggStatePerTrans,
    hashcontext: [*c]ExprContext,
    aggcontexts: [*c][*c]ExprContext,
    tmpcontext: [*c]ExprContext,
    curaggcontext: [*c]ExprContext,
    curperagg: AggStatePerAgg,
    curpertrans: AggStatePerTrans,
    input_done: bool,
    agg_done: bool,
    projected_set: c_int,
    current_set: c_int,
    grouped_cols: [*c]Bitmapset,
    all_grouped_cols: [*c]List,
    colnos_needed: [*c]Bitmapset,
    max_colno_needed: c_int,
    all_cols_needed: bool,
    maxsets: c_int,
    phases: AggStatePerPhase,
    sort_in: ?*Tuplesortstate,
    sort_out: ?*Tuplesortstate,
    sort_slot: [*c]TupleTableSlot,
    pergroups: [*c]AggStatePerGroup,
    grp_firstTuple: HeapTuple,
    table_filled: bool,
    num_hashes: c_int,
    hash_metacxt: MemoryContext,
    hash_tapeset: ?*struct_LogicalTapeSet,
    hash_spills: ?*struct_HashAggSpill,
    hash_spill_rslot: [*c]TupleTableSlot,
    hash_spill_wslot: [*c]TupleTableSlot,
    hash_batches: [*c]List,
    hash_ever_spilled: bool,
    hash_spill_mode: bool,
    hash_mem_limit: Size,
    hash_ngroups_limit: uint64,
    hash_planned_partitions: c_int,
    hashentrysize: f64,
    hash_mem_peak: Size,
    hash_ngroups_current: uint64,
    hash_disk_used: uint64,
    hash_batches_used: c_int,
    perhash: AggStatePerHash,
    hash_pergroup: [*c]AggStatePerGroup,
    all_pergroups: [*c]AggStatePerGroup,
    combinedproj: [*c]ProjectionInfo,
    shared_info: [*c]SharedAggInfo,
};
pub const AggState = struct_AggState;
pub const struct_WindowStatePerFuncData = opaque {};
pub const WindowStatePerFunc = ?*struct_WindowStatePerFuncData;
pub const struct_WindowStatePerAggData = opaque {};
pub const WindowStatePerAgg = ?*struct_WindowStatePerAggData;
pub const WINDOWAGG_DONE: c_int = 0;
pub const WINDOWAGG_RUN: c_int = 1;
pub const WINDOWAGG_PASSTHROUGH: c_int = 2;
pub const WINDOWAGG_PASSTHROUGH_STRICT: c_int = 3;
pub const enum_WindowAggStatus = c_uint;
pub const WindowAggStatus = enum_WindowAggStatus;
pub const struct_WindowObjectData = opaque {};
pub const struct_WindowAggState = extern struct {
    ss: ScanState,
    funcs: [*c]List,
    numfuncs: c_int,
    numaggs: c_int,
    perfunc: WindowStatePerFunc,
    peragg: WindowStatePerAgg,
    partEqfunction: [*c]ExprState,
    ordEqfunction: [*c]ExprState,
    buffer: ?*Tuplestorestate,
    current_ptr: c_int,
    framehead_ptr: c_int,
    frametail_ptr: c_int,
    grouptail_ptr: c_int,
    spooled_rows: int64,
    currentpos: int64,
    frameheadpos: int64,
    frametailpos: int64,
    agg_winobj: ?*struct_WindowObjectData,
    aggregatedbase: int64,
    aggregatedupto: int64,
    status: WindowAggStatus,
    frameOptions: c_int,
    startOffset: [*c]ExprState,
    endOffset: [*c]ExprState,
    startOffsetValue: Datum,
    endOffsetValue: Datum,
    startInRangeFunc: FmgrInfo,
    endInRangeFunc: FmgrInfo,
    inRangeColl: Oid,
    inRangeAsc: bool,
    inRangeNullsFirst: bool,
    currentgroup: int64,
    frameheadgroup: int64,
    frametailgroup: int64,
    groupheadpos: int64,
    grouptailpos: int64,
    partcontext: MemoryContext,
    aggcontext: MemoryContext,
    curaggcontext: MemoryContext,
    tmpcontext: [*c]ExprContext,
    runcondition: [*c]ExprState,
    use_pass_through: bool,
    top_window: bool,
    all_first: bool,
    partition_spooled: bool,
    more_partitions: bool,
    framehead_valid: bool,
    frametail_valid: bool,
    grouptail_valid: bool,
    first_part_slot: [*c]TupleTableSlot,
    framehead_slot: [*c]TupleTableSlot,
    frametail_slot: [*c]TupleTableSlot,
    agg_row_slot: [*c]TupleTableSlot,
    temp_slot_1: [*c]TupleTableSlot,
    temp_slot_2: [*c]TupleTableSlot,
};
pub const WindowAggState = struct_WindowAggState;
pub const struct_UniqueState = extern struct {
    ps: PlanState,
    eqfunction: [*c]ExprState,
};
pub const UniqueState = struct_UniqueState;
pub const struct_ParallelExecutorInfo = opaque {};
pub const struct_TupleQueueReader = opaque {};
pub const struct_GatherState = extern struct {
    ps: PlanState,
    initialized: bool,
    need_to_scan_locally: bool,
    tuples_needed: int64,
    funnel_slot: [*c]TupleTableSlot,
    pei: ?*struct_ParallelExecutorInfo,
    nworkers_launched: c_int,
    nreaders: c_int,
    nextreader: c_int,
    reader: [*c]?*struct_TupleQueueReader,
};
pub const GatherState = struct_GatherState;
pub const struct_GMReaderTupleBuffer = opaque {};
pub const struct_GatherMergeState = extern struct {
    ps: PlanState,
    initialized: bool,
    gm_initialized: bool,
    need_to_scan_locally: bool,
    tuples_needed: int64,
    tupDesc: TupleDesc,
    gm_nkeys: c_int,
    gm_sortkeys: SortSupport,
    pei: ?*struct_ParallelExecutorInfo,
    nworkers_launched: c_int,
    nreaders: c_int,
    gm_slots: [*c][*c]TupleTableSlot,
    reader: [*c]?*struct_TupleQueueReader,
    gm_tuple_buffers: ?*struct_GMReaderTupleBuffer,
    gm_heap: ?*struct_binaryheap,
};
pub const GatherMergeState = struct_GatherMergeState;
pub const struct_HashInstrumentation = extern struct {
    nbuckets: c_int,
    nbuckets_original: c_int,
    nbatch: c_int,
    nbatch_original: c_int,
    space_peak: Size,
};
pub const HashInstrumentation = struct_HashInstrumentation;
pub const struct_SharedHashInfo = extern struct {
    num_workers: c_int align(8),
    pub fn hinstrument(self: anytype) @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), HashInstrumentation) {
        const Intermediate = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), u8);
        const ReturnType = @import("std").zig.c_translation.FlexibleArrayType(@TypeOf(self), HashInstrumentation);
        return @ptrCast(ReturnType, @alignCast(@alignOf(HashInstrumentation), @ptrCast(Intermediate, self) + 8));
    }
};
pub const SharedHashInfo = struct_SharedHashInfo;
pub const struct_HashState = extern struct {
    ps: PlanState,
    hashtable: HashJoinTable,
    hashkeys: [*c]List,
    shared_info: [*c]SharedHashInfo,
    hinstrument: [*c]HashInstrumentation,
    parallel_state: ?*struct_ParallelHashJoinState,
};
pub const HashState = struct_HashState;
pub const struct_SetOpStatePerGroupData = opaque {};
pub const SetOpStatePerGroup = ?*struct_SetOpStatePerGroupData;
pub const struct_SetOpState = extern struct {
    ps: PlanState,
    eqfunction: [*c]ExprState,
    eqfuncoids: [*c]Oid,
    hashfunctions: [*c]FmgrInfo,
    setop_done: bool,
    numOutput: c_long,
    pergroup: SetOpStatePerGroup,
    grp_firstTuple: HeapTuple,
    hashtable: TupleHashTable,
    tableContext: MemoryContext,
    table_filled: bool,
    hashiter: TupleHashIterator,
};
pub const SetOpState = struct_SetOpState;
pub const struct_LockRowsState = extern struct {
    ps: PlanState,
    lr_arowMarks: [*c]List,
    lr_epqstate: EPQState,
};
pub const LockRowsState = struct_LockRowsState;
pub const LIMIT_INITIAL: c_int = 0;
pub const LIMIT_RESCAN: c_int = 1;
pub const LIMIT_EMPTY: c_int = 2;
pub const LIMIT_INWINDOW: c_int = 3;
pub const LIMIT_WINDOWEND_TIES: c_int = 4;
pub const LIMIT_SUBPLANEOF: c_int = 5;
pub const LIMIT_WINDOWEND: c_int = 6;
pub const LIMIT_WINDOWSTART: c_int = 7;
pub const LimitStateCond = c_uint;
pub const struct_LimitState = extern struct {
    ps: PlanState,
    limitOffset: [*c]ExprState,
    limitCount: [*c]ExprState,
    limitOption: LimitOption,
    offset: int64,
    count: int64,
    noCount: bool,
    lstate: LimitStateCond,
    position: int64,
    subSlot: [*c]TupleTableSlot,
    eqfunction: [*c]ExprState,
    last_slot: [*c]TupleTableSlot,
};
pub const LimitState = struct_LimitState;
pub const CMDTAG_UNKNOWN: c_int = 0;
pub const CMDTAG_ALTER_ACCESS_METHOD: c_int = 1;
pub const CMDTAG_ALTER_AGGREGATE: c_int = 2;
pub const CMDTAG_ALTER_CAST: c_int = 3;
pub const CMDTAG_ALTER_COLLATION: c_int = 4;
pub const CMDTAG_ALTER_CONSTRAINT: c_int = 5;
pub const CMDTAG_ALTER_CONVERSION: c_int = 6;
pub const CMDTAG_ALTER_DATABASE: c_int = 7;
pub const CMDTAG_ALTER_DEFAULT_PRIVILEGES: c_int = 8;
pub const CMDTAG_ALTER_DOMAIN: c_int = 9;
pub const CMDTAG_ALTER_EVENT_TRIGGER: c_int = 10;
pub const CMDTAG_ALTER_EXTENSION: c_int = 11;
pub const CMDTAG_ALTER_FOREIGN_DATA_WRAPPER: c_int = 12;
pub const CMDTAG_ALTER_FOREIGN_TABLE: c_int = 13;
pub const CMDTAG_ALTER_FUNCTION: c_int = 14;
pub const CMDTAG_ALTER_INDEX: c_int = 15;
pub const CMDTAG_ALTER_LANGUAGE: c_int = 16;
pub const CMDTAG_ALTER_LARGE_OBJECT: c_int = 17;
pub const CMDTAG_ALTER_MATERIALIZED_VIEW: c_int = 18;
pub const CMDTAG_ALTER_OPERATOR: c_int = 19;
pub const CMDTAG_ALTER_OPERATOR_CLASS: c_int = 20;
pub const CMDTAG_ALTER_OPERATOR_FAMILY: c_int = 21;
pub const CMDTAG_ALTER_POLICY: c_int = 22;
pub const CMDTAG_ALTER_PROCEDURE: c_int = 23;
pub const CMDTAG_ALTER_PUBLICATION: c_int = 24;
pub const CMDTAG_ALTER_ROLE: c_int = 25;
pub const CMDTAG_ALTER_ROUTINE: c_int = 26;
pub const CMDTAG_ALTER_RULE: c_int = 27;
pub const CMDTAG_ALTER_SCHEMA: c_int = 28;
pub const CMDTAG_ALTER_SEQUENCE: c_int = 29;
pub const CMDTAG_ALTER_SERVER: c_int = 30;
pub const CMDTAG_ALTER_STATISTICS: c_int = 31;
pub const CMDTAG_ALTER_SUBSCRIPTION: c_int = 32;
pub const CMDTAG_ALTER_SYSTEM: c_int = 33;
pub const CMDTAG_ALTER_TABLE: c_int = 34;
pub const CMDTAG_ALTER_TABLESPACE: c_int = 35;
pub const CMDTAG_ALTER_TEXT_SEARCH_CONFIGURATION: c_int = 36;
pub const CMDTAG_ALTER_TEXT_SEARCH_DICTIONARY: c_int = 37;
pub const CMDTAG_ALTER_TEXT_SEARCH_PARSER: c_int = 38;
pub const CMDTAG_ALTER_TEXT_SEARCH_TEMPLATE: c_int = 39;
pub const CMDTAG_ALTER_TRANSFORM: c_int = 40;
pub const CMDTAG_ALTER_TRIGGER: c_int = 41;
pub const CMDTAG_ALTER_TYPE: c_int = 42;
pub const CMDTAG_ALTER_USER_MAPPING: c_int = 43;
pub const CMDTAG_ALTER_VIEW: c_int = 44;
pub const CMDTAG_ANALYZE: c_int = 45;
pub const CMDTAG_BEGIN: c_int = 46;
pub const CMDTAG_CALL: c_int = 47;
pub const CMDTAG_CHECKPOINT: c_int = 48;
pub const CMDTAG_CLOSE: c_int = 49;
pub const CMDTAG_CLOSE_CURSOR: c_int = 50;
pub const CMDTAG_CLOSE_CURSOR_ALL: c_int = 51;
pub const CMDTAG_CLUSTER: c_int = 52;
pub const CMDTAG_COMMENT: c_int = 53;
pub const CMDTAG_COMMIT: c_int = 54;
pub const CMDTAG_COMMIT_PREPARED: c_int = 55;
pub const CMDTAG_COPY: c_int = 56;
pub const CMDTAG_COPY_FROM: c_int = 57;
pub const CMDTAG_CREATE_ACCESS_METHOD: c_int = 58;
pub const CMDTAG_CREATE_AGGREGATE: c_int = 59;
pub const CMDTAG_CREATE_CAST: c_int = 60;
pub const CMDTAG_CREATE_COLLATION: c_int = 61;
pub const CMDTAG_CREATE_CONSTRAINT: c_int = 62;
pub const CMDTAG_CREATE_CONVERSION: c_int = 63;
pub const CMDTAG_CREATE_DATABASE: c_int = 64;
pub const CMDTAG_CREATE_DOMAIN: c_int = 65;
pub const CMDTAG_CREATE_EVENT_TRIGGER: c_int = 66;
pub const CMDTAG_CREATE_EXTENSION: c_int = 67;
pub const CMDTAG_CREATE_FOREIGN_DATA_WRAPPER: c_int = 68;
pub const CMDTAG_CREATE_FOREIGN_TABLE: c_int = 69;
pub const CMDTAG_CREATE_FUNCTION: c_int = 70;
pub const CMDTAG_CREATE_INDEX: c_int = 71;
pub const CMDTAG_CREATE_LANGUAGE: c_int = 72;
pub const CMDTAG_CREATE_MATERIALIZED_VIEW: c_int = 73;
pub const CMDTAG_CREATE_OPERATOR: c_int = 74;
pub const CMDTAG_CREATE_OPERATOR_CLASS: c_int = 75;
pub const CMDTAG_CREATE_OPERATOR_FAMILY: c_int = 76;
pub const CMDTAG_CREATE_POLICY: c_int = 77;
pub const CMDTAG_CREATE_PROCEDURE: c_int = 78;
pub const CMDTAG_CREATE_PUBLICATION: c_int = 79;
pub const CMDTAG_CREATE_ROLE: c_int = 80;
pub const CMDTAG_CREATE_ROUTINE: c_int = 81;
pub const CMDTAG_CREATE_RULE: c_int = 82;
pub const CMDTAG_CREATE_SCHEMA: c_int = 83;
pub const CMDTAG_CREATE_SEQUENCE: c_int = 84;
pub const CMDTAG_CREATE_SERVER: c_int = 85;
pub const CMDTAG_CREATE_STATISTICS: c_int = 86;
pub const CMDTAG_CREATE_SUBSCRIPTION: c_int = 87;
pub const CMDTAG_CREATE_TABLE: c_int = 88;
pub const CMDTAG_CREATE_TABLE_AS: c_int = 89;
pub const CMDTAG_CREATE_TABLESPACE: c_int = 90;
pub const CMDTAG_CREATE_TEXT_SEARCH_CONFIGURATION: c_int = 91;
pub const CMDTAG_CREATE_TEXT_SEARCH_DICTIONARY: c_int = 92;
pub const CMDTAG_CREATE_TEXT_SEARCH_PARSER: c_int = 93;
pub const CMDTAG_CREATE_TEXT_SEARCH_TEMPLATE: c_int = 94;
pub const CMDTAG_CREATE_TRANSFORM: c_int = 95;
pub const CMDTAG_CREATE_TRIGGER: c_int = 96;
pub const CMDTAG_CREATE_TYPE: c_int = 97;
pub const CMDTAG_CREATE_USER_MAPPING: c_int = 98;
pub const CMDTAG_CREATE_VIEW: c_int = 99;
pub const CMDTAG_DEALLOCATE: c_int = 100;
pub const CMDTAG_DEALLOCATE_ALL: c_int = 101;
pub const CMDTAG_DECLARE_CURSOR: c_int = 102;
pub const CMDTAG_DELETE: c_int = 103;
pub const CMDTAG_DISCARD: c_int = 104;
pub const CMDTAG_DISCARD_ALL: c_int = 105;
pub const CMDTAG_DISCARD_PLANS: c_int = 106;
pub const CMDTAG_DISCARD_SEQUENCES: c_int = 107;
pub const CMDTAG_DISCARD_TEMP: c_int = 108;
pub const CMDTAG_DO: c_int = 109;
pub const CMDTAG_DROP_ACCESS_METHOD: c_int = 110;
pub const CMDTAG_DROP_AGGREGATE: c_int = 111;
pub const CMDTAG_DROP_CAST: c_int = 112;
pub const CMDTAG_DROP_COLLATION: c_int = 113;
pub const CMDTAG_DROP_CONSTRAINT: c_int = 114;
pub const CMDTAG_DROP_CONVERSION: c_int = 115;
pub const CMDTAG_DROP_DATABASE: c_int = 116;
pub const CMDTAG_DROP_DOMAIN: c_int = 117;
pub const CMDTAG_DROP_EVENT_TRIGGER: c_int = 118;
pub const CMDTAG_DROP_EXTENSION: c_int = 119;
pub const CMDTAG_DROP_FOREIGN_DATA_WRAPPER: c_int = 120;
pub const CMDTAG_DROP_FOREIGN_TABLE: c_int = 121;
pub const CMDTAG_DROP_FUNCTION: c_int = 122;
pub const CMDTAG_DROP_INDEX: c_int = 123;
pub const CMDTAG_DROP_LANGUAGE: c_int = 124;
pub const CMDTAG_DROP_MATERIALIZED_VIEW: c_int = 125;
pub const CMDTAG_DROP_OPERATOR: c_int = 126;
pub const CMDTAG_DROP_OPERATOR_CLASS: c_int = 127;
pub const CMDTAG_DROP_OPERATOR_FAMILY: c_int = 128;
pub const CMDTAG_DROP_OWNED: c_int = 129;
pub const CMDTAG_DROP_POLICY: c_int = 130;
pub const CMDTAG_DROP_PROCEDURE: c_int = 131;
pub const CMDTAG_DROP_PUBLICATION: c_int = 132;
pub const CMDTAG_DROP_ROLE: c_int = 133;
pub const CMDTAG_DROP_ROUTINE: c_int = 134;
pub const CMDTAG_DROP_RULE: c_int = 135;
pub const CMDTAG_DROP_SCHEMA: c_int = 136;
pub const CMDTAG_DROP_SEQUENCE: c_int = 137;
pub const CMDTAG_DROP_SERVER: c_int = 138;
pub const CMDTAG_DROP_STATISTICS: c_int = 139;
pub const CMDTAG_DROP_SUBSCRIPTION: c_int = 140;
pub const CMDTAG_DROP_TABLE: c_int = 141;
pub const CMDTAG_DROP_TABLESPACE: c_int = 142;
pub const CMDTAG_DROP_TEXT_SEARCH_CONFIGURATION: c_int = 143;
pub const CMDTAG_DROP_TEXT_SEARCH_DICTIONARY: c_int = 144;
pub const CMDTAG_DROP_TEXT_SEARCH_PARSER: c_int = 145;
pub const CMDTAG_DROP_TEXT_SEARCH_TEMPLATE: c_int = 146;
pub const CMDTAG_DROP_TRANSFORM: c_int = 147;
pub const CMDTAG_DROP_TRIGGER: c_int = 148;
pub const CMDTAG_DROP_TYPE: c_int = 149;
pub const CMDTAG_DROP_USER_MAPPING: c_int = 150;
pub const CMDTAG_DROP_VIEW: c_int = 151;
pub const CMDTAG_EXECUTE: c_int = 152;
pub const CMDTAG_EXPLAIN: c_int = 153;
pub const CMDTAG_FETCH: c_int = 154;
pub const CMDTAG_GRANT: c_int = 155;
pub const CMDTAG_GRANT_ROLE: c_int = 156;
pub const CMDTAG_IMPORT_FOREIGN_SCHEMA: c_int = 157;
pub const CMDTAG_INSERT: c_int = 158;
pub const CMDTAG_LISTEN: c_int = 159;
pub const CMDTAG_LOAD: c_int = 160;
pub const CMDTAG_LOCK_TABLE: c_int = 161;
pub const CMDTAG_MERGE: c_int = 162;
pub const CMDTAG_MOVE: c_int = 163;
pub const CMDTAG_NOTIFY: c_int = 164;
pub const CMDTAG_PREPARE: c_int = 165;
pub const CMDTAG_PREPARE_TRANSACTION: c_int = 166;
pub const CMDTAG_REASSIGN_OWNED: c_int = 167;
pub const CMDTAG_REFRESH_MATERIALIZED_VIEW: c_int = 168;
pub const CMDTAG_REINDEX: c_int = 169;
pub const CMDTAG_RELEASE: c_int = 170;
pub const CMDTAG_RESET: c_int = 171;
pub const CMDTAG_REVOKE: c_int = 172;
pub const CMDTAG_REVOKE_ROLE: c_int = 173;
pub const CMDTAG_ROLLBACK: c_int = 174;
pub const CMDTAG_ROLLBACK_PREPARED: c_int = 175;
pub const CMDTAG_SAVEPOINT: c_int = 176;
pub const CMDTAG_SECURITY_LABEL: c_int = 177;
pub const CMDTAG_SELECT: c_int = 178;
pub const CMDTAG_SELECT_FOR_KEY_SHARE: c_int = 179;
pub const CMDTAG_SELECT_FOR_NO_KEY_UPDATE: c_int = 180;
pub const CMDTAG_SELECT_FOR_SHARE: c_int = 181;
pub const CMDTAG_SELECT_FOR_UPDATE: c_int = 182;
pub const CMDTAG_SELECT_INTO: c_int = 183;
pub const CMDTAG_SET: c_int = 184;
pub const CMDTAG_SET_CONSTRAINTS: c_int = 185;
pub const CMDTAG_SHOW: c_int = 186;
pub const CMDTAG_START_TRANSACTION: c_int = 187;
pub const CMDTAG_TRUNCATE_TABLE: c_int = 188;
pub const CMDTAG_UNLISTEN: c_int = 189;
pub const CMDTAG_UPDATE: c_int = 190;
pub const CMDTAG_VACUUM: c_int = 191;
pub const COMMAND_TAG_NEXTTAG: c_int = 192;
pub const enum_CommandTag = c_uint;
pub const CommandTag = enum_CommandTag;
pub const struct_QueryCompletion = extern struct {
    commandTag: CommandTag,
    nprocessed: uint64,
};
pub const QueryCompletion = struct_QueryCompletion;
pub fn SetQueryCompletion(arg_qc: [*c]QueryCompletion, arg_commandTag: CommandTag, arg_nprocessed: uint64) callconv(.C) void {
    var qc = arg_qc;
    var commandTag = arg_commandTag;
    var nprocessed = arg_nprocessed;
    qc.*.commandTag = commandTag;
    qc.*.nprocessed = nprocessed;
}
pub fn CopyQueryCompletion(arg_dst: [*c]QueryCompletion, arg_src: [*c]const QueryCompletion) callconv(.C) void {
    var dst = arg_dst;
    var src = arg_src;
    dst.*.commandTag = src.*.commandTag;
    dst.*.nprocessed = src.*.nprocessed;
}
pub extern fn InitializeQueryCompletion(qc: [*c]QueryCompletion) void;
pub extern fn GetCommandTagName(commandTag: CommandTag) [*c]const u8;
pub extern fn command_tag_display_rowcount(commandTag: CommandTag) bool;
pub extern fn command_tag_event_trigger_ok(commandTag: CommandTag) bool;
pub extern fn command_tag_table_rewrite_ok(commandTag: CommandTag) bool;
pub extern fn GetCommandTagEnum(tagname: [*c]const u8) CommandTag;
pub const DestNone: c_int = 0;
pub const DestDebug: c_int = 1;
pub const DestRemote: c_int = 2;
pub const DestRemoteExecute: c_int = 3;
pub const DestRemoteSimple: c_int = 4;
pub const DestSPI: c_int = 5;
pub const DestTuplestore: c_int = 6;
pub const DestIntoRel: c_int = 7;
pub const DestCopyOut: c_int = 8;
pub const DestSQLFunction: c_int = 9;
pub const DestTransientRel: c_int = 10;
pub const DestTupleQueue: c_int = 11;
pub const CommandDest = c_uint;
pub const DestReceiver = struct__DestReceiver;
pub const struct__DestReceiver = extern struct {
    receiveSlot: ?*const fn ([*c]TupleTableSlot, [*c]DestReceiver) callconv(.C) bool,
    rStartup: ?*const fn ([*c]DestReceiver, c_int, TupleDesc) callconv(.C) void,
    rShutdown: ?*const fn ([*c]DestReceiver) callconv(.C) void,
    rDestroy: ?*const fn ([*c]DestReceiver) callconv(.C) void,
    mydest: CommandDest,
};
pub extern var None_Receiver: [*c]DestReceiver;
pub extern fn BeginCommand(commandTag: CommandTag, dest: CommandDest) void;
pub extern fn CreateDestReceiver(dest: CommandDest) [*c]DestReceiver;
pub extern fn EndCommand(qc: [*c]const QueryCompletion, dest: CommandDest, force_undecorated_output: bool) void;
pub extern fn EndReplicationCommand(commandTag: [*c]const u8) void;
pub extern fn NullCommand(dest: CommandDest) void;
pub extern fn ReadyForQuery(dest: CommandDest) void;
pub const struct_QueryDesc = extern struct {
    operation: CmdType,
    plannedstmt: [*c]PlannedStmt,
    sourceText: [*c]const u8,
    snapshot: Snapshot,
    crosscheck_snapshot: Snapshot,
    dest: [*c]DestReceiver,
    params: ParamListInfo,
    queryEnv: ?*QueryEnvironment,
    instrument_options: c_int,
    tupDesc: TupleDesc,
    estate: [*c]EState,
    planstate: [*c]PlanState,
    already_executed: bool,
    totaltime: [*c]struct_Instrumentation,
};
pub const QueryDesc = struct_QueryDesc;
pub extern fn CreateQueryDesc(plannedstmt: [*c]PlannedStmt, sourceText: [*c]const u8, snapshot: Snapshot, crosscheck_snapshot: Snapshot, dest: [*c]DestReceiver, params: ParamListInfo, queryEnv: ?*QueryEnvironment, instrument_options: c_int) [*c]QueryDesc;
pub extern fn FreeQueryDesc(qdesc: [*c]QueryDesc) void;
pub const MemoryContextData = struct_MemoryContextData;
pub extern var TopMemoryContext: MemoryContext;
pub extern var ErrorContext: MemoryContext;
pub extern var PostmasterContext: MemoryContext;
pub extern var CacheMemoryContext: MemoryContext;
pub extern var MessageContext: MemoryContext;
pub extern var TopTransactionContext: MemoryContext;
pub extern var CurTransactionContext: MemoryContext;
pub extern var PortalContext: MemoryContext;
pub extern fn MemoryContextInit() void;
pub extern fn MemoryContextReset(context: MemoryContext) void;
pub extern fn MemoryContextDelete(context: MemoryContext) void;
pub extern fn MemoryContextResetOnly(context: MemoryContext) void;
pub extern fn MemoryContextResetChildren(context: MemoryContext) void;
pub extern fn MemoryContextDeleteChildren(context: MemoryContext) void;
pub extern fn MemoryContextSetIdentifier(context: MemoryContext, id: [*c]const u8) void;
pub extern fn MemoryContextSetParent(context: MemoryContext, new_parent: MemoryContext) void;
pub extern fn GetMemoryChunkSpace(pointer: ?*anyopaque) Size;
pub extern fn MemoryContextGetParent(context: MemoryContext) MemoryContext;
pub extern fn MemoryContextIsEmpty(context: MemoryContext) bool;
pub extern fn MemoryContextMemAllocated(context: MemoryContext, recurse: bool) Size;
pub extern fn MemoryContextStats(context: MemoryContext) void;
pub extern fn MemoryContextStatsDetail(context: MemoryContext, max_children: c_int, print_to_stderr: bool) void;
pub extern fn MemoryContextAllowInCriticalSection(context: MemoryContext, allow: bool) void;
pub extern fn MemoryContextContains(context: MemoryContext, pointer: ?*anyopaque) bool;
pub fn GetMemoryChunkContext(arg_pointer: ?*anyopaque) callconv(.C) MemoryContext {
    var pointer = arg_pointer;
    var context: MemoryContext = undefined;
    _ = @as(c_int, 1);
    _ = @as(c_int, 1);
    context = @ptrCast([*c]MemoryContext, @alignCast(@import("std").meta.alignment([*c]MemoryContext), @ptrCast([*c]u8, @alignCast(@import("std").meta.alignment([*c]u8), pointer)) - @sizeOf(?*anyopaque))).*;
    _ = @as(c_int, 1);
    return context;
}
pub extern fn MemoryContextCreate(node: MemoryContext, tag: NodeTag, methods: [*c]const MemoryContextMethods, parent: MemoryContext, name: [*c]const u8) void;
pub extern fn HandleLogMemoryContextInterrupt() void;
pub extern fn ProcessLogMemoryContextInterrupt() void;
pub extern fn AllocSetContextCreateInternal(parent: MemoryContext, name: [*c]const u8, minContextSize: Size, initBlockSize: Size, maxBlockSize: Size) MemoryContext;
pub extern fn SlabContextCreate(parent: MemoryContext, name: [*c]const u8, blockSize: Size, chunkSize: Size) MemoryContext;
pub extern fn GenerationContextCreate(parent: MemoryContext, name: [*c]const u8, minContextSize: Size, initBlockSize: Size, maxBlockSize: Size) MemoryContext;
pub const ExecutorStart_hook_type = ?*const fn ([*c]QueryDesc, c_int) callconv(.C) void;
pub extern var ExecutorStart_hook: ExecutorStart_hook_type;
pub const ExecutorRun_hook_type = ?*const fn ([*c]QueryDesc, ScanDirection, uint64, bool) callconv(.C) void;
pub extern var ExecutorRun_hook: ExecutorRun_hook_type;
pub const ExecutorFinish_hook_type = ?*const fn ([*c]QueryDesc) callconv(.C) void;
pub extern var ExecutorFinish_hook: ExecutorFinish_hook_type;
pub const ExecutorEnd_hook_type = ?*const fn ([*c]QueryDesc) callconv(.C) void;
pub extern var ExecutorEnd_hook: ExecutorEnd_hook_type;
pub const ExecutorCheckPerms_hook_type = ?*const fn ([*c]List, bool) callconv(.C) bool;
pub extern var ExecutorCheckPerms_hook: ExecutorCheckPerms_hook_type;
pub const struct_Path = opaque {};
pub extern fn ExecReScan(node: [*c]PlanState) void;
pub extern fn ExecMarkPos(node: [*c]PlanState) void;
pub extern fn ExecRestrPos(node: [*c]PlanState) void;
pub extern fn ExecSupportsMarkRestore(pathnode: ?*struct_Path) bool;
pub extern fn ExecSupportsBackwardScan(node: [*c]Plan) bool;
pub extern fn ExecMaterializesOutput(plantype: NodeTag) bool;
pub extern fn execCurrentOf(cexpr: [*c]CurrentOfExpr, econtext: [*c]ExprContext, table_oid: Oid, current_tid: ItemPointer) bool;
pub extern fn execTuplesMatchPrepare(desc: TupleDesc, numCols: c_int, keyColIdx: [*c]const AttrNumber, eqOperators: [*c]const Oid, collations: [*c]const Oid, parent: [*c]PlanState) [*c]ExprState;
pub extern fn execTuplesHashPrepare(numCols: c_int, eqOperators: [*c]const Oid, eqFuncOids: [*c][*c]Oid, hashFunctions: [*c][*c]FmgrInfo) void;
pub extern fn BuildTupleHashTable(parent: [*c]PlanState, inputDesc: TupleDesc, numCols: c_int, keyColIdx: [*c]AttrNumber, eqfuncoids: [*c]const Oid, hashfunctions: [*c]FmgrInfo, collations: [*c]Oid, nbuckets: c_long, additionalsize: Size, tablecxt: MemoryContext, tempcxt: MemoryContext, use_variable_hash_iv: bool) TupleHashTable;
pub extern fn BuildTupleHashTableExt(parent: [*c]PlanState, inputDesc: TupleDesc, numCols: c_int, keyColIdx: [*c]AttrNumber, eqfuncoids: [*c]const Oid, hashfunctions: [*c]FmgrInfo, collations: [*c]Oid, nbuckets: c_long, additionalsize: Size, metacxt: MemoryContext, tablecxt: MemoryContext, tempcxt: MemoryContext, use_variable_hash_iv: bool) TupleHashTable;
pub extern fn LookupTupleHashEntry(hashtable: TupleHashTable, slot: [*c]TupleTableSlot, isnew: [*c]bool, hash: [*c]uint32) TupleHashEntry;
pub extern fn TupleHashTableHash(hashtable: TupleHashTable, slot: [*c]TupleTableSlot) uint32;
pub extern fn LookupTupleHashEntryHash(hashtable: TupleHashTable, slot: [*c]TupleTableSlot, isnew: [*c]bool, hash: uint32) TupleHashEntry;
pub extern fn FindTupleHashEntry(hashtable: TupleHashTable, slot: [*c]TupleTableSlot, eqcomp: [*c]ExprState, hashfunctions: [*c]FmgrInfo) TupleHashEntry;
pub extern fn ResetTupleHashTable(hashtable: TupleHashTable) void;
pub extern fn ExecInitJunkFilter(targetList: [*c]List, slot: [*c]TupleTableSlot) [*c]JunkFilter;
pub extern fn ExecInitJunkFilterConversion(targetList: [*c]List, cleanTupType: TupleDesc, slot: [*c]TupleTableSlot) [*c]JunkFilter;
pub extern fn ExecFindJunkAttribute(junkfilter: [*c]JunkFilter, attrName: [*c]const u8) AttrNumber;
pub extern fn ExecFindJunkAttributeInTlist(targetlist: [*c]List, attrName: [*c]const u8) AttrNumber;
pub extern fn ExecFilterJunk(junkfilter: [*c]JunkFilter, slot: [*c]TupleTableSlot) [*c]TupleTableSlot;
pub fn ExecGetJunkAttribute(arg_slot: [*c]TupleTableSlot, arg_attno: AttrNumber, arg_isNull: [*c]bool) callconv(.C) Datum {
    var slot = arg_slot;
    var attno = arg_attno;
    var isNull = arg_isNull;
    _ = @as(c_int, 1);
    return slot_getattr(slot, @bitCast(c_int, @as(c_int, attno)), isNull);
}
pub extern fn ExecutorStart(queryDesc: [*c]QueryDesc, eflags: c_int) void;
pub extern fn standard_ExecutorStart(queryDesc: [*c]QueryDesc, eflags: c_int) void;
pub extern fn ExecutorRun(queryDesc: [*c]QueryDesc, direction: ScanDirection, count: uint64, execute_once: bool) void;
pub extern fn standard_ExecutorRun(queryDesc: [*c]QueryDesc, direction: ScanDirection, count: uint64, execute_once: bool) void;
pub extern fn ExecutorFinish(queryDesc: [*c]QueryDesc) void;
pub extern fn standard_ExecutorFinish(queryDesc: [*c]QueryDesc) void;
pub extern fn ExecutorEnd(queryDesc: [*c]QueryDesc) void;
pub extern fn standard_ExecutorEnd(queryDesc: [*c]QueryDesc) void;
pub extern fn ExecutorRewind(queryDesc: [*c]QueryDesc) void;
pub extern fn ExecCheckRTPerms(rangeTable: [*c]List, ereport_on_violation: bool) bool;
pub extern fn CheckValidResultRel(resultRelInfo: [*c]ResultRelInfo, operation: CmdType) void;
pub extern fn InitResultRelInfo(resultRelInfo: [*c]ResultRelInfo, resultRelationDesc: Relation, resultRelationIndex: Index, partition_root_rri: [*c]ResultRelInfo, instrument_options: c_int) void;
pub extern fn ExecGetTriggerResultRel(estate: [*c]EState, relid: Oid, rootRelInfo: [*c]ResultRelInfo) [*c]ResultRelInfo;
pub extern fn ExecGetAncestorResultRels(estate: [*c]EState, resultRelInfo: [*c]ResultRelInfo) [*c]List;
pub extern fn ExecConstraints(resultRelInfo: [*c]ResultRelInfo, slot: [*c]TupleTableSlot, estate: [*c]EState) void;
pub extern fn ExecPartitionCheck(resultRelInfo: [*c]ResultRelInfo, slot: [*c]TupleTableSlot, estate: [*c]EState, emitError: bool) bool;
pub extern fn ExecPartitionCheckEmitError(resultRelInfo: [*c]ResultRelInfo, slot: [*c]TupleTableSlot, estate: [*c]EState) void;
pub extern fn ExecWithCheckOptions(kind: WCOKind, resultRelInfo: [*c]ResultRelInfo, slot: [*c]TupleTableSlot, estate: [*c]EState) void;
pub extern fn ExecUpdateLockMode(estate: [*c]EState, relinfo: [*c]ResultRelInfo) LockTupleMode;
pub extern fn ExecFindRowMark(estate: [*c]EState, rti: Index, missing_ok: bool) [*c]ExecRowMark;
pub extern fn ExecBuildAuxRowMark(erm: [*c]ExecRowMark, targetlist: [*c]List) [*c]ExecAuxRowMark;
pub extern fn EvalPlanQual(epqstate: [*c]EPQState, relation: Relation, rti: Index, testslot: [*c]TupleTableSlot) [*c]TupleTableSlot;
pub extern fn EvalPlanQualInit(epqstate: [*c]EPQState, parentestate: [*c]EState, subplan: [*c]Plan, auxrowmarks: [*c]List, epqParam: c_int) void;
pub extern fn EvalPlanQualSetPlan(epqstate: [*c]EPQState, subplan: [*c]Plan, auxrowmarks: [*c]List) void;
pub extern fn EvalPlanQualSlot(epqstate: [*c]EPQState, relation: Relation, rti: Index) [*c]TupleTableSlot;
pub extern fn EvalPlanQualFetchRowMark(epqstate: [*c]EPQState, rti: Index, slot: [*c]TupleTableSlot) bool;
pub extern fn EvalPlanQualNext(epqstate: [*c]EPQState) [*c]TupleTableSlot;
pub extern fn EvalPlanQualBegin(epqstate: [*c]EPQState) void;
pub extern fn EvalPlanQualEnd(epqstate: [*c]EPQState) void;
pub extern fn ExecInitNode(node: [*c]Plan, estate: [*c]EState, eflags: c_int) [*c]PlanState;
pub extern fn ExecSetExecProcNode(node: [*c]PlanState, function: ExecProcNodeMtd) void;
pub extern fn MultiExecProcNode(node: [*c]PlanState) [*c]Node;
pub extern fn ExecEndNode(node: [*c]PlanState) void;
pub extern fn ExecShutdownNode(node: [*c]PlanState) bool;
pub extern fn ExecSetTupleBound(tuples_needed: int64, child_node: [*c]PlanState) void;
pub fn ExecProcNode(arg_node: [*c]PlanState) callconv(.C) [*c]TupleTableSlot {
    var node = arg_node;
    if (node.*.chgParam != @ptrCast([*c]Bitmapset, @alignCast(@import("std").meta.alignment([*c]Bitmapset), @ptrFromInt(?*anyopaque, @as(c_int, 0))))) {
        ExecReScan(node);
    }
    return node.*.ExecProcNode.?(node);
}
pub extern fn ExecInitExpr(node: [*c]Expr, parent: [*c]PlanState) [*c]ExprState;
pub extern fn ExecInitExprWithParams(node: [*c]Expr, ext_params: ParamListInfo) [*c]ExprState;
pub extern fn ExecInitQual(qual: [*c]List, parent: [*c]PlanState) [*c]ExprState;
pub extern fn ExecInitCheck(qual: [*c]List, parent: [*c]PlanState) [*c]ExprState;
pub extern fn ExecInitExprList(nodes: [*c]List, parent: [*c]PlanState) [*c]List;
pub extern fn ExecBuildAggTrans(aggstate: [*c]AggState, phase: ?*struct_AggStatePerPhaseData, doSort: bool, doHash: bool, nullcheck: bool) [*c]ExprState;
pub extern fn ExecBuildGroupingEqual(ldesc: TupleDesc, rdesc: TupleDesc, lops: [*c]const TupleTableSlotOps, rops: [*c]const TupleTableSlotOps, numCols: c_int, keyColIdx: [*c]const AttrNumber, eqfunctions: [*c]const Oid, collations: [*c]const Oid, parent: [*c]PlanState) [*c]ExprState;
pub extern fn ExecBuildParamSetEqual(desc: TupleDesc, lops: [*c]const TupleTableSlotOps, rops: [*c]const TupleTableSlotOps, eqfunctions: [*c]const Oid, collations: [*c]const Oid, param_exprs: [*c]const List, parent: [*c]PlanState) [*c]ExprState;
pub extern fn ExecBuildProjectionInfo(targetList: [*c]List, econtext: [*c]ExprContext, slot: [*c]TupleTableSlot, parent: [*c]PlanState, inputDesc: TupleDesc) [*c]ProjectionInfo;
pub extern fn ExecBuildUpdateProjection(targetList: [*c]List, evalTargetList: bool, targetColnos: [*c]List, relDesc: TupleDesc, econtext: [*c]ExprContext, slot: [*c]TupleTableSlot, parent: [*c]PlanState) [*c]ProjectionInfo;
pub extern fn ExecPrepareExpr(node: [*c]Expr, estate: [*c]EState) [*c]ExprState;
pub extern fn ExecPrepareQual(qual: [*c]List, estate: [*c]EState) [*c]ExprState;
pub extern fn ExecPrepareCheck(qual: [*c]List, estate: [*c]EState) [*c]ExprState;
pub extern fn ExecPrepareExprList(nodes: [*c]List, estate: [*c]EState) [*c]List;
pub fn ExecEvalExpr(arg_state: [*c]ExprState, arg_econtext: [*c]ExprContext, arg_isNull: [*c]bool) callconv(.C) Datum {
    var state = arg_state;
    var econtext = arg_econtext;
    var isNull = arg_isNull;
    return state.*.evalfunc.?(state, econtext, isNull);
}
pub fn ExecEvalExprSwitchContext(arg_state: [*c]ExprState, arg_econtext: [*c]ExprContext, arg_isNull: [*c]bool) callconv(.C) Datum {
    var state = arg_state;
    var econtext = arg_econtext;
    var isNull = arg_isNull;
    var retDatum: Datum = undefined;
    var oldContext: MemoryContext = undefined;
    oldContext = MemoryContextSwitchTo(econtext.*.ecxt_per_tuple_memory);
    retDatum = state.*.evalfunc.?(state, econtext, isNull);
    _ = MemoryContextSwitchTo(oldContext);
    return retDatum;
}
pub fn ExecProject(arg_projInfo: [*c]ProjectionInfo) callconv(.C) [*c]TupleTableSlot {
    var projInfo = arg_projInfo;
    var econtext: [*c]ExprContext = projInfo.*.pi_exprContext;
    var state: [*c]ExprState = &projInfo.*.pi_state;
    var slot: [*c]TupleTableSlot = state.*.resultslot;
    var isnull: bool = undefined;
    _ = ExecClearTuple(slot);
    _ = ExecEvalExprSwitchContext(state, econtext, &isnull);
    slot.*.tts_flags &= @bitCast(uint16, @truncate(c_short, ~(@as(c_int, 1) << @intCast(@import("std").math.Log2Int(c_int), 1))));
    slot.*.tts_nvalid = @bitCast(AttrNumber, @truncate(c_short, slot.*.tts_tupleDescriptor.*.natts));
    return slot;
}
pub fn ExecQual(arg_state: [*c]ExprState, arg_econtext: [*c]ExprContext) callconv(.C) bool {
    var state = arg_state;
    var econtext = arg_econtext;
    var ret: Datum = undefined;
    var isnull: bool = undefined;
    if (state == @ptrCast([*c]ExprState, @alignCast(@import("std").meta.alignment([*c]ExprState), @ptrFromInt(?*anyopaque, @as(c_int, 0))))) return @as(c_int, 1) != 0;
    _ = @as(c_int, 1);
    ret = ExecEvalExprSwitchContext(state, econtext, &isnull);
    _ = @as(c_int, 1);
    return @as(bool, ret != @bitCast(Datum, @as(c_long, @as(c_int, 0))));
}
pub fn ExecQualAndReset(arg_state: [*c]ExprState, arg_econtext: [*c]ExprContext) callconv(.C) bool {
    var state = arg_state;
    var econtext = arg_econtext;
    var ret: bool = ExecQual(state, econtext);
    MemoryContextReset(econtext.*.ecxt_per_tuple_memory);
    return ret;
}
pub extern fn ExecCheck(state: [*c]ExprState, context: [*c]ExprContext) bool;
pub extern fn ExecInitTableFunctionResult(expr: [*c]Expr, econtext: [*c]ExprContext, parent: [*c]PlanState) [*c]SetExprState;
pub extern fn ExecMakeTableFunctionResult(setexpr: [*c]SetExprState, econtext: [*c]ExprContext, argContext: MemoryContext, expectedDesc: TupleDesc, randomAccess: bool) ?*Tuplestorestate;
pub extern fn ExecInitFunctionResultSet(expr: [*c]Expr, econtext: [*c]ExprContext, parent: [*c]PlanState) [*c]SetExprState;
pub extern fn ExecMakeFunctionResultSet(fcache: [*c]SetExprState, econtext: [*c]ExprContext, argContext: MemoryContext, isNull: [*c]bool, isDone: [*c]ExprDoneCond) Datum;
pub const ExecScanAccessMtd = ?*const fn ([*c]ScanState) callconv(.C) [*c]TupleTableSlot;
pub const ExecScanRecheckMtd = ?*const fn ([*c]ScanState, [*c]TupleTableSlot) callconv(.C) bool;
pub extern fn ExecScan(node: [*c]ScanState, accessMtd: ExecScanAccessMtd, recheckMtd: ExecScanRecheckMtd) [*c]TupleTableSlot;
pub extern fn ExecAssignScanProjectionInfo(node: [*c]ScanState) void;
pub extern fn ExecAssignScanProjectionInfoWithVarno(node: [*c]ScanState, varno: c_int) void;
pub extern fn ExecScanReScan(node: [*c]ScanState) void;
pub extern fn ExecInitResultTypeTL(planstate: [*c]PlanState) void;
pub extern fn ExecInitResultSlot(planstate: [*c]PlanState, tts_ops: [*c]const TupleTableSlotOps) void;
pub extern fn ExecInitResultTupleSlotTL(planstate: [*c]PlanState, tts_ops: [*c]const TupleTableSlotOps) void;
pub extern fn ExecInitScanTupleSlot(estate: [*c]EState, scanstate: [*c]ScanState, tupleDesc: TupleDesc, tts_ops: [*c]const TupleTableSlotOps) void;
pub extern fn ExecInitExtraTupleSlot(estate: [*c]EState, tupledesc: TupleDesc, tts_ops: [*c]const TupleTableSlotOps) [*c]TupleTableSlot;
pub extern fn ExecInitNullTupleSlot(estate: [*c]EState, tupType: TupleDesc, tts_ops: [*c]const TupleTableSlotOps) [*c]TupleTableSlot;
pub extern fn ExecTypeFromTL(targetList: [*c]List) TupleDesc;
pub extern fn ExecCleanTypeFromTL(targetList: [*c]List) TupleDesc;
pub extern fn ExecTypeFromExprList(exprList: [*c]List) TupleDesc;
pub extern fn ExecTypeSetColNames(typeInfo: TupleDesc, namesList: [*c]List) void;
pub extern fn UpdateChangedParamSet(node: [*c]PlanState, newchg: [*c]Bitmapset) void;
pub const struct_TupOutputState = extern struct {
    slot: [*c]TupleTableSlot,
    dest: [*c]DestReceiver,
};
pub const TupOutputState = struct_TupOutputState;
pub extern fn begin_tup_output_tupdesc(dest: [*c]DestReceiver, tupdesc: TupleDesc, tts_ops: [*c]const TupleTableSlotOps) [*c]TupOutputState;
pub extern fn do_tup_output(tstate: [*c]TupOutputState, values: [*c]Datum, isnull: [*c]bool) void;
pub extern fn do_text_output_multiline(tstate: [*c]TupOutputState, txt: [*c]const u8) void;
pub extern fn end_tup_output(tstate: [*c]TupOutputState) void;
pub extern fn CreateExecutorState() [*c]EState;
pub extern fn FreeExecutorState(estate: [*c]EState) void;
pub extern fn CreateExprContext(estate: [*c]EState) [*c]ExprContext;
pub extern fn CreateWorkExprContext(estate: [*c]EState) [*c]ExprContext;
pub extern fn CreateStandaloneExprContext() [*c]ExprContext;
pub extern fn FreeExprContext(econtext: [*c]ExprContext, isCommit: bool) void;
pub extern fn ReScanExprContext(econtext: [*c]ExprContext) void;
pub extern fn MakePerTupleExprContext(estate: [*c]EState) [*c]ExprContext;
pub extern fn ExecAssignExprContext(estate: [*c]EState, planstate: [*c]PlanState) void;
pub extern fn ExecGetResultType(planstate: [*c]PlanState) TupleDesc;
pub extern fn ExecGetResultSlotOps(planstate: [*c]PlanState, isfixed: [*c]bool) [*c]const TupleTableSlotOps;
pub extern fn ExecAssignProjectionInfo(planstate: [*c]PlanState, inputDesc: TupleDesc) void;
pub extern fn ExecConditionalAssignProjectionInfo(planstate: [*c]PlanState, inputDesc: TupleDesc, varno: c_int) void;
pub extern fn ExecFreeExprContext(planstate: [*c]PlanState) void;
pub extern fn ExecAssignScanType(scanstate: [*c]ScanState, tupDesc: TupleDesc) void;
pub extern fn ExecCreateScanSlotFromOuterPlan(estate: [*c]EState, scanstate: [*c]ScanState, tts_ops: [*c]const TupleTableSlotOps) void;
pub extern fn ExecRelationIsTargetRelation(estate: [*c]EState, scanrelid: Index) bool;
pub extern fn ExecOpenScanRelation(estate: [*c]EState, scanrelid: Index, eflags: c_int) Relation;
pub extern fn ExecInitRangeTable(estate: [*c]EState, rangeTable: [*c]List) void;
pub extern fn ExecCloseRangeTableRelations(estate: [*c]EState) void;
pub extern fn ExecCloseResultRelations(estate: [*c]EState) void;
pub fn exec_rt_fetch(arg_rti: Index, arg_estate: [*c]EState) callconv(.C) [*c]RangeTblEntry {
    var rti = arg_rti;
    var estate = arg_estate;
    return @ptrCast([*c]RangeTblEntry, @alignCast(@import("std").meta.alignment([*c]RangeTblEntry), list_nth(estate.*.es_range_table, @bitCast(c_int, rti -% @bitCast(Index, @as(c_int, 1))))));
}
pub extern fn ExecGetRangeTableRelation(estate: [*c]EState, rti: Index) Relation;
pub extern fn ExecInitResultRelation(estate: [*c]EState, resultRelInfo: [*c]ResultRelInfo, rti: Index) void;
pub extern fn executor_errposition(estate: [*c]EState, location: c_int) c_int;
pub extern fn RegisterExprContextCallback(econtext: [*c]ExprContext, function: ExprContextCallbackFunction, arg: Datum) void;
pub extern fn UnregisterExprContextCallback(econtext: [*c]ExprContext, function: ExprContextCallbackFunction, arg: Datum) void;
pub extern fn GetAttributeByName(tuple: HeapTupleHeader, attname: [*c]const u8, isNull: [*c]bool) Datum;
pub extern fn GetAttributeByNum(tuple: HeapTupleHeader, attrno: AttrNumber, isNull: [*c]bool) Datum;
pub extern fn ExecTargetListLength(targetlist: [*c]List) c_int;
pub extern fn ExecCleanTargetListLength(targetlist: [*c]List) c_int;
pub extern fn ExecGetTriggerOldSlot(estate: [*c]EState, relInfo: [*c]ResultRelInfo) [*c]TupleTableSlot;
pub extern fn ExecGetTriggerNewSlot(estate: [*c]EState, relInfo: [*c]ResultRelInfo) [*c]TupleTableSlot;
pub extern fn ExecGetReturningSlot(estate: [*c]EState, relInfo: [*c]ResultRelInfo) [*c]TupleTableSlot;
pub extern fn ExecGetChildToRootMap(resultRelInfo: [*c]ResultRelInfo) [*c]TupleConversionMap;
pub extern fn ExecGetInsertedCols(relinfo: [*c]ResultRelInfo, estate: [*c]EState) [*c]Bitmapset;
pub extern fn ExecGetUpdatedCols(relinfo: [*c]ResultRelInfo, estate: [*c]EState) [*c]Bitmapset;
pub extern fn ExecGetExtraUpdatedCols(relinfo: [*c]ResultRelInfo, estate: [*c]EState) [*c]Bitmapset;
pub extern fn ExecGetAllUpdatedCols(relinfo: [*c]ResultRelInfo, estate: [*c]EState) [*c]Bitmapset;
pub extern fn ExecOpenIndices(resultRelInfo: [*c]ResultRelInfo, speculative: bool) void;
pub extern fn ExecCloseIndices(resultRelInfo: [*c]ResultRelInfo) void;
pub extern fn ExecInsertIndexTuples(resultRelInfo: [*c]ResultRelInfo, slot: [*c]TupleTableSlot, estate: [*c]EState, update: bool, noDupErr: bool, specConflict: [*c]bool, arbiterIndexes: [*c]List) [*c]List;
pub extern fn ExecCheckIndexConstraints(resultRelInfo: [*c]ResultRelInfo, slot: [*c]TupleTableSlot, estate: [*c]EState, conflictTid: ItemPointer, arbiterIndexes: [*c]List) bool;
pub extern fn check_exclusion_constraint(heap: Relation, index: Relation, indexInfo: [*c]IndexInfo, tupleid: ItemPointer, values: [*c]Datum, isnull: [*c]bool, estate: [*c]EState, newIndex: bool) void;
pub extern fn RelationFindReplTupleByIndex(rel: Relation, idxoid: Oid, lockmode: LockTupleMode, searchslot: [*c]TupleTableSlot, outslot: [*c]TupleTableSlot) bool;
pub extern fn RelationFindReplTupleSeq(rel: Relation, lockmode: LockTupleMode, searchslot: [*c]TupleTableSlot, outslot: [*c]TupleTableSlot) bool;
pub extern fn ExecSimpleRelationInsert(resultRelInfo: [*c]ResultRelInfo, estate: [*c]EState, slot: [*c]TupleTableSlot) void;
pub extern fn ExecSimpleRelationUpdate(resultRelInfo: [*c]ResultRelInfo, estate: [*c]EState, epqstate: [*c]EPQState, searchslot: [*c]TupleTableSlot, slot: [*c]TupleTableSlot) void;
pub extern fn ExecSimpleRelationDelete(resultRelInfo: [*c]ResultRelInfo, estate: [*c]EState, epqstate: [*c]EPQState, searchslot: [*c]TupleTableSlot) void;
pub extern fn CheckCmdReplicaIdentity(rel: Relation, cmd: CmdType) void;
pub extern fn CheckSubscriptionRelkind(relkind: u8, nspname: [*c]const u8, relname: [*c]const u8) void;
pub extern fn ExecGetUpdateNewTuple(relinfo: [*c]ResultRelInfo, planSlot: [*c]TupleTableSlot, oldSlot: [*c]TupleTableSlot) [*c]TupleTableSlot;
pub extern fn ExecLookupResultRelByOid(node: [*c]ModifyTableState, resultoid: Oid, missing_ok: bool, update_cache: bool) [*c]ResultRelInfo;
pub export fn Pg_magic_func() [*c]const Pg_magic_struct {
    const Pg_magic_data = struct {
        const static: Pg_magic_struct = Pg_magic_struct{
            .len = @bitCast(c_int, @truncate(c_uint, @sizeOf(Pg_magic_struct))),
            .version = @divTrunc(@as(c_int, 150003), @as(c_int, 100)),
            .funcmaxargs = @as(c_int, 100),
            .indexmaxkeys = @as(c_int, 32),
            .namedatalen = @as(c_int, 64),
            .float8byval = @as(c_int, 1),
            .abi_extra = "PostgreSQL",
        };
    };
    return &Pg_magic_data.static;
}
pub export fn c_overpaid(arg_fcinfo: FunctionCallInfo) Datum {
    var fcinfo = arg_fcinfo;
    var t: HeapTupleHeader = @ptrCast(HeapTupleHeader, @alignCast(@import("std").meta.alignment(HeapTupleHeader), pg_detoast_datum(@ptrCast([*c]struct_varlena, @alignCast(@import("std").meta.alignment([*c]struct_varlena), @ptrFromInt(Pointer, fcinfo.*.args()[@intCast(c_uint, @as(c_int, 0))].value))))));
    var limit: int32 = @bitCast(int32, @truncate(c_uint, fcinfo.*.args()[@intCast(c_uint, @as(c_int, 1))].value));
    var isnull: bool = undefined;
    var salary: Datum = undefined;
    salary = GetAttributeByName(t, "salary", &isnull);
    if (isnull) return @bitCast(Datum, @as(c_long, if (@as(c_int, 0) != 0) @as(c_int, 1) else @as(c_int, 0)));
    return @bitCast(Datum, @as(c_long, if (@bitCast(int32, @truncate(c_uint, salary)) > limit) @as(c_int, 1) else @as(c_int, 0)));
}
pub export fn pg_finfo_c_overpaid() [*c]const Pg_finfo_record {
    const my_finfo = struct {
        const static: Pg_finfo_record = Pg_finfo_record{
            .api_version = @as(c_int, 1),
        };
    };
    return &my_finfo.static;
}
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):80:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):86:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):109:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):113:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):119:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):122:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`"); // (no file):183:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):205:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`"); // (no file):213:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):343:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):344:9
pub const PG_INT128_TYPE = @compileError("unable to translate macro: undefined identifier `__int128`"); // /home/sarna/repo/pgturso/postgres/src/include/pg_config.h:820:9
pub const PG_PRINTF_ATTRIBUTE = @compileError("unable to translate macro: undefined identifier `gnu_printf`"); // /home/sarna/repo/pgturso/postgres/src/include/pg_config.h:839:9
pub const pg_restrict = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /home/sarna/repo/pgturso/postgres/src/include/pg_config.h:1009:9
pub const restrict = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /home/sarna/repo/pgturso/postgres/src/include/pg_config.h:1014:9
pub const PLATFORM_DEFAULT_SYNC_METHOD = @compileError("unable to translate macro: undefined identifier `SYNC_METHOD_FDATASYNC`"); // /home/sarna/repo/pgturso/postgres/src/include/pg_config_os.h:22:9
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`"); // /usr/include/features.h:187:9
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`"); // /usr/include/sys/cdefs.h:45:10
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`"); // /usr/include/sys/cdefs.h:55:10
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:82:11
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'"); // /usr/include/sys/cdefs.h:124:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token '#'"); // /usr/include/sys/cdefs.h:125:9
pub const __warnattr = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:209:10
pub const __errordecl = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/sys/cdefs.h:210:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['"); // /usr/include/sys/cdefs.h:218:10
pub const __REDIRECT = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:249:10
pub const __REDIRECT_NTH = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:256:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /usr/include/sys/cdefs.h:258:11
pub const __ASMNAME2 = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/sys/cdefs.h:262:10
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:283:10
pub const __attribute_alloc_size__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:294:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:300:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:310:10
pub const __attribute_const__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:317:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:323:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:332:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:333:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:341:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:351:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:364:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:374:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:386:11
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:399:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:408:10
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/sys/cdefs.h:426:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:435:10
pub const __extern_inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // /usr/include/sys/cdefs.h:453:11
pub const __extern_always_inline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:454:11
pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // /usr/include/sys/cdefs.h:497:10
pub const __attribute_copy__ = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:546:10
pub const __LDBL_REDIR2_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:622:10
pub const __LDBL_REDIR_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:623:10
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`"); // /usr/include/sys/cdefs.h:637:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`"); // /usr/include/sys/cdefs.h:638:10
pub const __fortified_attr_access = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:683:11
pub const __attr_access = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:684:11
pub const __attr_access_none = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:685:11
pub const __attr_dealloc = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /usr/include/sys/cdefs.h:695:10
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/sys/cdefs.h:702:10
pub const __STD_TYPE = @compileError("unable to translate C expr: unexpected token 'typedef'"); // /usr/include/bits/types.h:137:10
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`"); // /usr/include/bits/typesizes.h:73:9
pub const __getc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:102:9
pub const __putc_unlocked_body = @compileError("TODO postfix inc/dec expr"); // /usr/include/bits/types/struct_FILE.h:106:9
pub const __CFLOAT32 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:149:12
pub const __CFLOAT64 = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:160:13
pub const __CFLOAT32X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:169:12
pub const __CFLOAT64X = @compileError("unable to translate: TODO _Complex"); // /usr/include/bits/floatn-common.h:178:13
pub const __builtin_nansf32 = @compileError("unable to translate macro: undefined identifier `__builtin_nansf`"); // /usr/include/bits/floatn-common.h:221:12
pub const __builtin_huge_valf64 = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:255:13
pub const __builtin_inff64 = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:256:13
pub const __builtin_nanf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:257:13
pub const __builtin_nansf64 = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:258:13
pub const __builtin_huge_valf32x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/bits/floatn-common.h:272:12
pub const __builtin_inff32x = @compileError("unable to translate macro: undefined identifier `__builtin_inf`"); // /usr/include/bits/floatn-common.h:273:12
pub const __builtin_nanf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nan`"); // /usr/include/bits/floatn-common.h:274:12
pub const __builtin_nansf32x = @compileError("unable to translate macro: undefined identifier `__builtin_nans`"); // /usr/include/bits/floatn-common.h:275:12
pub const __builtin_huge_valf64x = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/bits/floatn-common.h:289:13
pub const __builtin_inff64x = @compileError("unable to translate macro: undefined identifier `__builtin_infl`"); // /usr/include/bits/floatn-common.h:290:13
pub const __builtin_nanf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nanl`"); // /usr/include/bits/floatn-common.h:291:13
pub const __builtin_nansf64x = @compileError("unable to translate macro: undefined identifier `__builtin_nansl`"); // /usr/include/bits/floatn-common.h:292:13
pub const __FD_ZERO = @compileError("unable to translate macro: undefined identifier `__i`"); // /usr/include/bits/select.h:25:9
pub const __FD_SET = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /usr/include/bits/select.h:32:9
pub const __FD_CLR = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /usr/include/bits/select.h:34:9
pub const __PTHREAD_MUTEX_INITIALIZER = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/struct_mutex.h:56:10
pub const __PTHREAD_RWLOCK_ELISION_EXTRA = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/struct_rwlock.h:40:11
pub const __ONCE_FLAG_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /usr/include/bits/thread-shared-types.h:113:9
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`"); // /usr/lib/zig/include/stddef.h:111:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // /usr/lib/zig/include/stdarg.h:33:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // /usr/lib/zig/include/stdarg.h:35:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // /usr/lib/zig/include/stdarg.h:36:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /usr/lib/zig/include/stdarg.h:41:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // /usr/lib/zig/include/stdarg.h:46:9
pub const pg_attribute_unused = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:118:9
pub const pg_nodiscard = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:130:9
pub const pg_attribute_no_sanitize_alignment = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:142:9
pub const pg_attribute_format_arg = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:160:9
pub const pg_attribute_printf = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:161:9
pub const pg_attribute_aligned = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:169:9
pub const pg_attribute_noreturn = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:170:9
pub const pg_attribute_packed = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:171:9
pub const pg_attribute_always_inline = @compileError("unable to translate C expr: unexpected token 'inline'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:196:9
pub const pg_noinline = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:207:9
pub const pg_attribute_cold = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:235:9
pub const pg_attribute_hot = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:241:9
pub const CppAsString = @compileError("unable to translate C expr: unexpected token '#'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:288:9
pub const CppConcat = @compileError("unable to translate C expr: unexpected token '##'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:290:9
pub const VA_ARGS_NARGS = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:306:9
pub const VA_ARGS_NARGS_ = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:315:9
pub const PG_FUNCNAME_MACRO = @compileError("unable to translate macro: undefined identifier `__func__`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:354:9
pub const PointerIsValid = @compileError("unable to translate C expr: unexpected token 'const'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:726:9
pub const lengthof = @compileError("unable to translate C expr: unexpected token '('"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:762:9
pub const StaticAssertStmt = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:939:9
pub const StaticAssertExpr = @compileError("unable to translate C expr: unexpected token '{'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:941:9
pub const StaticAssertDecl = @compileError("unable to translate C expr: unexpected token '_Static_assert'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:943:9
pub const AssertVariableIsOfType = @compileError("unable to translate macro: undefined identifier `__builtin_types_compatible_p`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:984:9
pub const AssertVariableIsOfTypeMacro = @compileError("unable to translate macro: undefined identifier `__builtin_types_compatible_p`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:987:9
pub const MemSet = @compileError("unable to translate macro: undefined identifier `_vstart`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:1036:9
pub const MemSetAligned = @compileError("unable to translate macro: undefined identifier `_start`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:1069:9
pub const MemSetLoop = @compileError("unable to translate macro: undefined identifier `_start`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:1104:9
pub const INVERT_COMPARE_RESULT = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:1153:9
pub const unconstify = @compileError("unable to translate macro: undefined identifier `__builtin_types_compatible_p`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:1262:9
pub const unvolatize = @compileError("unable to translate macro: undefined identifier `__builtin_types_compatible_p`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:1266:9
pub const SIGNAL_ARGS = @compileError("unable to translate macro: undefined identifier `postgres_signal_arg`"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:1386:9
pub const NON_EXEC_STATIC = @compileError("unable to translate C expr: unexpected token 'static'"); // /home/sarna/repo/pgturso/postgres/src/include/c.h:1411:9
pub const __exctype = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/ctype.h:102:9
pub const __tobody = @compileError("unable to translate macro: undefined identifier `__extension__`"); // /usr/include/ctype.h:155:9
pub const __exctype_l = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/ctype.h:244:10
pub const ALL_CONNECTION_FAILURE_ERRNOS = @compileError("unable to translate C expr: unexpected token ':'"); // /home/sarna/repo/pgturso/postgres/src/include/port.h:121:9
pub const closesocket = @compileError("unable to translate macro: undefined identifier `close`"); // /home/sarna/repo/pgturso/postgres/src/include/port.h:346:9
pub const HUGE_VAL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // /usr/include/math.h:48:10
pub const HUGE_VALL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // /usr/include/math.h:60:11
pub const __GLIBC_FLT_EVAL_METHOD = @compileError("unable to translate macro: undefined identifier `__FLT_EVAL_METHOD__`"); // /usr/include/bits/flt-eval-method.h:27:11
pub const __SIMD_DECL = @compileError("unable to translate macro: undefined identifier `__DECL_SIMD_`"); // /usr/include/math.h:276:9
pub const __MATHCALL_VEC = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/math.h:278:9
pub const __MATHDECL_VEC = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // /usr/include/math.h:282:9
pub const __MATHDECL = @compileError("unable to translate macro: undefined identifier `__`"); // /usr/include/math.h:288:9
pub const __MATHDECLX = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // /usr/include/math.h:293:9
pub const __MATHDECL_1_IMPL = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/math.h:296:9
pub const __MATHREDIR = @compileError("unable to translate C expr: unexpected token 'extern'"); // /usr/include/math.h:305:9
pub const __MATHCALL_NARROW_ARGS_1 = @compileError("unable to translate macro: undefined identifier `_Marg_`"); // /usr/include/math.h:550:9
pub const __MATHCALL_NARROW_ARGS_2 = @compileError("unable to translate macro: undefined identifier `_Marg_`"); // /usr/include/math.h:551:9
pub const __MATHCALL_NARROW_ARGS_3 = @compileError("unable to translate macro: undefined identifier `_Marg_`"); // /usr/include/math.h:552:9
pub const __MATHCALL_NARROW_NORMAL = @compileError("unable to translate macro: undefined identifier `_Mret_`"); // /usr/include/math.h:553:9
pub const __MATHCALL_NARROW_REDIR = @compileError("unable to translate macro: undefined identifier `_Mret_`"); // /usr/include/math.h:555:9
pub const __MATH_TG = @compileError("unable to translate macro: undefined identifier `f`"); // /usr/include/math.h:922:10
pub const fpclassify = @compileError("unable to translate macro: undefined identifier `__builtin_fpclassify`"); // /usr/include/math.h:967:11
pub const isfinite = @compileError("unable to translate macro: undefined identifier `__builtin_isfinite`"); // /usr/include/math.h:994:11
pub const isnormal = @compileError("unable to translate macro: undefined identifier `__builtin_isnormal`"); // /usr/include/math.h:1002:11
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`"); // /usr/include/math.h:1305:11
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`"); // /usr/include/math.h:1306:11
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`"); // /usr/include/math.h:1307:11
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`"); // /usr/include/math.h:1308:11
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`"); // /usr/include/math.h:1309:11
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`"); // /usr/include/math.h:1310:11
pub const pg_pread = @compileError("unable to translate macro: undefined identifier `pread`"); // /home/sarna/repo/pgturso/postgres/src/include/port.h:433:9
pub const pg_pwrite = @compileError("unable to translate macro: undefined identifier `pwrite`"); // /home/sarna/repo/pgturso/postgres/src/include/port.h:439:9
pub const ereport_domain = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/elog.h:135:9
pub const ereport = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/elog.h:157:9
pub const elog = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/elog.h:232:9
pub const PG_TRY = @compileError("unable to translate macro: undefined identifier `_save_exception_stack`"); // /home/sarna/repo/pgturso/postgres/src/include/utils/elog.h:313:9
pub const PG_CATCH = @compileError("unable to translate macro: undefined identifier `_save_exception_stack`"); // /home/sarna/repo/pgturso/postgres/src/include/utils/elog.h:323:9
pub const PG_FINALLY = @compileError("unable to translate macro: undefined identifier `_do_rethrow`"); // /home/sarna/repo/pgturso/postgres/src/include/utils/elog.h:330:9
pub const PG_END_TRY = @compileError("unable to translate macro: undefined identifier `_do_rethrow`"); // /home/sarna/repo/pgturso/postgres/src/include/utils/elog.h:338:9
pub const palloc_object = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/palloc.h:90:9
pub const palloc0_object = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/palloc.h:91:9
pub const palloc_array = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/palloc.h:96:9
pub const palloc0_array = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/palloc.h:97:9
pub const repalloc_array = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/palloc.h:103:9
pub const SET_VARSIZE_4B = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/postgres.h:269:9
pub const SET_VARSIZE_4B_C = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/postgres.h:271:9
pub const SET_VARSIZE_1B = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/postgres.h:273:9
pub const SET_VARTAG_1B_E = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/postgres.h:275:9
pub const VARHDRSZ_EXTERNAL = @compileError("unable to translate macro: undefined identifier `va_data`"); // /home/sarna/repo/pgturso/postgres/src/include/postgres.h:290:9
pub const VARHDRSZ_COMPRESSED = @compileError("unable to translate macro: undefined identifier `va_compressed`"); // /home/sarna/repo/pgturso/postgres/src/include/postgres.h:291:9
pub const VARHDRSZ_SHORT = @compileError("unable to translate macro: undefined identifier `va_data`"); // /home/sarna/repo/pgturso/postgres/src/include/postgres.h:292:9
pub const VARATT_EXTERNAL_SET_SIZE_AND_COMPRESS_METHOD = @compileError("unable to translate macro: undefined identifier `TOAST_PGLZ_COMPRESSION_ID`"); // /home/sarna/repo/pgturso/postgres/src/include/postgres.h:376:9
pub const CATALOG = @compileError("unable to translate macro: undefined identifier `FormData_`"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:23:9
pub const BKI_ROWTYPE_OID = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:28:9
pub const BKI_DEFAULT = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:35:9
pub const BKI_ARRAY_DEFAULT = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:37:9
pub const BKI_LOOKUP = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:46:9
pub const BKI_LOOKUP_OPT = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:47:9
pub const DECLARE_TOAST = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:63:9
pub const DECLARE_TOAST_WITH_MACRO = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:64:9
pub const DECLARE_INDEX = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:83:9
pub const DECLARE_UNIQUE_INDEX = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:84:9
pub const DECLARE_UNIQUE_INDEX_PKEY = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:85:9
pub const DECLARE_OID_DEFINING_MACRO = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:93:9
pub const DECLARE_FOREIGN_KEY = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:117:9
pub const DECLARE_FOREIGN_KEY_OPT = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:118:9
pub const DECLARE_ARRAY_FOREIGN_KEY = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:119:9
pub const DECLARE_ARRAY_FOREIGN_KEY_OPT = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/genbki.h:120:9
pub const ATTRIBUTE_FIXED_PART_SIZE = @compileError("unable to translate macro: undefined identifier `attcollation`"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/pg_attribute.h:199:9
pub const nodeTag = @compileError("unable to translate C expr: unexpected token 'const'"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/nodes.h:550:9
pub const newNode = @compileError("unable to translate macro: undefined identifier `_result`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/nodes.h:566:9
pub const makeNode = @compileError("unable to translate macro: undefined identifier `T_`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/nodes.h:593:9
pub const NodeSetTag = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/nodes.h:594:9
pub const IsA = @compileError("unable to translate macro: undefined identifier `T_`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/nodes.h:596:9
pub const castNode = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/nodes.h:614:9
pub const copyObject = @compileError("unable to translate macro: undefined identifier `typeof`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/nodes.h:659:9
pub const foreach = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:352:9
pub const foreach_delete_current = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:369:9
pub const foreach_current_index = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:382:9
pub const for_each_from = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:393:9
pub const for_each_cell = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:417:9
pub const forboth = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:446:9
pub const multi_for_advance_cell = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:453:9
pub const for_both_cell = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:468:9
pub const forthree = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:491:9
pub const forfour = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:503:9
pub const forfive = @compileError("unable to translate macro: undefined identifier `__state`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/pg_list.h:516:9
pub const TupleDescSize = @compileError("unable to translate macro: undefined identifier `attrs`"); // /home/sarna/repo/pgturso/postgres/src/include/access/tupdesc.h:102:9
pub const PinTupleDesc = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/access/tupdesc.h:116:9
pub const ReleaseTupleDesc = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/access/tupdesc.h:122:9
pub const BlockIdSet = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/block.h:84:9
pub const BlockIdCopy = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/block.h:94:9
pub const ItemIdSetUnused = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/itemid.h:128:9
pub const ItemIdSetNormal = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/itemid.h:140:9
pub const ItemIdSetRedirect = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/itemid.h:152:9
pub const ItemIdSetDead = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/itemid.h:164:9
pub const ItemIdMarkDead = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/itemid.h:179:9
pub const ItemPointerSet = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/itemptr.h:127:9
pub const ItemPointerSetOffsetNumber = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/itemptr.h:148:9
pub const ItemPointerCopy = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/itemptr.h:161:9
pub const ItemPointerSetInvalid = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/itemptr.h:172:9
pub const st_atime = @compileError("unable to translate macro: undefined identifier `st_atim`"); // /usr/include/bits/struct_stat.h:77:11
pub const st_mtime = @compileError("unable to translate macro: undefined identifier `st_mtim`"); // /usr/include/bits/struct_stat.h:78:11
pub const st_ctime = @compileError("unable to translate macro: undefined identifier `st_ctim`"); // /usr/include/bits/struct_stat.h:79:11
pub const TransactionIdStore = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/access/transam.h:44:9
pub const StoreInvalidTransactionId = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/access/transam.h:45:9
pub const TransactionIdAdvance = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/access/transam.h:91:9
pub const TransactionIdRetreat = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/access/transam.h:141:9
pub const IsTrueArrayType = @compileError("unable to translate macro: undefined identifier `F_ARRAY_SUBSCRIPT_HANDLER`"); // /home/sarna/repo/pgturso/postgres/src/include/catalog/pg_type_d.h:123:9
pub const store_att_byval = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/access/tupmacs.h:202:9
pub const PageXLogRecPtrSet = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:102:9
pub const SizeOfPageHeaderData = @compileError("unable to translate macro: undefined identifier `pd_linp`"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:216:9
pub const PageSetPageSizeAndVersion = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:285:9
pub const PageSetHasFreeLinePointers = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:373:9
pub const PageClearHasFreeLinePointers = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:375:9
pub const PageSetFull = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:380:9
pub const PageClearFull = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:382:9
pub const PageSetAllVisible = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:387:9
pub const PageClearAllVisible = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:389:9
pub const PageSetPrunable = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:392:9
pub const PageClearPrunable = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/storage/bufpage.h:399:9
pub const SizeofHeapTupleHeader = @compileError("unable to translate macro: undefined identifier `t_bits`"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:184:9
pub const HeapTupleHeaderSetXmin = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:319:9
pub const HeapTupleHeaderSetXminCommitted = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:340:9
pub const HeapTupleHeaderSetXminInvalid = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:346:9
pub const HeapTupleHeaderSetXminFrozen = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:352:9
pub const HeapTupleHeaderSetXmax = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:380:9
pub const HeapTupleHeaderSetCmin = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:397:9
pub const HeapTupleHeaderSetCmax = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:405:9
pub const HeapTupleHeaderSetXvac = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:423:9
pub const HeapTupleHeaderSetTypeId = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:462:9
pub const HeapTupleHeaderSetTypMod = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:472:9
pub const HeapTupleHeaderSetHotUpdated = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:490:9
pub const HeapTupleHeaderClearHotUpdated = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:495:9
pub const HeapTupleHeaderSetHeapOnly = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:505:9
pub const HeapTupleHeaderClearHeapOnly = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:510:9
pub const HeapTupleHeaderSetMatch = @compileError("unable to translate C expr: expected ')' instead got '|='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:520:9
pub const HeapTupleHeaderClearMatch = @compileError("unable to translate C expr: expected ')' instead got '&='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:525:9
pub const HeapTupleHeaderSetNatts = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:533:9
pub const MINIMAL_TUPLE_OFFSET = @compileError("unable to translate macro: undefined identifier `t_infomask2`"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:618:9
pub const MINIMAL_TUPLE_PADDING = @compileError("unable to translate macro: undefined identifier `t_infomask2`"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:620:9
pub const MINIMAL_TUPLE_DATA_OFFSET = @compileError("unable to translate macro: undefined identifier `t_infomask2`"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:622:9
pub const SizeofMinimalTupleHeader = @compileError("unable to translate macro: undefined identifier `t_bits`"); // /home/sarna/repo/pgturso/postgres/src/include/access/htup_details.h:648:9
pub const INSTR_TIME_SET_ZERO = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/portability/instr_time.h:90:9
pub const INSTR_TIME_ADD = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/portability/instr_time.h:94:9
pub const INSTR_TIME_SUBTRACT = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/portability/instr_time.h:106:9
pub const INSTR_TIME_ACCUM_DIFF = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/portability/instr_time.h:118:9
pub const INSTR_TIME_SET_CURRENT_LAZY = @compileError("unable to translate C expr: expected ':' instead got ','"); // /home/sarna/repo/pgturso/postgres/src/include/portability/instr_time.h:253:9
pub const SizeForFunctionCallInfo = @compileError("unable to translate macro: undefined identifier `args`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:102:9
pub const LOCAL_FCINFO = @compileError("unable to translate macro: undefined identifier `fcinfo`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:110:9
pub const fmgr_info_set_expr = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:135:9
pub const InitFunctionCallInfoData = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:150:9
pub const PG_FUNCTION_ARGS = @compileError("unable to translate macro: undefined identifier `fcinfo`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:193:9
pub const PG_GET_COLLATION = @compileError("unable to translate macro: undefined identifier `fcinfo`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:198:9
pub const PG_NARGS = @compileError("unable to translate macro: undefined identifier `fcinfo`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:203:9
pub const PG_ARGISNULL = @compileError("unable to translate macro: undefined identifier `fcinfo`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:209:9
pub const PG_FREE_IF_COPY = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:260:9
pub const PG_GETARG_DATUM = @compileError("unable to translate macro: undefined identifier `fcinfo`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:268:9
pub const PG_HAS_OPCLASS_OPTIONS = @compileError("unable to translate macro: undefined identifier `fcinfo`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:341:9
pub const PG_GET_OPCLASS_OPTIONS = @compileError("unable to translate macro: undefined identifier `fcinfo`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:342:9
pub const PG_RETURN_NULL = @compileError("unable to translate macro: undefined identifier `fcinfo`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:345:9
pub const PG_RETURN_VOID = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:349:9
pub const PG_RETURN_DATUM = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:353:9
pub const PG_RETURN_INT32 = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:354:9
pub const PG_RETURN_UINT32 = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:355:9
pub const PG_RETURN_INT16 = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:356:9
pub const PG_RETURN_UINT16 = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:357:9
pub const PG_RETURN_CHAR = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:358:9
pub const PG_RETURN_BOOL = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:359:9
pub const PG_RETURN_OID = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:360:9
pub const PG_RETURN_POINTER = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:361:9
pub const PG_RETURN_CSTRING = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:362:9
pub const PG_RETURN_NAME = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:363:9
pub const PG_RETURN_TRANSACTIONID = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:364:9
pub const PG_RETURN_FLOAT4 = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:366:9
pub const PG_RETURN_FLOAT8 = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:367:9
pub const PG_RETURN_INT64 = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:368:9
pub const PG_RETURN_UINT64 = @compileError("unable to translate C expr: unexpected token 'return'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:369:9
pub const PG_RETURN_HEAPTUPLEHEADER = @compileError("unable to translate macro: undefined identifier `HeapTupleHeaderGetDatum`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:375:9
pub const PG_FUNCTION_INFO_V1 = @compileError("unable to translate macro: undefined identifier `pg_finfo_`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:415:9
pub const PG_MODULE_MAGIC_DATA = @compileError("unable to translate C expr: unexpected token '{'"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:465:9
pub const PG_MODULE_MAGIC = @compileError("unable to translate macro: undefined identifier `Pg_magic_data`"); // /home/sarna/repo/pgturso/postgres/src/include/fmgr.h:488:9
pub const DLIST_STATIC_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:248:9
pub const SLIST_STATIC_INIT = @compileError("unable to translate C expr: unexpected token '{'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:249:9
pub const dlist_container = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:496:9
pub const dlist_head_element = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:506:9
pub const dlist_tail_element = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:515:9
pub const dlist_foreach = @compileError("unable to translate C expr: unexpected token 'for'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:526:9
pub const dlist_foreach_modify = @compileError("unable to translate C expr: unexpected token 'for'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:543:9
pub const dlist_reverse_foreach = @compileError("unable to translate C expr: unexpected token 'for'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:557:9
pub const slist_container = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:693:9
pub const slist_head_element = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:703:9
pub const slist_foreach = @compileError("unable to translate C expr: unexpected token 'for'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:719:9
pub const slist_foreach_modify = @compileError("unable to translate C expr: unexpected token 'for'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/ilist.h:735:9
pub const appendStringInfoCharMacro = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/lib/stringinfo.h:128:9
pub const pairingheap_container = @compileError("unable to translate C expr: unexpected token ')'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/pairingheap.h:43:9
pub const pairingheap_const_container = @compileError("unable to translate C expr: unexpected token 'const'"); // /home/sarna/repo/pgturso/postgres/src/include/lib/pairingheap.h:51:9
pub const pairingheap_reset = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/lib/pairingheap.h:93:9
pub const pg_memory_barrier_impl = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/arch-x86.h:39:9
pub const pg_compiler_barrier_impl = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /home/sarna/repo/pgturso/postgres/src/include/port/atomics/generic-gcc.h:30:9
pub const S_UNLOCK = @compileError("unable to translate macro: undefined identifier `__asm__`"); // /home/sarna/repo/pgturso/postgres/src/include/storage/s_lock.h:801:9
pub const S_LOCK = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // /home/sarna/repo/pgturso/postgres/src/include/storage/s_lock.h:1018:9
pub const init_local_spin_delay = @compileError("unable to translate macro: undefined identifier `__FILE__`"); // /home/sarna/repo/pgturso/postgres/src/include/storage/s_lock.h:1106:9
pub const d_fileno = @compileError("unable to translate macro: undefined identifier `d_ino`"); // /usr/include/bits/dirent.h:47:9
pub const TIMESTAMP_NOBEGIN = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/datatype/timestamp.h:151:9
pub const TIMESTAMP_NOEND = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/datatype/timestamp.h:156:9
pub const AssertPendingSyncs_RelationCache = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/relcache.h:133:9
pub const index_getattr = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/access/itup.h:100:9
pub const SH_PREFIX = @compileError("unable to translate macro: undefined identifier `tuplehash`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/execnodes.h:786:9
pub const SH_SCOPE = @compileError("unable to translate C expr: unexpected token 'extern'"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/execnodes.h:789:9
pub const SH_TYPE = @compileError("unable to translate macro: undefined identifier `hash`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:106:9
pub const SH_STATUS = @compileError("unable to translate macro: undefined identifier `status`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:107:9
pub const SH_STATUS_EMPTY = @compileError("unable to translate macro: undefined identifier `SH_EMPTY`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:108:9
pub const SH_STATUS_IN_USE = @compileError("unable to translate macro: undefined identifier `SH_IN_USE`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:109:9
pub const SH_ITERATOR = @compileError("unable to translate macro: undefined identifier `iterator`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:110:9
pub const SH_CREATE = @compileError("unable to translate macro: undefined identifier `create`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:113:9
pub const SH_DESTROY = @compileError("unable to translate macro: undefined identifier `destroy`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:114:9
pub const SH_RESET = @compileError("unable to translate macro: undefined identifier `reset`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:115:9
pub const SH_INSERT = @compileError("unable to translate macro: undefined identifier `insert`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:116:9
pub const SH_INSERT_HASH = @compileError("unable to translate macro: undefined identifier `insert_hash`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:117:9
pub const SH_DELETE_ITEM = @compileError("unable to translate macro: undefined identifier `delete_item`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:118:9
pub const SH_DELETE = @compileError("unable to translate macro: undefined identifier `delete`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:119:9
pub const SH_LOOKUP = @compileError("unable to translate macro: undefined identifier `lookup`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:120:9
pub const SH_LOOKUP_HASH = @compileError("unable to translate macro: undefined identifier `lookup_hash`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:121:9
pub const SH_GROW = @compileError("unable to translate macro: undefined identifier `grow`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:122:9
pub const SH_START_ITERATE = @compileError("unable to translate macro: undefined identifier `start_iterate`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:123:9
pub const SH_START_ITERATE_AT = @compileError("unable to translate macro: undefined identifier `start_iterate_at`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:124:9
pub const SH_ITERATE = @compileError("unable to translate macro: undefined identifier `iterate`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:125:9
pub const SH_ALLOCATE = @compileError("unable to translate macro: undefined identifier `allocate`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:126:9
pub const SH_COMPUTE_PARAMETERS = @compileError("unable to translate macro: undefined identifier `compute_parameters`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:131:9
pub const SH_NEXT = @compileError("unable to translate macro: undefined identifier `next`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:132:9
pub const SH_PREV = @compileError("unable to translate macro: undefined identifier `prev`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:133:9
pub const SH_DISTANCE_FROM_OPTIMAL = @compileError("unable to translate macro: undefined identifier `distance`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:134:9
pub const SH_INITIAL_BUCKET = @compileError("unable to translate macro: undefined identifier `initial_bucket`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:135:9
pub const SH_ENTRY_HASH = @compileError("unable to translate macro: undefined identifier `entry_hash`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:136:9
pub const SH_INSERT_HASH_INTERNAL = @compileError("unable to translate macro: undefined identifier `insert_hash_internal`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:137:9
pub const SH_LOOKUP_HASH_INTERNAL = @compileError("unable to translate macro: undefined identifier `lookup_hash_internal`"); // /home/sarna/repo/pgturso/postgres/src/include/lib/simplehash.h:138:9
pub const InstrCountTuples2 = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/execnodes.h:1120:9
pub const InstrCountFiltered1 = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/execnodes.h:1125:9
pub const InstrCountFiltered2 = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/execnodes.h:1130:9
pub const PG_CMDTAG = @compileError("unable to translate C expr: unexpected token 'Eof'"); // /home/sarna/repo/pgturso/postgres/src/include/tcop/cmdtag.h:17:9
pub const MemoryContextIsValid = @compileError("unable to translate macro: undefined identifier `AllocSetContext`"); // /home/sarna/repo/pgturso/postgres/src/include/nodes/memnodes.h:104:9
pub const AllocSetContextCreate = @compileError("unable to translate C expr: expected ')' instead got '...'"); // /home/sarna/repo/pgturso/postgres/src/include/utils/memutils.h:168:9
pub const EvalPlanQualSetSlot = @compileError("unable to translate C expr: expected ')' instead got '='"); // /home/sarna/repo/pgturso/postgres/src/include/executor/executor.h:229:9
pub const do_text_output_oneline = @compileError("unable to translate macro: undefined identifier `values_`"); // /home/sarna/repo/pgturso/postgres/src/include/executor/executor.h:507:9
pub const ResetPerTupleExprContext = @compileError("unable to translate C expr: unexpected token 'do'"); // /home/sarna/repo/pgturso/postgres/src/include/executor/executor.h:544:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 16);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 1);
pub const __clang_version__ = "16.0.1 (https://github.com/ziglang/zig-bootstrap bf1b2cdb83141ad9336eec42160c9fe87f90198d)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 16.0.1 (https://github.com/ziglang/zig-bootstrap bf1b2cdb83141ad9336eec42160c9fe87f90198d)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __PIE__ = @as(c_int, 2);
pub const __pie__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __corei7 = @as(c_int, 1);
pub const __corei7__ = @as(c_int, 1);
pub const __tune_corei7__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __SGX__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub const POSTGRES_H = "";
pub const C_H = "";
pub const POSTGRES_EXT_H = "";
pub const PG_INT64_TYPE = c_long;
pub const InvalidOid = @import("std").zig.c_translation.cast(Oid, @as(c_int, 0));
pub const OID_MAX = UINT_MAX;
pub inline fn atooid(x: anytype) Oid {
    return @import("std").zig.c_translation.cast(Oid, strtoul(x, NULL, @as(c_int, 10)));
}
pub const PG_DIAG_SEVERITY = 'S';
pub const PG_DIAG_SEVERITY_NONLOCALIZED = 'V';
pub const PG_DIAG_SQLSTATE = 'C';
pub const PG_DIAG_MESSAGE_PRIMARY = 'M';
pub const PG_DIAG_MESSAGE_DETAIL = 'D';
pub const PG_DIAG_MESSAGE_HINT = 'H';
pub const PG_DIAG_STATEMENT_POSITION = 'P';
pub const PG_DIAG_INTERNAL_POSITION = 'p';
pub const PG_DIAG_INTERNAL_QUERY = 'q';
pub const PG_DIAG_CONTEXT = 'W';
pub const PG_DIAG_SCHEMA_NAME = 's';
pub const PG_DIAG_TABLE_NAME = 't';
pub const PG_DIAG_COLUMN_NAME = 'c';
pub const PG_DIAG_DATATYPE_NAME = 'd';
pub const PG_DIAG_CONSTRAINT_NAME = 'n';
pub const PG_DIAG_SOURCE_FILE = 'F';
pub const PG_DIAG_SOURCE_LINE = 'L';
pub const PG_DIAG_SOURCE_FUNCTION = 'R';
pub const ALIGNOF_DOUBLE = @as(c_int, 8);
pub const ALIGNOF_INT = @as(c_int, 4);
pub const ALIGNOF_LONG = @as(c_int, 8);
pub const ALIGNOF_PG_INT128_TYPE = @as(c_int, 16);
pub const ALIGNOF_SHORT = @as(c_int, 2);
pub const BLCKSZ = @as(c_int, 8192);
pub const CONFIGURE_ARGS = "";
pub const DEF_PGPORT = @as(c_int, 5432);
pub const DEF_PGPORT_STR = "5432";
pub const DLSUFFIX = ".so";
pub const ENABLE_THREAD_SAFETY = @as(c_int, 1);
pub const HAVE_APPEND_HISTORY = @as(c_int, 1);
pub const HAVE_ATOMICS = @as(c_int, 1);
pub const HAVE_BACKTRACE_SYMBOLS = @as(c_int, 1);
pub const HAVE_CLOCK_GETTIME = @as(c_int, 1);
pub const HAVE_COMPUTED_GOTO = @as(c_int, 1);
pub const HAVE_DECL_FDATASYNC = @as(c_int, 1);
pub const HAVE_DECL_F_FULLFSYNC = @as(c_int, 0);
pub const HAVE_DECL_POSIX_FADVISE = @as(c_int, 1);
pub const HAVE_DECL_PREADV = @as(c_int, 1);
pub const HAVE_DECL_PWRITEV = @as(c_int, 1);
pub const HAVE_DECL_RTLD_GLOBAL = @as(c_int, 1);
pub const HAVE_DECL_RTLD_NOW = @as(c_int, 1);
pub const HAVE_DECL_SIGWAIT = @as(c_int, 1);
pub const HAVE_DECL_STRLCAT = @as(c_int, 0);
pub const HAVE_DECL_STRLCPY = @as(c_int, 0);
pub const HAVE_DECL_STRNLEN = @as(c_int, 1);
pub const HAVE_DECL_STRTOLL = @as(c_int, 1);
pub const HAVE_DECL_STRTOULL = @as(c_int, 1);
pub const HAVE_DLOPEN = @as(c_int, 1);
pub const HAVE_EXECINFO_H = @as(c_int, 1);
pub const HAVE_EXPLICIT_BZERO = @as(c_int, 1);
pub const HAVE_FDATASYNC = @as(c_int, 1);
pub const HAVE_FSEEKO = @as(c_int, 1);
pub const HAVE_FUNCNAME__FUNC = @as(c_int, 1);
pub const HAVE_GCC__ATOMIC_INT32_CAS = @as(c_int, 1);
pub const HAVE_GCC__ATOMIC_INT64_CAS = @as(c_int, 1);
pub const HAVE_GCC__SYNC_CHAR_TAS = @as(c_int, 1);
pub const HAVE_GCC__SYNC_INT32_CAS = @as(c_int, 1);
pub const HAVE_GCC__SYNC_INT32_TAS = @as(c_int, 1);
pub const HAVE_GCC__SYNC_INT64_CAS = @as(c_int, 1);
pub const HAVE_GETADDRINFO = @as(c_int, 1);
pub const HAVE_GETHOSTBYNAME_R = @as(c_int, 1);
pub const HAVE_GETIFADDRS = @as(c_int, 1);
pub const HAVE_GETOPT = @as(c_int, 1);
pub const HAVE_GETOPT_H = @as(c_int, 1);
pub const HAVE_GETOPT_LONG = @as(c_int, 1);
pub const HAVE_GETPWUID_R = @as(c_int, 1);
pub const HAVE_GETRLIMIT = @as(c_int, 1);
pub const HAVE_GETRUSAGE = @as(c_int, 1);
pub const HAVE_HISTORY_TRUNCATE_FILE = @as(c_int, 1);
pub const HAVE_IFADDRS_H = @as(c_int, 1);
pub const HAVE_INET_ATON = @as(c_int, 1);
pub const HAVE_INET_PTON = @as(c_int, 1);
pub const HAVE_INTTYPES_H = @as(c_int, 1);
pub const HAVE_INT_OPTERR = @as(c_int, 1);
pub const HAVE_INT_TIMEZONE = @as(c_int, 1);
pub const HAVE_IPV6 = @as(c_int, 1);
pub const HAVE_LANGINFO_H = @as(c_int, 1);
pub const HAVE_LIBM = @as(c_int, 1);
pub const HAVE_LIBREADLINE = @as(c_int, 1);
pub const HAVE_LIBZ = @as(c_int, 1);
pub const HAVE_LINK = @as(c_int, 1);
pub const HAVE_LOCALE_T = @as(c_int, 1);
pub const HAVE_LONG_INT_64 = @as(c_int, 1);
pub const HAVE_MEMORY_H = @as(c_int, 1);
pub const HAVE_MKDTEMP = @as(c_int, 1);
pub const HAVE_NETINET_TCP_H = @as(c_int, 1);
pub const HAVE_NET_IF_H = @as(c_int, 1);
pub const HAVE_POLL = @as(c_int, 1);
pub const HAVE_POLL_H = @as(c_int, 1);
pub const HAVE_POSIX_DECL_SIGWAIT = @as(c_int, 1);
pub const HAVE_POSIX_FADVISE = @as(c_int, 1);
pub const HAVE_POSIX_FALLOCATE = @as(c_int, 1);
pub const HAVE_PPOLL = @as(c_int, 1);
pub const HAVE_PREAD = @as(c_int, 1);
pub const HAVE_PTHREAD = @as(c_int, 1);
pub const HAVE_PTHREAD_BARRIER_WAIT = @as(c_int, 1);
pub const HAVE_PTHREAD_PRIO_INHERIT = @as(c_int, 1);
pub const HAVE_PWRITE = @as(c_int, 1);
pub const HAVE_READLINE_HISTORY_H = @as(c_int, 1);
pub const HAVE_READLINE_READLINE_H = @as(c_int, 1);
pub const HAVE_READLINK = @as(c_int, 1);
pub const HAVE_READV = @as(c_int, 1);
pub const HAVE_RL_COMPLETION_MATCHES = @as(c_int, 1);
pub const HAVE_RL_COMPLETION_SUPPRESS_QUOTE = @as(c_int, 1);
pub const HAVE_RL_FILENAME_COMPLETION_FUNCTION = @as(c_int, 1);
pub const HAVE_RL_FILENAME_QUOTE_CHARACTERS = @as(c_int, 1);
pub const HAVE_RL_FILENAME_QUOTING_FUNCTION = @as(c_int, 1);
pub const HAVE_RL_RESET_SCREEN_SIZE = @as(c_int, 1);
pub const HAVE_RL_VARIABLE_BIND = @as(c_int, 1);
pub const HAVE_SETENV = @as(c_int, 1);
pub const HAVE_SETSID = @as(c_int, 1);
pub const HAVE_SHM_OPEN = @as(c_int, 1);
pub const HAVE_SOCKLEN_T = @as(c_int, 1);
pub const HAVE_SPINLOCKS = @as(c_int, 1);
pub const HAVE_STDBOOL_H = @as(c_int, 1);
pub const HAVE_STDINT_H = @as(c_int, 1);
pub const HAVE_STDLIB_H = @as(c_int, 1);
pub const HAVE_STRCHRNUL = @as(c_int, 1);
pub const HAVE_STRERROR_R = @as(c_int, 1);
pub const HAVE_STRINGS_H = @as(c_int, 1);
pub const HAVE_STRING_H = @as(c_int, 1);
pub const HAVE_STRNLEN = @as(c_int, 1);
pub const HAVE_STRSIGNAL = @as(c_int, 1);
pub const HAVE_STRTOF = @as(c_int, 1);
pub const HAVE_STRTOLL = @as(c_int, 1);
pub const HAVE_STRTOULL = @as(c_int, 1);
pub const HAVE_STRUCT_ADDRINFO = @as(c_int, 1);
pub const HAVE_STRUCT_OPTION = @as(c_int, 1);
pub const HAVE_STRUCT_SOCKADDR_STORAGE = @as(c_int, 1);
pub const HAVE_STRUCT_SOCKADDR_STORAGE_SS_FAMILY = @as(c_int, 1);
pub const HAVE_STRUCT_SOCKADDR_UN = @as(c_int, 1);
pub const HAVE_STRUCT_TM_TM_ZONE = @as(c_int, 1);
pub const HAVE_SYMLINK = @as(c_int, 1);
pub const HAVE_SYNCFS = @as(c_int, 1);
pub const HAVE_SYNC_FILE_RANGE = @as(c_int, 1);
pub const HAVE_SYSLOG = @as(c_int, 1);
pub const HAVE_SYS_EPOLL_H = @as(c_int, 1);
pub const HAVE_SYS_IPC_H = @as(c_int, 1);
pub const HAVE_SYS_PERSONALITY_H = @as(c_int, 1);
pub const HAVE_SYS_PRCTL_H = @as(c_int, 1);
pub const HAVE_SYS_RESOURCE_H = @as(c_int, 1);
pub const HAVE_SYS_SELECT_H = @as(c_int, 1);
pub const HAVE_SYS_SEM_H = @as(c_int, 1);
pub const HAVE_SYS_SHM_H = @as(c_int, 1);
pub const HAVE_SYS_SIGNALFD_H = @as(c_int, 1);
pub const HAVE_SYS_STAT_H = @as(c_int, 1);
pub const HAVE_SYS_TYPES_H = @as(c_int, 1);
pub const HAVE_SYS_UIO_H = @as(c_int, 1);
pub const HAVE_SYS_UN_H = @as(c_int, 1);
pub const HAVE_TERMIOS_H = @as(c_int, 1);
pub const HAVE_TYPEOF = @as(c_int, 1);
pub const HAVE_UNISTD_H = @as(c_int, 1);
pub const HAVE_UNSETENV = @as(c_int, 1);
pub const HAVE_USELOCALE = @as(c_int, 1);
pub const HAVE_WCTYPE_H = @as(c_int, 1);
pub const HAVE_WRITEV = @as(c_int, 1);
pub const HAVE_X86_64_POPCNTQ = @as(c_int, 1);
pub const HAVE__BOOL = @as(c_int, 1);
pub const HAVE__BUILTIN_BSWAP16 = @as(c_int, 1);
pub const HAVE__BUILTIN_BSWAP32 = @as(c_int, 1);
pub const HAVE__BUILTIN_BSWAP64 = @as(c_int, 1);
pub const HAVE__BUILTIN_CLZ = @as(c_int, 1);
pub const HAVE__BUILTIN_CONSTANT_P = @as(c_int, 1);
pub const HAVE__BUILTIN_CTZ = @as(c_int, 1);
pub const HAVE__BUILTIN_FRAME_ADDRESS = @as(c_int, 1);
pub const HAVE__BUILTIN_OP_OVERFLOW = @as(c_int, 1);
pub const HAVE__BUILTIN_POPCOUNT = @as(c_int, 1);
pub const HAVE__BUILTIN_TYPES_COMPATIBLE_P = @as(c_int, 1);
pub const HAVE__BUILTIN_UNREACHABLE = @as(c_int, 1);
pub const HAVE__GET_CPUID = @as(c_int, 1);
pub const HAVE__STATIC_ASSERT = @as(c_int, 1);
pub const INT64_MODIFIER = "l";
pub const MAXIMUM_ALIGNOF = @as(c_int, 8);
pub const MEMSET_LOOP_LIMIT = @as(c_int, 1024);
pub const PACKAGE_BUGREPORT = "pgsql-bugs@lists.postgresql.org";
pub const PACKAGE_NAME = "PostgreSQL";
pub const PACKAGE_STRING = "PostgreSQL 15.3";
pub const PACKAGE_TARNAME = "postgresql";
pub const PACKAGE_URL = "https://www.postgresql.org/";
pub const PACKAGE_VERSION = "15.3";
pub const PG_KRB_SRVNAM = "postgres";
pub const PG_MAJORVERSION = "15";
pub const PG_MAJORVERSION_NUM = @as(c_int, 15);
pub const PG_MINORVERSION_NUM = @as(c_int, 3);
pub const PG_USE_STDBOOL = @as(c_int, 1);
pub const PG_VERSION = "15.3";
pub const PG_VERSION_NUM = @import("std").zig.c_translation.promoteIntLiteral(c_int, 150003, .decimal);
pub const PG_VERSION_STR = "PostgreSQL 15.3 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 13.1.1 20230429, 64-bit";
pub const RELSEG_SIZE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const SIZEOF_BOOL = @as(c_int, 1);
pub const SIZEOF_LONG = @as(c_int, 8);
pub const SIZEOF_OFF_T = @as(c_int, 8);
pub const SIZEOF_SIZE_T = @as(c_int, 8);
pub const SIZEOF_VOID_P = @as(c_int, 8);
pub const STDC_HEADERS = @as(c_int, 1);
pub const USE_SSE42_CRC32C_WITH_RUNTIME_CHECK = @as(c_int, 1);
pub const USE_SYSV_SHARED_MEMORY = @as(c_int, 1);
pub const USE_UNNAMED_POSIX_SEMAPHORES = @as(c_int, 1);
pub const XLOG_BLCKSZ = @as(c_int, 8192);
pub const DEFAULT_XLOG_SEG_SIZE = (@as(c_int, 16) * @as(c_int, 1024)) * @as(c_int, 1024);
pub const NAMEDATALEN = @as(c_int, 64);
pub const FUNC_MAX_ARGS = @as(c_int, 100);
pub const FMGR_ABI_EXTRA = "PostgreSQL";
pub const INDEX_MAX_KEYS = @as(c_int, 32);
pub const PARTITION_MAX_KEYS = @as(c_int, 32);
pub const USE_FLOAT8_BYVAL = @as(c_int, 1);
pub const NUM_SPINLOCK_SEMAPHORES = @as(c_int, 128);
pub const NUM_ATOMICS_SEMAPHORES = @as(c_int, 64);
pub const MAXPGPATH = @as(c_int, 1024);
pub const PG_SOMAXCONN = @as(c_int, 10000);
pub const BITS_PER_BYTE = @as(c_int, 8);
pub const ALIGNOF_BUFFER = @as(c_int, 32);
pub const HAVE_WORKING_LINK = @as(c_int, 1);
pub const USE_POSIX_FADVISE = "";
pub const USE_PREFETCH = "";
pub const DEFAULT_BACKEND_FLUSH_AFTER = @as(c_int, 0);
pub const DEFAULT_BGWRITER_FLUSH_AFTER = @as(c_int, 64);
pub const DEFAULT_CHECKPOINT_FLUSH_AFTER = @as(c_int, 32);
pub const WRITEBACK_MAX_PENDING_FLUSHES = @as(c_int, 256);
pub const DEFAULT_PGSOCKET_DIR = "/tmp";
pub const DEFAULT_EVENT_SOURCE = "PostgreSQL";
pub const PG_CACHE_LINE_SIZE = @as(c_int, 128);
pub const TRACE_SORT = @as(c_int, 1);
pub const HAVE_LINUX_EIDRM_BUG = "";
pub const _STDIO_H = @as(c_int, 1);
pub const __GLIBC_INTERNAL_STARTING_HEADER_IMPLEMENTATION = "";
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__clang_major__ << @as(c_int, 16)) + __clang_minor__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2X = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 200809);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 37);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__has_builtin(name)) {
    return __has_builtin(name);
}
pub const __LEAF = "";
pub const __LEAF_ATTR = "";
pub inline fn __P(args: anytype) @TypeOf(args) {
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    return args;
}
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    return __builtin_object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin_object_size(ptr, @as(c_int, 0))) {
    return __builtin_object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    return __bos(__o);
}
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub inline fn __ASMNAME(cname: anytype) @TypeOf(__ASMNAME2(__USER_LABEL_PREFIX__, cname)) {
    return __ASMNAME2(__USER_LABEL_PREFIX__, cname);
}
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    return __attribute_nonnull__(params);
}
pub const __wur = "";
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 0))) {
    return __builtin_expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin_expect(cond, @as(c_int, 1))) {
    return __builtin_expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = @TypeOf(alias);
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = @TypeOf(alias);
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    return name ++ proto ++ __THROW;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __attr_dealloc_free = "";
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const __need_size_t = "";
pub const __need_NULL = "";
pub const _SIZE_T = "";
pub const NULL = @import("std").zig.c_translation.cast(?*anyopaque, @as(c_int, 0));
pub const __need___va_list = "";
pub const __GNUC_VA_LIST = "";
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _____fpos_t_defined = @as(c_int, 1);
pub const ____mbstate_t_defined = @as(c_int, 1);
pub const _____fpos64_t_defined = @as(c_int, 1);
pub const ____FILE_defined = @as(c_int, 1);
pub const __FILE_defined = @as(c_int, 1);
pub const __struct_FILE_defined = @as(c_int, 1);
pub const _IO_EOF_SEEN = @as(c_int, 0x0010);
pub inline fn __feof_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_EOF_SEEN) != @as(c_int, 0);
}
pub const _IO_ERR_SEEN = @as(c_int, 0x0020);
pub inline fn __ferror_unlocked_body(_fp: anytype) @TypeOf((_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0)) {
    return (_fp.*._flags & _IO_ERR_SEEN) != @as(c_int, 0);
}
pub const _IO_USER_LOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const _VA_LIST_DEFINED = "";
pub const __off_t_defined = "";
pub const __ssize_t_defined = "";
pub const _IOFBF = @as(c_int, 0);
pub const _IOLBF = @as(c_int, 1);
pub const _IONBF = @as(c_int, 2);
pub const BUFSIZ = @as(c_int, 8192);
pub const EOF = -@as(c_int, 1);
pub const SEEK_SET = @as(c_int, 0);
pub const SEEK_CUR = @as(c_int, 1);
pub const SEEK_END = @as(c_int, 2);
pub const P_tmpdir = "/tmp";
pub const _BITS_STDIO_LIM_H = @as(c_int, 1);
pub const L_tmpnam = @as(c_int, 20);
pub const TMP_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 238328, .decimal);
pub const FILENAME_MAX = @as(c_int, 4096);
pub const L_ctermid = @as(c_int, 9);
pub const FOPEN_MAX = @as(c_int, 16);
pub const __attr_dealloc_fclose = __attr_dealloc(fclose, @as(c_int, 1));
pub const _BITS_FLOATN_H = "";
pub const __HAVE_FLOAT128 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128 = @as(c_int, 0);
pub const __HAVE_FLOAT64X = @as(c_int, 1);
pub const __HAVE_FLOAT64X_LONG_DOUBLE = @as(c_int, 1);
pub const _BITS_FLOATN_COMMON_H = "";
pub const __HAVE_FLOAT16 = @as(c_int, 0);
pub const __HAVE_FLOAT32 = @as(c_int, 1);
pub const __HAVE_FLOAT64 = @as(c_int, 1);
pub const __HAVE_FLOAT32X = @as(c_int, 1);
pub const __HAVE_FLOAT128X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT16 = __HAVE_FLOAT16;
pub const __HAVE_DISTINCT_FLOAT32 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64 = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT32X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT64X = @as(c_int, 0);
pub const __HAVE_DISTINCT_FLOAT128X = __HAVE_FLOAT128X;
pub const __HAVE_FLOAT128_UNLIKE_LDBL = (__HAVE_DISTINCT_FLOAT128 != 0) and (__LDBL_MANT_DIG__ != @as(c_int, 113));
pub const __HAVE_FLOATN_NOT_TYPEDEF = @as(c_int, 0);
pub const __f32 = @import("std").zig.c_translation.Macros.F_SUFFIX;
pub inline fn __f64(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn __f32x(x: anytype) @TypeOf(x) {
    return x;
}
pub const __f64x = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn __builtin_huge_valf32() @TypeOf(__builtin_huge_valf()) {
    return __builtin_huge_valf();
}
pub inline fn __builtin_inff32() @TypeOf(__builtin_inff()) {
    return __builtin_inff();
}
pub inline fn __builtin_nanf32(x: anytype) @TypeOf(__builtin_nanf(x)) {
    return __builtin_nanf(x);
}
pub const __need_wchar_t = "";
pub const _WCHAR_T = "";
pub const _STDLIB_H = @as(c_int, 1);
pub const WNOHANG = @as(c_int, 1);
pub const WUNTRACED = @as(c_int, 2);
pub const WSTOPPED = @as(c_int, 2);
pub const WEXITED = @as(c_int, 4);
pub const WCONTINUED = @as(c_int, 8);
pub const WNOWAIT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x01000000, .hexadecimal);
pub const __WNOTHREAD = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000000, .hexadecimal);
pub const __WALL = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x40000000, .hexadecimal);
pub const __WCLONE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal);
pub inline fn __WEXITSTATUS(status: anytype) @TypeOf((status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8)) {
    return (status & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xff00, .hexadecimal)) >> @as(c_int, 8);
}
pub inline fn __WTERMSIG(status: anytype) @TypeOf(status & @as(c_int, 0x7f)) {
    return status & @as(c_int, 0x7f);
}
pub inline fn __WSTOPSIG(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn __WIFEXITED(status: anytype) @TypeOf(__WTERMSIG(status) == @as(c_int, 0)) {
    return __WTERMSIG(status) == @as(c_int, 0);
}
pub inline fn __WIFSIGNALED(status: anytype) @TypeOf((@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0)) {
    return (@import("std").zig.c_translation.cast(i8, (status & @as(c_int, 0x7f)) + @as(c_int, 1)) >> @as(c_int, 1)) > @as(c_int, 0);
}
pub inline fn __WIFSTOPPED(status: anytype) @TypeOf((status & @as(c_int, 0xff)) == @as(c_int, 0x7f)) {
    return (status & @as(c_int, 0xff)) == @as(c_int, 0x7f);
}
pub inline fn __WIFCONTINUED(status: anytype) @TypeOf(status == __W_CONTINUED) {
    return status == __W_CONTINUED;
}
pub inline fn __WCOREDUMP(status: anytype) @TypeOf(status & __WCOREFLAG) {
    return status & __WCOREFLAG;
}
pub inline fn __W_EXITCODE(ret: anytype, sig: anytype) @TypeOf((ret << @as(c_int, 8)) | sig) {
    return (ret << @as(c_int, 8)) | sig;
}
pub inline fn __W_STOPCODE(sig: anytype) @TypeOf((sig << @as(c_int, 8)) | @as(c_int, 0x7f)) {
    return (sig << @as(c_int, 8)) | @as(c_int, 0x7f);
}
pub const __W_CONTINUED = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xffff, .hexadecimal);
pub const __WCOREFLAG = @as(c_int, 0x80);
pub inline fn WEXITSTATUS(status: anytype) @TypeOf(__WEXITSTATUS(status)) {
    return __WEXITSTATUS(status);
}
pub inline fn WTERMSIG(status: anytype) @TypeOf(__WTERMSIG(status)) {
    return __WTERMSIG(status);
}
pub inline fn WSTOPSIG(status: anytype) @TypeOf(__WSTOPSIG(status)) {
    return __WSTOPSIG(status);
}
pub inline fn WIFEXITED(status: anytype) @TypeOf(__WIFEXITED(status)) {
    return __WIFEXITED(status);
}
pub inline fn WIFSIGNALED(status: anytype) @TypeOf(__WIFSIGNALED(status)) {
    return __WIFSIGNALED(status);
}
pub inline fn WIFSTOPPED(status: anytype) @TypeOf(__WIFSTOPPED(status)) {
    return __WIFSTOPPED(status);
}
pub inline fn WIFCONTINUED(status: anytype) @TypeOf(__WIFCONTINUED(status)) {
    return __WIFCONTINUED(status);
}
pub const __ldiv_t_defined = @as(c_int, 1);
pub const __lldiv_t_defined = @as(c_int, 1);
pub const RAND_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const EXIT_FAILURE = @as(c_int, 1);
pub const EXIT_SUCCESS = @as(c_int, 0);
pub const MB_CUR_MAX = __ctype_get_mb_cur_max();
pub const _SYS_TYPES_H = @as(c_int, 1);
pub const __u_char_defined = "";
pub const __ino_t_defined = "";
pub const __dev_t_defined = "";
pub const __gid_t_defined = "";
pub const __mode_t_defined = "";
pub const __nlink_t_defined = "";
pub const __uid_t_defined = "";
pub const __pid_t_defined = "";
pub const __id_t_defined = "";
pub const __daddr_t_defined = "";
pub const __key_t_defined = "";
pub const __clock_t_defined = @as(c_int, 1);
pub const __clockid_t_defined = @as(c_int, 1);
pub const __time_t_defined = @as(c_int, 1);
pub const __timer_t_defined = @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const __BIT_TYPES_DEFINED__ = @as(c_int, 1);
pub const _ENDIAN_H = @as(c_int, 1);
pub const _BITS_ENDIAN_H = @as(c_int, 1);
pub const __LITTLE_ENDIAN = @as(c_int, 1234);
pub const __BIG_ENDIAN = @as(c_int, 4321);
pub const __PDP_ENDIAN = @as(c_int, 3412);
pub const _BITS_ENDIANNESS_H = @as(c_int, 1);
pub const __BYTE_ORDER = __LITTLE_ENDIAN;
pub const __FLOAT_WORD_ORDER = __BYTE_ORDER;
pub inline fn __LONG_LONG_PAIR(HI: anytype, LO: anytype) @TypeOf(HI) {
    return blk: {
        _ = @TypeOf(LO);
        break :blk HI;
    };
}
pub const LITTLE_ENDIAN = __LITTLE_ENDIAN;
pub const BIG_ENDIAN = __BIG_ENDIAN;
pub const PDP_ENDIAN = __PDP_ENDIAN;
pub const BYTE_ORDER = __BYTE_ORDER;
pub const _BITS_BYTESWAP_H = @as(c_int, 1);
pub inline fn __bswap_constant_16(x: anytype) __uint16_t {
    return @import("std").zig.c_translation.cast(__uint16_t, ((x >> @as(c_int, 8)) & @as(c_int, 0xff)) | ((x & @as(c_int, 0xff)) << @as(c_int, 8)));
}
pub inline fn __bswap_constant_32(x: anytype) @TypeOf(((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24))) {
    return ((((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xff000000, .hexadecimal)) >> @as(c_int, 24)) | ((x & @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0x00ff0000, .hexadecimal)) >> @as(c_int, 8))) | ((x & @as(c_uint, 0x0000ff00)) << @as(c_int, 8))) | ((x & @as(c_uint, 0x000000ff)) << @as(c_int, 24));
}
pub inline fn __bswap_constant_64(x: anytype) @TypeOf(((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56))) {
    return ((((((((x & @as(c_ulonglong, 0xff00000000000000)) >> @as(c_int, 56)) | ((x & @as(c_ulonglong, 0x00ff000000000000)) >> @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x0000ff0000000000)) >> @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000ff00000000)) >> @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x00000000ff000000)) << @as(c_int, 8))) | ((x & @as(c_ulonglong, 0x0000000000ff0000)) << @as(c_int, 24))) | ((x & @as(c_ulonglong, 0x000000000000ff00)) << @as(c_int, 40))) | ((x & @as(c_ulonglong, 0x00000000000000ff)) << @as(c_int, 56));
}
pub const _BITS_UINTN_IDENTITY_H = @as(c_int, 1);
pub inline fn htobe16(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn htole16(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn be16toh(x: anytype) @TypeOf(__bswap_16(x)) {
    return __bswap_16(x);
}
pub inline fn le16toh(x: anytype) @TypeOf(__uint16_identity(x)) {
    return __uint16_identity(x);
}
pub inline fn htobe32(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn htole32(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn be32toh(x: anytype) @TypeOf(__bswap_32(x)) {
    return __bswap_32(x);
}
pub inline fn le32toh(x: anytype) @TypeOf(__uint32_identity(x)) {
    return __uint32_identity(x);
}
pub inline fn htobe64(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn htole64(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub inline fn be64toh(x: anytype) @TypeOf(__bswap_64(x)) {
    return __bswap_64(x);
}
pub inline fn le64toh(x: anytype) @TypeOf(__uint64_identity(x)) {
    return __uint64_identity(x);
}
pub const _SYS_SELECT_H = @as(c_int, 1);
pub inline fn __FD_ISSET(d: anytype, s: anytype) @TypeOf((__FDS_BITS(s)[@intCast(usize, __FD_ELT(d))] & __FD_MASK(d)) != @as(c_int, 0)) {
    return (__FDS_BITS(s)[@intCast(usize, __FD_ELT(d))] & __FD_MASK(d)) != @as(c_int, 0);
}
pub const __sigset_t_defined = @as(c_int, 1);
pub const ____sigset_t_defined = "";
pub const _SIGSET_NWORDS = @import("std").zig.c_translation.MacroArithmetic.div(@as(c_int, 1024), @as(c_int, 8) * @import("std").zig.c_translation.sizeof(c_ulong));
pub const __timeval_defined = @as(c_int, 1);
pub const _STRUCT_TIMESPEC = @as(c_int, 1);
pub const __suseconds_t_defined = "";
pub const __NFDBITS = @as(c_int, 8) * @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(__fd_mask));
pub inline fn __FD_ELT(d: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS)) {
    return @import("std").zig.c_translation.MacroArithmetic.div(d, __NFDBITS);
}
pub inline fn __FD_MASK(d: anytype) __fd_mask {
    return @import("std").zig.c_translation.cast(__fd_mask, @as(c_ulong, 1) << @import("std").zig.c_translation.MacroArithmetic.rem(d, __NFDBITS));
}
pub inline fn __FDS_BITS(set: anytype) @TypeOf(set.*.__fds_bits) {
    return set.*.__fds_bits;
}
pub const FD_SETSIZE = __FD_SETSIZE;
pub const NFDBITS = __NFDBITS;
pub inline fn FD_SET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_SET(fd, fdsetp)) {
    return __FD_SET(fd, fdsetp);
}
pub inline fn FD_CLR(fd: anytype, fdsetp: anytype) @TypeOf(__FD_CLR(fd, fdsetp)) {
    return __FD_CLR(fd, fdsetp);
}
pub inline fn FD_ISSET(fd: anytype, fdsetp: anytype) @TypeOf(__FD_ISSET(fd, fdsetp)) {
    return __FD_ISSET(fd, fdsetp);
}
pub inline fn FD_ZERO(fdsetp: anytype) @TypeOf(__FD_ZERO(fdsetp)) {
    return __FD_ZERO(fdsetp);
}
pub const __blksize_t_defined = "";
pub const __blkcnt_t_defined = "";
pub const __fsblkcnt_t_defined = "";
pub const __fsfilcnt_t_defined = "";
pub const _BITS_PTHREADTYPES_COMMON_H = @as(c_int, 1);
pub const _THREAD_SHARED_TYPES_H = @as(c_int, 1);
pub const _BITS_PTHREADTYPES_ARCH_H = @as(c_int, 1);
pub const __SIZEOF_PTHREAD_MUTEX_T = @as(c_int, 40);
pub const __SIZEOF_PTHREAD_ATTR_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_RWLOCK_T = @as(c_int, 56);
pub const __SIZEOF_PTHREAD_BARRIER_T = @as(c_int, 32);
pub const __SIZEOF_PTHREAD_MUTEXATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_COND_T = @as(c_int, 48);
pub const __SIZEOF_PTHREAD_CONDATTR_T = @as(c_int, 4);
pub const __SIZEOF_PTHREAD_RWLOCKATTR_T = @as(c_int, 8);
pub const __SIZEOF_PTHREAD_BARRIERATTR_T = @as(c_int, 4);
pub const __LOCK_ALIGNMENT = "";
pub const __ONCE_ALIGNMENT = "";
pub const _BITS_ATOMIC_WIDE_COUNTER_H = "";
pub const _THREAD_MUTEX_INTERNAL_H = @as(c_int, 1);
pub const __PTHREAD_MUTEX_HAVE_PREV = @as(c_int, 1);
pub const _RWLOCK_INTERNAL_H = "";
pub inline fn __PTHREAD_RWLOCK_INITIALIZER(__flags: anytype) @TypeOf(__flags) {
    return blk: {
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @as(c_int, 0);
        _ = @TypeOf(__PTHREAD_RWLOCK_ELISION_EXTRA);
        _ = @as(c_int, 0);
        break :blk __flags;
    };
}
pub const __have_pthread_attr_t = @as(c_int, 1);
pub const _ALLOCA_H = @as(c_int, 1);
pub const __COMPAR_FN_T = "";
pub const _STRING_H = @as(c_int, 1);
pub const _BITS_TYPES_LOCALE_T_H = @as(c_int, 1);
pub const _BITS_TYPES___LOCALE_T_H = @as(c_int, 1);
pub const _STRINGS_H = @as(c_int, 1);
pub const __STDDEF_H = "";
pub const __need_ptrdiff_t = "";
pub const __need_STDDEF_H_misc = "";
pub const _PTRDIFF_T = "";
pub const __CLANG_MAX_ALIGN_T_DEFINED = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const __INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(@import("std").zig.c_translation.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    return c;
}
pub const INT64_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    return c;
}
pub const UINT32_C = @import("std").zig.c_translation.Macros.U_SUFFIX;
pub const UINT64_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INTMAX_C = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINTMAX_C = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const _ERRNO_H = @as(c_int, 1);
pub const _BITS_ERRNO_H = @as(c_int, 1);
pub const _ASM_GENERIC_ERRNO_H = "";
pub const _ASM_GENERIC_ERRNO_BASE_H = "";
pub const EPERM = @as(c_int, 1);
pub const ENOENT = @as(c_int, 2);
pub const ESRCH = @as(c_int, 3);
pub const EINTR = @as(c_int, 4);
pub const EIO = @as(c_int, 5);
pub const ENXIO = @as(c_int, 6);
pub const E2BIG = @as(c_int, 7);
pub const ENOEXEC = @as(c_int, 8);
pub const EBADF = @as(c_int, 9);
pub const ECHILD = @as(c_int, 10);
pub const EAGAIN = @as(c_int, 11);
pub const ENOMEM = @as(c_int, 12);
pub const EACCES = @as(c_int, 13);
pub const EFAULT = @as(c_int, 14);
pub const ENOTBLK = @as(c_int, 15);
pub const EBUSY = @as(c_int, 16);
pub const EEXIST = @as(c_int, 17);
pub const EXDEV = @as(c_int, 18);
pub const ENODEV = @as(c_int, 19);
pub const ENOTDIR = @as(c_int, 20);
pub const EISDIR = @as(c_int, 21);
pub const EINVAL = @as(c_int, 22);
pub const ENFILE = @as(c_int, 23);
pub const EMFILE = @as(c_int, 24);
pub const ENOTTY = @as(c_int, 25);
pub const ETXTBSY = @as(c_int, 26);
pub const EFBIG = @as(c_int, 27);
pub const ENOSPC = @as(c_int, 28);
pub const ESPIPE = @as(c_int, 29);
pub const EROFS = @as(c_int, 30);
pub const EMLINK = @as(c_int, 31);
pub const EPIPE = @as(c_int, 32);
pub const EDOM = @as(c_int, 33);
pub const ERANGE = @as(c_int, 34);
pub const EDEADLK = @as(c_int, 35);
pub const ENAMETOOLONG = @as(c_int, 36);
pub const ENOLCK = @as(c_int, 37);
pub const ENOSYS = @as(c_int, 38);
pub const ENOTEMPTY = @as(c_int, 39);
pub const ELOOP = @as(c_int, 40);
pub const EWOULDBLOCK = EAGAIN;
pub const ENOMSG = @as(c_int, 42);
pub const EIDRM = @as(c_int, 43);
pub const ECHRNG = @as(c_int, 44);
pub const EL2NSYNC = @as(c_int, 45);
pub const EL3HLT = @as(c_int, 46);
pub const EL3RST = @as(c_int, 47);
pub const ELNRNG = @as(c_int, 48);
pub const EUNATCH = @as(c_int, 49);
pub const ENOCSI = @as(c_int, 50);
pub const EL2HLT = @as(c_int, 51);
pub const EBADE = @as(c_int, 52);
pub const EBADR = @as(c_int, 53);
pub const EXFULL = @as(c_int, 54);
pub const ENOANO = @as(c_int, 55);
pub const EBADRQC = @as(c_int, 56);
pub const EBADSLT = @as(c_int, 57);
pub const EDEADLOCK = EDEADLK;
pub const EBFONT = @as(c_int, 59);
pub const ENOSTR = @as(c_int, 60);
pub const ENODATA = @as(c_int, 61);
pub const ETIME = @as(c_int, 62);
pub const ENOSR = @as(c_int, 63);
pub const ENONET = @as(c_int, 64);
pub const ENOPKG = @as(c_int, 65);
pub const EREMOTE = @as(c_int, 66);
pub const ENOLINK = @as(c_int, 67);
pub const EADV = @as(c_int, 68);
pub const ESRMNT = @as(c_int, 69);
pub const ECOMM = @as(c_int, 70);
pub const EPROTO = @as(c_int, 71);
pub const EMULTIHOP = @as(c_int, 72);
pub const EDOTDOT = @as(c_int, 73);
pub const EBADMSG = @as(c_int, 74);
pub const EOVERFLOW = @as(c_int, 75);
pub const ENOTUNIQ = @as(c_int, 76);
pub const EBADFD = @as(c_int, 77);
pub const EREMCHG = @as(c_int, 78);
pub const ELIBACC = @as(c_int, 79);
pub const ELIBBAD = @as(c_int, 80);
pub const ELIBSCN = @as(c_int, 81);
pub const ELIBMAX = @as(c_int, 82);
pub const ELIBEXEC = @as(c_int, 83);
pub const EILSEQ = @as(c_int, 84);
pub const ERESTART = @as(c_int, 85);
pub const ESTRPIPE = @as(c_int, 86);
pub const EUSERS = @as(c_int, 87);
pub const ENOTSOCK = @as(c_int, 88);
pub const EDESTADDRREQ = @as(c_int, 89);
pub const EMSGSIZE = @as(c_int, 90);
pub const EPROTOTYPE = @as(c_int, 91);
pub const ENOPROTOOPT = @as(c_int, 92);
pub const EPROTONOSUPPORT = @as(c_int, 93);
pub const ESOCKTNOSUPPORT = @as(c_int, 94);
pub const EOPNOTSUPP = @as(c_int, 95);
pub const EPFNOSUPPORT = @as(c_int, 96);
pub const EAFNOSUPPORT = @as(c_int, 97);
pub const EADDRINUSE = @as(c_int, 98);
pub const EADDRNOTAVAIL = @as(c_int, 99);
pub const ENETDOWN = @as(c_int, 100);
pub const ENETUNREACH = @as(c_int, 101);
pub const ENETRESET = @as(c_int, 102);
pub const ECONNABORTED = @as(c_int, 103);
pub const ECONNRESET = @as(c_int, 104);
pub const ENOBUFS = @as(c_int, 105);
pub const EISCONN = @as(c_int, 106);
pub const ENOTCONN = @as(c_int, 107);
pub const ESHUTDOWN = @as(c_int, 108);
pub const ETOOMANYREFS = @as(c_int, 109);
pub const ETIMEDOUT = @as(c_int, 110);
pub const ECONNREFUSED = @as(c_int, 111);
pub const EHOSTDOWN = @as(c_int, 112);
pub const EHOSTUNREACH = @as(c_int, 113);
pub const EALREADY = @as(c_int, 114);
pub const EINPROGRESS = @as(c_int, 115);
pub const ESTALE = @as(c_int, 116);
pub const EUCLEAN = @as(c_int, 117);
pub const ENOTNAM = @as(c_int, 118);
pub const ENAVAIL = @as(c_int, 119);
pub const EISNAM = @as(c_int, 120);
pub const EREMOTEIO = @as(c_int, 121);
pub const EDQUOT = @as(c_int, 122);
pub const ENOMEDIUM = @as(c_int, 123);
pub const EMEDIUMTYPE = @as(c_int, 124);
pub const ECANCELED = @as(c_int, 125);
pub const ENOKEY = @as(c_int, 126);
pub const EKEYEXPIRED = @as(c_int, 127);
pub const EKEYREVOKED = @as(c_int, 128);
pub const EKEYREJECTED = @as(c_int, 129);
pub const EOWNERDEAD = @as(c_int, 130);
pub const ENOTRECOVERABLE = @as(c_int, 131);
pub const ERFKILL = @as(c_int, 132);
pub const EHWPOISON = @as(c_int, 133);
pub const ENOTSUP = EOPNOTSUPP;
pub const errno = __errno_location().*;
pub const _LOCALE_H = @as(c_int, 1);
pub const _BITS_LOCALE_H = @as(c_int, 1);
pub const __LC_CTYPE = @as(c_int, 0);
pub const __LC_NUMERIC = @as(c_int, 1);
pub const __LC_TIME = @as(c_int, 2);
pub const __LC_COLLATE = @as(c_int, 3);
pub const __LC_MONETARY = @as(c_int, 4);
pub const __LC_MESSAGES = @as(c_int, 5);
pub const __LC_ALL = @as(c_int, 6);
pub const __LC_PAPER = @as(c_int, 7);
pub const __LC_NAME = @as(c_int, 8);
pub const __LC_ADDRESS = @as(c_int, 9);
pub const __LC_TELEPHONE = @as(c_int, 10);
pub const __LC_MEASUREMENT = @as(c_int, 11);
pub const __LC_IDENTIFICATION = @as(c_int, 12);
pub const LC_CTYPE = __LC_CTYPE;
pub const LC_NUMERIC = __LC_NUMERIC;
pub const LC_TIME = __LC_TIME;
pub const LC_COLLATE = __LC_COLLATE;
pub const LC_MONETARY = __LC_MONETARY;
pub const LC_MESSAGES = __LC_MESSAGES;
pub const LC_ALL = __LC_ALL;
pub const LC_PAPER = __LC_PAPER;
pub const LC_NAME = __LC_NAME;
pub const LC_ADDRESS = __LC_ADDRESS;
pub const LC_TELEPHONE = __LC_TELEPHONE;
pub const LC_MEASUREMENT = __LC_MEASUREMENT;
pub const LC_IDENTIFICATION = __LC_IDENTIFICATION;
pub const LC_CTYPE_MASK = @as(c_int, 1) << __LC_CTYPE;
pub const LC_NUMERIC_MASK = @as(c_int, 1) << __LC_NUMERIC;
pub const LC_TIME_MASK = @as(c_int, 1) << __LC_TIME;
pub const LC_COLLATE_MASK = @as(c_int, 1) << __LC_COLLATE;
pub const LC_MONETARY_MASK = @as(c_int, 1) << __LC_MONETARY;
pub const LC_MESSAGES_MASK = @as(c_int, 1) << __LC_MESSAGES;
pub const LC_PAPER_MASK = @as(c_int, 1) << __LC_PAPER;
pub const LC_NAME_MASK = @as(c_int, 1) << __LC_NAME;
pub const LC_ADDRESS_MASK = @as(c_int, 1) << __LC_ADDRESS;
pub const LC_TELEPHONE_MASK = @as(c_int, 1) << __LC_TELEPHONE;
pub const LC_MEASUREMENT_MASK = @as(c_int, 1) << __LC_MEASUREMENT;
pub const LC_IDENTIFICATION_MASK = @as(c_int, 1) << __LC_IDENTIFICATION;
pub const LC_ALL_MASK = ((((((((((LC_CTYPE_MASK | LC_NUMERIC_MASK) | LC_TIME_MASK) | LC_COLLATE_MASK) | LC_MONETARY_MASK) | LC_MESSAGES_MASK) | LC_PAPER_MASK) | LC_NAME_MASK) | LC_ADDRESS_MASK) | LC_TELEPHONE_MASK) | LC_MEASUREMENT_MASK) | LC_IDENTIFICATION_MASK;
pub const LC_GLOBAL_LOCALE = @import("std").zig.c_translation.cast(locale_t, -@as(c_long, 1));
pub const PG_USED_FOR_ASSERTS_ONLY = pg_attribute_unused();
pub const HAVE_PG_ATTRIBUTE_NORETURN = @as(c_int, 1);
pub inline fn pg_unreachable() @TypeOf(__builtin_unreachable()) {
    return __builtin_unreachable();
}
pub inline fn likely(x: anytype) @TypeOf(__builtin_expect(x != @as(c_int, 0), @as(c_int, 1))) {
    return __builtin_expect(x != @as(c_int, 0), @as(c_int, 1));
}
pub inline fn unlikely(x: anytype) @TypeOf(__builtin_expect(x != @as(c_int, 0), @as(c_int, 0))) {
    return __builtin_expect(x != @as(c_int, 0), @as(c_int, 0));
}
pub inline fn CppAsString2(x: anytype) @TypeOf(CppAsString(x)) {
    return CppAsString(x);
}
pub const dummyret = anyopaque;
pub const FLEXIBLE_ARRAY_MEMBER = "";
pub const HAVE_PRAGMA_GCC_SYSTEM_HEADER = @as(c_int, 1);
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const INT64CONST = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const UINT64CONST = @import("std").zig.c_translation.Macros.UL_SUFFIX;
pub const INT64_FORMAT = "%" ++ INT64_MODIFIER ++ "d";
pub const UINT64_FORMAT = "%" ++ INT64_MODIFIER ++ "u";
pub const HAVE_INT128 = @as(c_int, 1);
pub const PG_INT8_MIN = -@as(c_int, 0x7F) - @as(c_int, 1);
pub const PG_INT8_MAX = @as(c_int, 0x7F);
pub const PG_UINT8_MAX = @as(c_int, 0xFF);
pub const PG_INT16_MIN = -@as(c_int, 0x7FFF) - @as(c_int, 1);
pub const PG_INT16_MAX = @as(c_int, 0x7FFF);
pub const PG_UINT16_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFF, .hexadecimal);
pub const PG_INT32_MIN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFF, .hexadecimal) - @as(c_int, 1);
pub const PG_INT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFF, .hexadecimal);
pub const PG_UINT32_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 0xFFFFFFFF, .hexadecimal);
pub const PG_INT64_MIN = -INT64CONST(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFFFFFFFFFF, .hexadecimal)) - @as(c_int, 1);
pub const PG_INT64_MAX = INT64CONST(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7FFFFFFFFFFFFFFF, .hexadecimal));
pub const PG_UINT64_MAX = UINT64CONST(@import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFFFFFFFFFF, .hexadecimal));
pub const HAVE_INT64_TIMESTAMP = "";
pub const FLOAT8PASSBYVAL = @"true";
pub const InvalidSubTransactionId = @import("std").zig.c_translation.cast(SubTransactionId, @as(c_int, 0));
pub const TopSubTransactionId = @import("std").zig.c_translation.cast(SubTransactionId, @as(c_int, 1));
pub const FirstCommandId = @import("std").zig.c_translation.cast(CommandId, @as(c_int, 0));
pub const InvalidCommandId = ~@import("std").zig.c_translation.cast(CommandId, @as(c_int, 0));
pub const VARHDRSZ = @import("std").zig.c_translation.cast(int32, @import("std").zig.c_translation.sizeof(int32));
pub inline fn NameStr(name: anytype) @TypeOf(name.data) {
    return name.data;
}
pub inline fn BoolIsValid(boolean: anytype) @TypeOf((boolean == @"false") or (boolean == @"true")) {
    return (boolean == @"false") or (boolean == @"true");
}
pub inline fn PointerIsAligned(pointer: anytype, @"type": anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.rem(@import("std").zig.c_translation.cast(usize, pointer), @import("std").zig.c_translation.sizeof(@"type")) == @as(c_int, 0)) {
    _ = @TypeOf(@"type");
    return @import("std").zig.c_translation.MacroArithmetic.rem(@import("std").zig.c_translation.cast(usize, pointer), @import("std").zig.c_translation.sizeof(@"type")) == @as(c_int, 0);
}
pub inline fn OffsetToPointer(base: anytype, offset: anytype) ?*anyopaque {
    return @import("std").zig.c_translation.cast(?*anyopaque, @import("std").zig.c_translation.cast([*c]u8, base) + offset);
}
pub inline fn OidIsValid(objectId: anytype) @TypeOf(@"bool"(objectId != InvalidOid)) {
    return @"bool"(objectId != InvalidOid);
}
pub inline fn RegProcedureIsValid(p: anytype) @TypeOf(OidIsValid(p)) {
    return OidIsValid(p);
}
pub inline fn TYPEALIGN(ALIGNVAL: anytype, LEN: anytype) @TypeOf((@import("std").zig.c_translation.cast(usize, LEN) + (ALIGNVAL - @as(c_int, 1))) & ~@import("std").zig.c_translation.cast(usize, ALIGNVAL - @as(c_int, 1))) {
    return (@import("std").zig.c_translation.cast(usize, LEN) + (ALIGNVAL - @as(c_int, 1))) & ~@import("std").zig.c_translation.cast(usize, ALIGNVAL - @as(c_int, 1));
}
pub inline fn SHORTALIGN(LEN: anytype) @TypeOf(TYPEALIGN(ALIGNOF_SHORT, LEN)) {
    return TYPEALIGN(ALIGNOF_SHORT, LEN);
}
pub inline fn INTALIGN(LEN: anytype) @TypeOf(TYPEALIGN(ALIGNOF_INT, LEN)) {
    return TYPEALIGN(ALIGNOF_INT, LEN);
}
pub inline fn LONGALIGN(LEN: anytype) @TypeOf(TYPEALIGN(ALIGNOF_LONG, LEN)) {
    return TYPEALIGN(ALIGNOF_LONG, LEN);
}
pub inline fn DOUBLEALIGN(LEN: anytype) @TypeOf(TYPEALIGN(ALIGNOF_DOUBLE, LEN)) {
    return TYPEALIGN(ALIGNOF_DOUBLE, LEN);
}
pub inline fn MAXALIGN(LEN: anytype) @TypeOf(TYPEALIGN(MAXIMUM_ALIGNOF, LEN)) {
    return TYPEALIGN(MAXIMUM_ALIGNOF, LEN);
}
pub inline fn BUFFERALIGN(LEN: anytype) @TypeOf(TYPEALIGN(ALIGNOF_BUFFER, LEN)) {
    return TYPEALIGN(ALIGNOF_BUFFER, LEN);
}
pub inline fn CACHELINEALIGN(LEN: anytype) @TypeOf(TYPEALIGN(PG_CACHE_LINE_SIZE, LEN)) {
    return TYPEALIGN(PG_CACHE_LINE_SIZE, LEN);
}
pub inline fn TYPEALIGN_DOWN(ALIGNVAL: anytype, LEN: anytype) @TypeOf(@import("std").zig.c_translation.cast(usize, LEN) & ~@import("std").zig.c_translation.cast(usize, ALIGNVAL - @as(c_int, 1))) {
    return @import("std").zig.c_translation.cast(usize, LEN) & ~@import("std").zig.c_translation.cast(usize, ALIGNVAL - @as(c_int, 1));
}
pub inline fn SHORTALIGN_DOWN(LEN: anytype) @TypeOf(TYPEALIGN_DOWN(ALIGNOF_SHORT, LEN)) {
    return TYPEALIGN_DOWN(ALIGNOF_SHORT, LEN);
}
pub inline fn INTALIGN_DOWN(LEN: anytype) @TypeOf(TYPEALIGN_DOWN(ALIGNOF_INT, LEN)) {
    return TYPEALIGN_DOWN(ALIGNOF_INT, LEN);
}
pub inline fn LONGALIGN_DOWN(LEN: anytype) @TypeOf(TYPEALIGN_DOWN(ALIGNOF_LONG, LEN)) {
    return TYPEALIGN_DOWN(ALIGNOF_LONG, LEN);
}
pub inline fn DOUBLEALIGN_DOWN(LEN: anytype) @TypeOf(TYPEALIGN_DOWN(ALIGNOF_DOUBLE, LEN)) {
    return TYPEALIGN_DOWN(ALIGNOF_DOUBLE, LEN);
}
pub inline fn MAXALIGN_DOWN(LEN: anytype) @TypeOf(TYPEALIGN_DOWN(MAXIMUM_ALIGNOF, LEN)) {
    return TYPEALIGN_DOWN(MAXIMUM_ALIGNOF, LEN);
}
pub inline fn BUFFERALIGN_DOWN(LEN: anytype) @TypeOf(TYPEALIGN_DOWN(ALIGNOF_BUFFER, LEN)) {
    return TYPEALIGN_DOWN(ALIGNOF_BUFFER, LEN);
}
pub inline fn TYPEALIGN64(ALIGNVAL: anytype, LEN: anytype) @TypeOf((@import("std").zig.c_translation.cast(uint64, LEN) + (ALIGNVAL - @as(c_int, 1))) & ~@import("std").zig.c_translation.cast(uint64, ALIGNVAL - @as(c_int, 1))) {
    return (@import("std").zig.c_translation.cast(uint64, LEN) + (ALIGNVAL - @as(c_int, 1))) & ~@import("std").zig.c_translation.cast(uint64, ALIGNVAL - @as(c_int, 1));
}
pub inline fn MAXALIGN64(LEN: anytype) @TypeOf(TYPEALIGN64(MAXIMUM_ALIGNOF, LEN)) {
    return TYPEALIGN64(MAXIMUM_ALIGNOF, LEN);
}
pub inline fn Assert(condition: anytype) anyopaque {
    _ = @TypeOf(condition);
    return @import("std").zig.c_translation.cast(anyopaque, @"true");
}
pub inline fn AssertMacro(condition: anytype) anyopaque {
    _ = @TypeOf(condition);
    return @import("std").zig.c_translation.cast(anyopaque, @"true");
}
pub inline fn AssertArg(condition: anytype) anyopaque {
    _ = @TypeOf(condition);
    return @import("std").zig.c_translation.cast(anyopaque, @"true");
}
pub inline fn AssertState(condition: anytype) anyopaque {
    _ = @TypeOf(condition);
    return @import("std").zig.c_translation.cast(anyopaque, @"true");
}
pub inline fn AssertPointerAlignment(ptr: anytype, bndr: anytype) anyopaque {
    _ = @TypeOf(ptr);
    _ = @TypeOf(bndr);
    return @import("std").zig.c_translation.cast(anyopaque, @"true");
}
pub inline fn Trap(condition: anytype, errorType: anytype) anyopaque {
    _ = @TypeOf(condition);
    _ = @TypeOf(errorType);
    return @import("std").zig.c_translation.cast(anyopaque, @"true");
}
pub inline fn TrapMacro(condition: anytype, errorType: anytype) @TypeOf(@"true") {
    _ = @TypeOf(condition);
    _ = @TypeOf(errorType);
    return @"true";
}
pub inline fn Max(x: anytype, y: anytype) @TypeOf(if (x > y) x else y) {
    return if (x > y) x else y;
}
pub inline fn Min(x: anytype, y: anytype) @TypeOf(if (x < y) x else y) {
    return if (x < y) x else y;
}
pub inline fn Abs(x: anytype) @TypeOf(if (x >= @as(c_int, 0)) x else -x) {
    return if (x >= @as(c_int, 0)) x else -x;
}
pub const LONG_ALIGN_MASK = @import("std").zig.c_translation.sizeof(c_long) - @as(c_int, 1);
pub inline fn MemSetTest(val: anytype, len: anytype) @TypeOf(((((len & LONG_ALIGN_MASK) == @as(c_int, 0)) and (len <= MEMSET_LOOP_LIMIT)) and (MEMSET_LOOP_LIMIT != @as(c_int, 0))) and (val == @as(c_int, 0))) {
    return ((((len & LONG_ALIGN_MASK) == @as(c_int, 0)) and (len <= MEMSET_LOOP_LIMIT)) and (MEMSET_LOOP_LIMIT != @as(c_int, 0))) and (val == @as(c_int, 0));
}
pub inline fn FLOAT4_FITS_IN_INT16(num: anytype) @TypeOf((num >= @import("std").zig.c_translation.cast(float4, PG_INT16_MIN)) and (num < -@import("std").zig.c_translation.cast(float4, PG_INT16_MIN))) {
    return (num >= @import("std").zig.c_translation.cast(float4, PG_INT16_MIN)) and (num < -@import("std").zig.c_translation.cast(float4, PG_INT16_MIN));
}
pub inline fn FLOAT4_FITS_IN_INT32(num: anytype) @TypeOf((num >= @import("std").zig.c_translation.cast(float4, PG_INT32_MIN)) and (num < -@import("std").zig.c_translation.cast(float4, PG_INT32_MIN))) {
    return (num >= @import("std").zig.c_translation.cast(float4, PG_INT32_MIN)) and (num < -@import("std").zig.c_translation.cast(float4, PG_INT32_MIN));
}
pub inline fn FLOAT4_FITS_IN_INT64(num: anytype) @TypeOf((num >= @import("std").zig.c_translation.cast(float4, PG_INT64_MIN)) and (num < -@import("std").zig.c_translation.cast(float4, PG_INT64_MIN))) {
    return (num >= @import("std").zig.c_translation.cast(float4, PG_INT64_MIN)) and (num < -@import("std").zig.c_translation.cast(float4, PG_INT64_MIN));
}
pub inline fn FLOAT8_FITS_IN_INT16(num: anytype) @TypeOf((num >= @import("std").zig.c_translation.cast(float8, PG_INT16_MIN)) and (num < -@import("std").zig.c_translation.cast(float8, PG_INT16_MIN))) {
    return (num >= @import("std").zig.c_translation.cast(float8, PG_INT16_MIN)) and (num < -@import("std").zig.c_translation.cast(float8, PG_INT16_MIN));
}
pub inline fn FLOAT8_FITS_IN_INT32(num: anytype) @TypeOf((num >= @import("std").zig.c_translation.cast(float8, PG_INT32_MIN)) and (num < -@import("std").zig.c_translation.cast(float8, PG_INT32_MIN))) {
    return (num >= @import("std").zig.c_translation.cast(float8, PG_INT32_MIN)) and (num < -@import("std").zig.c_translation.cast(float8, PG_INT32_MIN));
}
pub inline fn FLOAT8_FITS_IN_INT64(num: anytype) @TypeOf((num >= @import("std").zig.c_translation.cast(float8, PG_INT64_MIN)) and (num < -@import("std").zig.c_translation.cast(float8, PG_INT64_MIN))) {
    return (num >= @import("std").zig.c_translation.cast(float8, PG_INT64_MIN)) and (num < -@import("std").zig.c_translation.cast(float8, PG_INT64_MIN));
}
pub const HAVE_UNIX_SOCKETS = @as(c_int, 1);
pub const HIGHBIT = @as(c_int, 0x80);
pub inline fn IS_HIGHBIT_SET(ch: anytype) @TypeOf(@import("std").zig.c_translation.cast(u8, ch) & HIGHBIT) {
    return @import("std").zig.c_translation.cast(u8, ch) & HIGHBIT;
}
pub inline fn SQL_STR_DOUBLE(ch: anytype, escape_backslash: anytype) @TypeOf((ch == '\'') or ((ch == '\\') and (escape_backslash != 0))) {
    return (ch == '\'') or ((ch == '\\') and (escape_backslash != 0));
}
pub const ESCAPE_STRING_SYNTAX = 'E';
pub const STATUS_OK = @as(c_int, 0);
pub const STATUS_ERROR = -@as(c_int, 1);
pub const STATUS_EOF = -@as(c_int, 2);
pub inline fn gettext(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn dgettext(d: anytype, x: anytype) @TypeOf(x) {
    _ = @TypeOf(d);
    return x;
}
pub inline fn ngettext(s: anytype, p: anytype, n: anytype) @TypeOf(if (n == @as(c_int, 1)) s else p) {
    return if (n == @as(c_int, 1)) s else p;
}
pub inline fn dngettext(d: anytype, s: anytype, p: anytype, n: anytype) @TypeOf(if (n == @as(c_int, 1)) s else p) {
    _ = @TypeOf(d);
    return if (n == @as(c_int, 1)) s else p;
}
pub inline fn @"_"(x: anytype) @TypeOf(gettext(x)) {
    return gettext(x);
}
pub inline fn gettext_noop(x: anytype) @TypeOf(x) {
    return x;
}
pub inline fn PG_TEXTDOMAIN(domain: anytype) @TypeOf(domain ++ "-" ++ PG_MAJORVERSION) {
    return domain ++ "-" ++ PG_MAJORVERSION;
}
pub const PG_BINARY = @as(c_int, 0);
pub const PG_BINARY_A = "a";
pub const PG_BINARY_R = "r";
pub const PG_BINARY_W = "w";
pub inline fn strtoi64(str: anytype, endptr: anytype, base: anytype) int64 {
    return @import("std").zig.c_translation.cast(int64, strtol(str, endptr, base));
}
pub inline fn strtou64(str: anytype, endptr: anytype, base: anytype) uint64 {
    return @import("std").zig.c_translation.cast(uint64, strtoul(str, endptr, base));
}
pub const PGDLLIMPORT = "";
pub const PGDLLEXPORT = "";
pub const PG_PORT_H = "";
pub const _CTYPE_H = @as(c_int, 1);
pub inline fn _ISbit(bit: anytype) @TypeOf(if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8)) {
    return if (bit < @as(c_int, 8)) (@as(c_int, 1) << bit) << @as(c_int, 8) else (@as(c_int, 1) << bit) >> @as(c_int, 8);
}
pub inline fn __isctype(c: anytype, @"type": anytype) @TypeOf(__ctype_b_loc().*[@intCast(usize, @import("std").zig.c_translation.cast(c_int, c))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    return __ctype_b_loc().*[@intCast(usize, @import("std").zig.c_translation.cast(c_int, c))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub inline fn __isascii(c: anytype) @TypeOf((c & ~@as(c_int, 0x7f)) == @as(c_int, 0)) {
    return (c & ~@as(c_int, 0x7f)) == @as(c_int, 0);
}
pub inline fn __toascii(c: anytype) @TypeOf(c & @as(c_int, 0x7f)) {
    return c & @as(c_int, 0x7f);
}
pub inline fn __isctype_l(c: anytype, @"type": anytype, locale: anytype) @TypeOf(locale.*.__ctype_b[@intCast(usize, @import("std").zig.c_translation.cast(c_int, c))] & @import("std").zig.c_translation.cast(c_ushort, @"type")) {
    return locale.*.__ctype_b[@intCast(usize, @import("std").zig.c_translation.cast(c_int, c))] & @import("std").zig.c_translation.cast(c_ushort, @"type");
}
pub inline fn __isalnum_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalnum, l)) {
    return __isctype_l(c, _ISalnum, l);
}
pub inline fn __isalpha_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISalpha, l)) {
    return __isctype_l(c, _ISalpha, l);
}
pub inline fn __iscntrl_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _IScntrl, l)) {
    return __isctype_l(c, _IScntrl, l);
}
pub inline fn __isdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISdigit, l)) {
    return __isctype_l(c, _ISdigit, l);
}
pub inline fn __islower_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISlower, l)) {
    return __isctype_l(c, _ISlower, l);
}
pub inline fn __isgraph_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISgraph, l)) {
    return __isctype_l(c, _ISgraph, l);
}
pub inline fn __isprint_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISprint, l)) {
    return __isctype_l(c, _ISprint, l);
}
pub inline fn __ispunct_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISpunct, l)) {
    return __isctype_l(c, _ISpunct, l);
}
pub inline fn __isspace_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISspace, l)) {
    return __isctype_l(c, _ISspace, l);
}
pub inline fn __isupper_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISupper, l)) {
    return __isctype_l(c, _ISupper, l);
}
pub inline fn __isxdigit_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISxdigit, l)) {
    return __isctype_l(c, _ISxdigit, l);
}
pub inline fn __isblank_l(c: anytype, l: anytype) @TypeOf(__isctype_l(c, _ISblank, l)) {
    return __isctype_l(c, _ISblank, l);
}
pub inline fn __isascii_l(c: anytype, l: anytype) @TypeOf(__isascii(c)) {
    return blk_1: {
        _ = @TypeOf(l);
        break :blk_1 __isascii(c);
    };
}
pub inline fn __toascii_l(c: anytype, l: anytype) @TypeOf(__toascii(c)) {
    return blk_1: {
        _ = @TypeOf(l);
        break :blk_1 __toascii(c);
    };
}
pub inline fn isascii_l(c: anytype, l: anytype) @TypeOf(__isascii_l(c, l)) {
    return __isascii_l(c, l);
}
pub inline fn toascii_l(c: anytype, l: anytype) @TypeOf(__toascii_l(c, l)) {
    return __toascii_l(c, l);
}
pub const PGINVALID_SOCKET = -@as(c_int, 1);
pub inline fn IS_NONWINDOWS_DIR_SEP(ch: anytype) @TypeOf(ch == '/') {
    return ch == '/';
}
pub inline fn is_nonwindows_absolute_path(filename: anytype) @TypeOf(IS_NONWINDOWS_DIR_SEP(filename[@intCast(usize, @as(c_int, 0))])) {
    return IS_NONWINDOWS_DIR_SEP(filename[@intCast(usize, @as(c_int, 0))]);
}
pub inline fn IS_WINDOWS_DIR_SEP(ch: anytype) @TypeOf((ch == '/') or (ch == '\\')) {
    return (ch == '/') or (ch == '\\');
}
pub inline fn is_windows_absolute_path(filename: anytype) @TypeOf((IS_WINDOWS_DIR_SEP(filename[@intCast(usize, @as(c_int, 0))]) != 0) or (((isalpha(@import("std").zig.c_translation.cast(u8, filename[@intCast(usize, @as(c_int, 0))])) != 0) and (filename[@intCast(usize, @as(c_int, 1))] == ':')) and (IS_WINDOWS_DIR_SEP(filename[@intCast(usize, @as(c_int, 2))]) != 0))) {
    return (IS_WINDOWS_DIR_SEP(filename[@intCast(usize, @as(c_int, 0))]) != 0) or (((isalpha(@import("std").zig.c_translation.cast(u8, filename[@intCast(usize, @as(c_int, 0))])) != 0) and (filename[@intCast(usize, @as(c_int, 1))] == ':')) and (IS_WINDOWS_DIR_SEP(filename[@intCast(usize, @as(c_int, 2))]) != 0));
}
pub inline fn IS_DIR_SEP(ch: anytype) @TypeOf(IS_NONWINDOWS_DIR_SEP(ch)) {
    return IS_NONWINDOWS_DIR_SEP(ch);
}
pub inline fn is_absolute_path(filename: anytype) @TypeOf(is_nonwindows_absolute_path(filename)) {
    return is_nonwindows_absolute_path(filename);
}
pub const PG_BACKEND_VERSIONSTR = "postgres (PostgreSQL) " ++ PG_VERSION ++ "\n";
pub const EXE = "";
pub const DEVNULL = "/dev/null";
pub const USE_REPL_SNPRINTF = @as(c_int, 1);
pub const PG_STRERROR_R_BUFLEN = @as(c_int, 256);
pub const TIMEZONE_GLOBAL = timezone;
pub const TZNAME_GLOBAL = tzname;
pub const PG_IOLBF = _IOLBF;
pub const pgoff_t = off_t;
pub const _MATH_H = @as(c_int, 1);
pub const _BITS_LIBM_SIMD_DECL_STUBS_H = @as(c_int, 1);
pub const __DECL_SIMD_cos = "";
pub const __DECL_SIMD_cosf = "";
pub const __DECL_SIMD_cosl = "";
pub const __DECL_SIMD_cosf16 = "";
pub const __DECL_SIMD_cosf32 = "";
pub const __DECL_SIMD_cosf64 = "";
pub const __DECL_SIMD_cosf128 = "";
pub const __DECL_SIMD_cosf32x = "";
pub const __DECL_SIMD_cosf64x = "";
pub const __DECL_SIMD_cosf128x = "";
pub const __DECL_SIMD_sin = "";
pub const __DECL_SIMD_sinf = "";
pub const __DECL_SIMD_sinl = "";
pub const __DECL_SIMD_sinf16 = "";
pub const __DECL_SIMD_sinf32 = "";
pub const __DECL_SIMD_sinf64 = "";
pub const __DECL_SIMD_sinf128 = "";
pub const __DECL_SIMD_sinf32x = "";
pub const __DECL_SIMD_sinf64x = "";
pub const __DECL_SIMD_sinf128x = "";
pub const __DECL_SIMD_sincos = "";
pub const __DECL_SIMD_sincosf = "";
pub const __DECL_SIMD_sincosl = "";
pub const __DECL_SIMD_sincosf16 = "";
pub const __DECL_SIMD_sincosf32 = "";
pub const __DECL_SIMD_sincosf64 = "";
pub const __DECL_SIMD_sincosf128 = "";
pub const __DECL_SIMD_sincosf32x = "";
pub const __DECL_SIMD_sincosf64x = "";
pub const __DECL_SIMD_sincosf128x = "";
pub const __DECL_SIMD_log = "";
pub const __DECL_SIMD_logf = "";
pub const __DECL_SIMD_logl = "";
pub const __DECL_SIMD_logf16 = "";
pub const __DECL_SIMD_logf32 = "";
pub const __DECL_SIMD_logf64 = "";
pub const __DECL_SIMD_logf128 = "";
pub const __DECL_SIMD_logf32x = "";
pub const __DECL_SIMD_logf64x = "";
pub const __DECL_SIMD_logf128x = "";
pub const __DECL_SIMD_exp = "";
pub const __DECL_SIMD_expf = "";
pub const __DECL_SIMD_expl = "";
pub const __DECL_SIMD_expf16 = "";
pub const __DECL_SIMD_expf32 = "";
pub const __DECL_SIMD_expf64 = "";
pub const __DECL_SIMD_expf128 = "";
pub const __DECL_SIMD_expf32x = "";
pub const __DECL_SIMD_expf64x = "";
pub const __DECL_SIMD_expf128x = "";
pub const __DECL_SIMD_pow = "";
pub const __DECL_SIMD_powf = "";
pub const __DECL_SIMD_powl = "";
pub const __DECL_SIMD_powf16 = "";
pub const __DECL_SIMD_powf32 = "";
pub const __DECL_SIMD_powf64 = "";
pub const __DECL_SIMD_powf128 = "";
pub const __DECL_SIMD_powf32x = "";
pub const __DECL_SIMD_powf64x = "";
pub const __DECL_SIMD_powf128x = "";
pub const __DECL_SIMD_acos = "";
pub const __DECL_SIMD_acosf = "";
pub const __DECL_SIMD_acosl = "";
pub const __DECL_SIMD_acosf16 = "";
pub const __DECL_SIMD_acosf32 = "";
pub const __DECL_SIMD_acosf64 = "";
pub const __DECL_SIMD_acosf128 = "";
pub const __DECL_SIMD_acosf32x = "";
pub const __DECL_SIMD_acosf64x = "";
pub const __DECL_SIMD_acosf128x = "";
pub const __DECL_SIMD_atan = "";
pub const __DECL_SIMD_atanf = "";
pub const __DECL_SIMD_atanl = "";
pub const __DECL_SIMD_atanf16 = "";
pub const __DECL_SIMD_atanf32 = "";
pub const __DECL_SIMD_atanf64 = "";
pub const __DECL_SIMD_atanf128 = "";
pub const __DECL_SIMD_atanf32x = "";
pub const __DECL_SIMD_atanf64x = "";
pub const __DECL_SIMD_atanf128x = "";
pub const __DECL_SIMD_asin = "";
pub const __DECL_SIMD_asinf = "";
pub const __DECL_SIMD_asinl = "";
pub const __DECL_SIMD_asinf16 = "";
pub const __DECL_SIMD_asinf32 = "";
pub const __DECL_SIMD_asinf64 = "";
pub const __DECL_SIMD_asinf128 = "";
pub const __DECL_SIMD_asinf32x = "";
pub const __DECL_SIMD_asinf64x = "";
pub const __DECL_SIMD_asinf128x = "";
pub const __DECL_SIMD_hypot = "";
pub const __DECL_SIMD_hypotf = "";
pub const __DECL_SIMD_hypotl = "";
pub const __DECL_SIMD_hypotf16 = "";
pub const __DECL_SIMD_hypotf32 = "";
pub const __DECL_SIMD_hypotf64 = "";
pub const __DECL_SIMD_hypotf128 = "";
pub const __DECL_SIMD_hypotf32x = "";
pub const __DECL_SIMD_hypotf64x = "";
pub const __DECL_SIMD_hypotf128x = "";
pub const __DECL_SIMD_exp2 = "";
pub const __DECL_SIMD_exp2f = "";
pub const __DECL_SIMD_exp2l = "";
pub const __DECL_SIMD_exp2f16 = "";
pub const __DECL_SIMD_exp2f32 = "";
pub const __DECL_SIMD_exp2f64 = "";
pub const __DECL_SIMD_exp2f128 = "";
pub const __DECL_SIMD_exp2f32x = "";
pub const __DECL_SIMD_exp2f64x = "";
pub const __DECL_SIMD_exp2f128x = "";
pub const __DECL_SIMD_exp10 = "";
pub const __DECL_SIMD_exp10f = "";
pub const __DECL_SIMD_exp10l = "";
pub const __DECL_SIMD_exp10f16 = "";
pub const __DECL_SIMD_exp10f32 = "";
pub const __DECL_SIMD_exp10f64 = "";
pub const __DECL_SIMD_exp10f128 = "";
pub const __DECL_SIMD_exp10f32x = "";
pub const __DECL_SIMD_exp10f64x = "";
pub const __DECL_SIMD_exp10f128x = "";
pub const __DECL_SIMD_cosh = "";
pub const __DECL_SIMD_coshf = "";
pub const __DECL_SIMD_coshl = "";
pub const __DECL_SIMD_coshf16 = "";
pub const __DECL_SIMD_coshf32 = "";
pub const __DECL_SIMD_coshf64 = "";
pub const __DECL_SIMD_coshf128 = "";
pub const __DECL_SIMD_coshf32x = "";
pub const __DECL_SIMD_coshf64x = "";
pub const __DECL_SIMD_coshf128x = "";
pub const __DECL_SIMD_expm1 = "";
pub const __DECL_SIMD_expm1f = "";
pub const __DECL_SIMD_expm1l = "";
pub const __DECL_SIMD_expm1f16 = "";
pub const __DECL_SIMD_expm1f32 = "";
pub const __DECL_SIMD_expm1f64 = "";
pub const __DECL_SIMD_expm1f128 = "";
pub const __DECL_SIMD_expm1f32x = "";
pub const __DECL_SIMD_expm1f64x = "";
pub const __DECL_SIMD_expm1f128x = "";
pub const __DECL_SIMD_sinh = "";
pub const __DECL_SIMD_sinhf = "";
pub const __DECL_SIMD_sinhl = "";
pub const __DECL_SIMD_sinhf16 = "";
pub const __DECL_SIMD_sinhf32 = "";
pub const __DECL_SIMD_sinhf64 = "";
pub const __DECL_SIMD_sinhf128 = "";
pub const __DECL_SIMD_sinhf32x = "";
pub const __DECL_SIMD_sinhf64x = "";
pub const __DECL_SIMD_sinhf128x = "";
pub const __DECL_SIMD_cbrt = "";
pub const __DECL_SIMD_cbrtf = "";
pub const __DECL_SIMD_cbrtl = "";
pub const __DECL_SIMD_cbrtf16 = "";
pub const __DECL_SIMD_cbrtf32 = "";
pub const __DECL_SIMD_cbrtf64 = "";
pub const __DECL_SIMD_cbrtf128 = "";
pub const __DECL_SIMD_cbrtf32x = "";
pub const __DECL_SIMD_cbrtf64x = "";
pub const __DECL_SIMD_cbrtf128x = "";
pub const __DECL_SIMD_atan2 = "";
pub const __DECL_SIMD_atan2f = "";
pub const __DECL_SIMD_atan2l = "";
pub const __DECL_SIMD_atan2f16 = "";
pub const __DECL_SIMD_atan2f32 = "";
pub const __DECL_SIMD_atan2f64 = "";
pub const __DECL_SIMD_atan2f128 = "";
pub const __DECL_SIMD_atan2f32x = "";
pub const __DECL_SIMD_atan2f64x = "";
pub const __DECL_SIMD_atan2f128x = "";
pub const __DECL_SIMD_log10 = "";
pub const __DECL_SIMD_log10f = "";
pub const __DECL_SIMD_log10l = "";
pub const __DECL_SIMD_log10f16 = "";
pub const __DECL_SIMD_log10f32 = "";
pub const __DECL_SIMD_log10f64 = "";
pub const __DECL_SIMD_log10f128 = "";
pub const __DECL_SIMD_log10f32x = "";
pub const __DECL_SIMD_log10f64x = "";
pub const __DECL_SIMD_log10f128x = "";
pub const __DECL_SIMD_log2 = "";
pub const __DECL_SIMD_log2f = "";
pub const __DECL_SIMD_log2l = "";
pub const __DECL_SIMD_log2f16 = "";
pub const __DECL_SIMD_log2f32 = "";
pub const __DECL_SIMD_log2f64 = "";
pub const __DECL_SIMD_log2f128 = "";
pub const __DECL_SIMD_log2f32x = "";
pub const __DECL_SIMD_log2f64x = "";
pub const __DECL_SIMD_log2f128x = "";
pub const __DECL_SIMD_log1p = "";
pub const __DECL_SIMD_log1pf = "";
pub const __DECL_SIMD_log1pl = "";
pub const __DECL_SIMD_log1pf16 = "";
pub const __DECL_SIMD_log1pf32 = "";
pub const __DECL_SIMD_log1pf64 = "";
pub const __DECL_SIMD_log1pf128 = "";
pub const __DECL_SIMD_log1pf32x = "";
pub const __DECL_SIMD_log1pf64x = "";
pub const __DECL_SIMD_log1pf128x = "";
pub const __DECL_SIMD_atanh = "";
pub const __DECL_SIMD_atanhf = "";
pub const __DECL_SIMD_atanhl = "";
pub const __DECL_SIMD_atanhf16 = "";
pub const __DECL_SIMD_atanhf32 = "";
pub const __DECL_SIMD_atanhf64 = "";
pub const __DECL_SIMD_atanhf128 = "";
pub const __DECL_SIMD_atanhf32x = "";
pub const __DECL_SIMD_atanhf64x = "";
pub const __DECL_SIMD_atanhf128x = "";
pub const __DECL_SIMD_acosh = "";
pub const __DECL_SIMD_acoshf = "";
pub const __DECL_SIMD_acoshl = "";
pub const __DECL_SIMD_acoshf16 = "";
pub const __DECL_SIMD_acoshf32 = "";
pub const __DECL_SIMD_acoshf64 = "";
pub const __DECL_SIMD_acoshf128 = "";
pub const __DECL_SIMD_acoshf32x = "";
pub const __DECL_SIMD_acoshf64x = "";
pub const __DECL_SIMD_acoshf128x = "";
pub const __DECL_SIMD_erf = "";
pub const __DECL_SIMD_erff = "";
pub const __DECL_SIMD_erfl = "";
pub const __DECL_SIMD_erff16 = "";
pub const __DECL_SIMD_erff32 = "";
pub const __DECL_SIMD_erff64 = "";
pub const __DECL_SIMD_erff128 = "";
pub const __DECL_SIMD_erff32x = "";
pub const __DECL_SIMD_erff64x = "";
pub const __DECL_SIMD_erff128x = "";
pub const __DECL_SIMD_tanh = "";
pub const __DECL_SIMD_tanhf = "";
pub const __DECL_SIMD_tanhl = "";
pub const __DECL_SIMD_tanhf16 = "";
pub const __DECL_SIMD_tanhf32 = "";
pub const __DECL_SIMD_tanhf64 = "";
pub const __DECL_SIMD_tanhf128 = "";
pub const __DECL_SIMD_tanhf32x = "";
pub const __DECL_SIMD_tanhf64x = "";
pub const __DECL_SIMD_tanhf128x = "";
pub const __DECL_SIMD_asinh = "";
pub const __DECL_SIMD_asinhf = "";
pub const __DECL_SIMD_asinhl = "";
pub const __DECL_SIMD_asinhf16 = "";
pub const __DECL_SIMD_asinhf32 = "";
pub const __DECL_SIMD_asinhf64 = "";
pub const __DECL_SIMD_asinhf128 = "";
pub const __DECL_SIMD_asinhf32x = "";
pub const __DECL_SIMD_asinhf64x = "";
pub const __DECL_SIMD_asinhf128x = "";
pub const __DECL_SIMD_erfc = "";
pub const __DECL_SIMD_erfcf = "";
pub const __DECL_SIMD_erfcl = "";
pub const __DECL_SIMD_erfcf16 = "";
pub const __DECL_SIMD_erfcf32 = "";
pub const __DECL_SIMD_erfcf64 = "";
pub const __DECL_SIMD_erfcf128 = "";
pub const __DECL_SIMD_erfcf32x = "";
pub const __DECL_SIMD_erfcf64x = "";
pub const __DECL_SIMD_erfcf128x = "";
pub const __DECL_SIMD_tan = "";
pub const __DECL_SIMD_tanf = "";
pub const __DECL_SIMD_tanl = "";
pub const __DECL_SIMD_tanf16 = "";
pub const __DECL_SIMD_tanf32 = "";
pub const __DECL_SIMD_tanf64 = "";
pub const __DECL_SIMD_tanf128 = "";
pub const __DECL_SIMD_tanf32x = "";
pub const __DECL_SIMD_tanf64x = "";
pub const __DECL_SIMD_tanf128x = "";
pub const HUGE_VALF = __builtin_huge_valf();
pub const INFINITY = __builtin_inff();
pub const NAN = __builtin_nanf("");
pub const __FP_LOGB0_IS_MIN = @as(c_int, 1);
pub const __FP_LOGBNAN_IS_MIN = @as(c_int, 1);
pub const FP_ILOGB0 = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const FP_ILOGBNAN = -@import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub inline fn __MATHCALL(function: anytype, suffix: anytype, args: anytype) @TypeOf(__MATHDECL(_Mdouble_, function, suffix, args)) {
    return __MATHDECL(_Mdouble_, function, suffix, args);
}
pub inline fn __MATHCALLX(function: anytype, suffix: anytype, args: anytype, attrib: anytype) @TypeOf(__MATHDECLX(_Mdouble_, function, suffix, args, attrib)) {
    return __MATHDECLX(_Mdouble_, function, suffix, args, attrib);
}
pub inline fn __MATHDECL_1(@"type": anytype, function: anytype, suffix: anytype, args: anytype) @TypeOf(__MATHDECL_1_IMPL(@"type", function, suffix, args)) {
    return __MATHDECL_1_IMPL(@"type", function, suffix, args);
}
pub inline fn __MATHDECL_ALIAS(@"type": anytype, function: anytype, suffix: anytype, args: anytype, alias: anytype) @TypeOf(__MATHDECL_1(@"type", function, suffix, args)) {
    _ = @TypeOf(alias);
    return __MATHDECL_1(@"type", function, suffix, args);
}
pub const _Mdouble_ = f64;
pub inline fn __MATH_PRECNAME(name: anytype, r: anytype) @TypeOf(__CONCAT(name, r)) {
    return __CONCAT(name, r);
}
pub const __MATH_DECLARING_DOUBLE = @as(c_int, 1);
pub const __MATH_DECLARING_FLOATN = @as(c_int, 0);
pub const __MATH_DECLARE_LDOUBLE = @as(c_int, 1);
pub inline fn __MATHCALL_NARROW(func: anytype, redir: anytype, nargs: anytype) @TypeOf(__MATHCALL_NARROW_NORMAL(func, nargs)) {
    _ = @TypeOf(redir);
    return __MATHCALL_NARROW_NORMAL(func, nargs);
}
pub inline fn signbit(x: anytype) @TypeOf(__builtin_signbit(x)) {
    return __builtin_signbit(x);
}
pub const MATH_ERRNO = @as(c_int, 1);
pub const MATH_ERREXCEPT = @as(c_int, 2);
pub const math_errhandling = MATH_ERRNO | MATH_ERREXCEPT;
pub const M_E = @as(f64, 2.7182818284590452354);
pub const M_LOG2E = @as(f64, 1.4426950408889634074);
pub const M_LOG10E = @as(f64, 0.43429448190325182765);
pub const M_LN2 = @as(f64, 0.69314718055994530942);
pub const M_LN10 = @as(f64, 2.30258509299404568402);
pub const M_PI = @as(f64, 3.14159265358979323846);
pub const M_PI_2 = @as(f64, 1.57079632679489661923);
pub const M_PI_4 = @as(f64, 0.78539816339744830962);
pub const M_1_PI = @as(f64, 0.31830988618379067154);
pub const M_2_PI = @as(f64, 0.63661977236758134308);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257390);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880);
pub const M_SQRT1_2 = @as(f64, 0.70710678118654752440);
pub const pg_backend_random = pg_strong_random;
pub const ELOG_H = "";
pub const _SETJMP_H = @as(c_int, 1);
pub const _BITS_SETJMP_H = @as(c_int, 1);
pub const __jmp_buf_tag_defined = @as(c_int, 1);
pub inline fn sigsetjmp(env: anytype, savemask: anytype) @TypeOf(__sigsetjmp(env, savemask)) {
    return __sigsetjmp(env, savemask);
}
pub const DEBUG5 = @as(c_int, 10);
pub const DEBUG4 = @as(c_int, 11);
pub const DEBUG3 = @as(c_int, 12);
pub const DEBUG2 = @as(c_int, 13);
pub const DEBUG1 = @as(c_int, 14);
pub const LOG = @as(c_int, 15);
pub const LOG_SERVER_ONLY = @as(c_int, 16);
pub const COMMERROR = LOG_SERVER_ONLY;
pub const INFO = @as(c_int, 17);
pub const NOTICE = @as(c_int, 18);
pub const WARNING = @as(c_int, 19);
pub const PGWARNING = @as(c_int, 19);
pub const WARNING_CLIENT_ONLY = @as(c_int, 20);
pub const ERROR = @as(c_int, 21);
pub const PGERROR = @as(c_int, 21);
pub const FATAL = @as(c_int, 22);
pub const PANIC = @as(c_int, 23);
pub inline fn PGSIXBIT(ch: anytype) @TypeOf((ch - '0') & @as(c_int, 0x3F)) {
    return (ch - '0') & @as(c_int, 0x3F);
}
pub inline fn PGUNSIXBIT(val: anytype) @TypeOf((val & @as(c_int, 0x3F)) + '0') {
    return (val & @as(c_int, 0x3F)) + '0';
}
pub inline fn MAKE_SQLSTATE(ch1: anytype, ch2: anytype, ch3: anytype, ch4: anytype, ch5: anytype) @TypeOf((((PGSIXBIT(ch1) + (PGSIXBIT(ch2) << @as(c_int, 6))) + (PGSIXBIT(ch3) << @as(c_int, 12))) + (PGSIXBIT(ch4) << @as(c_int, 18))) + (PGSIXBIT(ch5) << @as(c_int, 24))) {
    return (((PGSIXBIT(ch1) + (PGSIXBIT(ch2) << @as(c_int, 6))) + (PGSIXBIT(ch3) << @as(c_int, 12))) + (PGSIXBIT(ch4) << @as(c_int, 18))) + (PGSIXBIT(ch5) << @as(c_int, 24));
}
pub inline fn ERRCODE_TO_CATEGORY(ec: anytype) @TypeOf(ec & ((@as(c_int, 1) << @as(c_int, 12)) - @as(c_int, 1))) {
    return ec & ((@as(c_int, 1) << @as(c_int, 12)) - @as(c_int, 1));
}
pub inline fn ERRCODE_IS_CATEGORY(ec: anytype) @TypeOf((ec & ~((@as(c_int, 1) << @as(c_int, 12)) - @as(c_int, 1))) == @as(c_int, 0)) {
    return (ec & ~((@as(c_int, 1) << @as(c_int, 12)) - @as(c_int, 1))) == @as(c_int, 0);
}
pub const ERRCODE_SUCCESSFUL_COMPLETION = MAKE_SQLSTATE('0', '0', '0', '0', '0');
pub const ERRCODE_WARNING = MAKE_SQLSTATE('0', '1', '0', '0', '0');
pub const ERRCODE_WARNING_DYNAMIC_RESULT_SETS_RETURNED = MAKE_SQLSTATE('0', '1', '0', '0', 'C');
pub const ERRCODE_WARNING_IMPLICIT_ZERO_BIT_PADDING = MAKE_SQLSTATE('0', '1', '0', '0', '8');
pub const ERRCODE_WARNING_NULL_VALUE_ELIMINATED_IN_SET_FUNCTION = MAKE_SQLSTATE('0', '1', '0', '0', '3');
pub const ERRCODE_WARNING_PRIVILEGE_NOT_GRANTED = MAKE_SQLSTATE('0', '1', '0', '0', '7');
pub const ERRCODE_WARNING_PRIVILEGE_NOT_REVOKED = MAKE_SQLSTATE('0', '1', '0', '0', '6');
pub const ERRCODE_WARNING_STRING_DATA_RIGHT_TRUNCATION = MAKE_SQLSTATE('0', '1', '0', '0', '4');
pub const ERRCODE_WARNING_DEPRECATED_FEATURE = MAKE_SQLSTATE('0', '1', 'P', '0', '1');
pub const ERRCODE_NO_DATA = MAKE_SQLSTATE('0', '2', '0', '0', '0');
pub const ERRCODE_NO_ADDITIONAL_DYNAMIC_RESULT_SETS_RETURNED = MAKE_SQLSTATE('0', '2', '0', '0', '1');
pub const ERRCODE_SQL_STATEMENT_NOT_YET_COMPLETE = MAKE_SQLSTATE('0', '3', '0', '0', '0');
pub const ERRCODE_CONNECTION_EXCEPTION = MAKE_SQLSTATE('0', '8', '0', '0', '0');
pub const ERRCODE_CONNECTION_DOES_NOT_EXIST = MAKE_SQLSTATE('0', '8', '0', '0', '3');
pub const ERRCODE_CONNECTION_FAILURE = MAKE_SQLSTATE('0', '8', '0', '0', '6');
pub const ERRCODE_SQLCLIENT_UNABLE_TO_ESTABLISH_SQLCONNECTION = MAKE_SQLSTATE('0', '8', '0', '0', '1');
pub const ERRCODE_SQLSERVER_REJECTED_ESTABLISHMENT_OF_SQLCONNECTION = MAKE_SQLSTATE('0', '8', '0', '0', '4');
pub const ERRCODE_TRANSACTION_RESOLUTION_UNKNOWN = MAKE_SQLSTATE('0', '8', '0', '0', '7');
pub const ERRCODE_PROTOCOL_VIOLATION = MAKE_SQLSTATE('0', '8', 'P', '0', '1');
pub const ERRCODE_TRIGGERED_ACTION_EXCEPTION = MAKE_SQLSTATE('0', '9', '0', '0', '0');
pub const ERRCODE_FEATURE_NOT_SUPPORTED = MAKE_SQLSTATE('0', 'A', '0', '0', '0');
pub const ERRCODE_INVALID_TRANSACTION_INITIATION = MAKE_SQLSTATE('0', 'B', '0', '0', '0');
pub const ERRCODE_LOCATOR_EXCEPTION = MAKE_SQLSTATE('0', 'F', '0', '0', '0');
pub const ERRCODE_L_E_INVALID_SPECIFICATION = MAKE_SQLSTATE('0', 'F', '0', '0', '1');
pub const ERRCODE_INVALID_GRANTOR = MAKE_SQLSTATE('0', 'L', '0', '0', '0');
pub const ERRCODE_INVALID_GRANT_OPERATION = MAKE_SQLSTATE('0', 'L', 'P', '0', '1');
pub const ERRCODE_INVALID_ROLE_SPECIFICATION = MAKE_SQLSTATE('0', 'P', '0', '0', '0');
pub const ERRCODE_DIAGNOSTICS_EXCEPTION = MAKE_SQLSTATE('0', 'Z', '0', '0', '0');
pub const ERRCODE_STACKED_DIAGNOSTICS_ACCESSED_WITHOUT_ACTIVE_HANDLER = MAKE_SQLSTATE('0', 'Z', '0', '0', '2');
pub const ERRCODE_CASE_NOT_FOUND = MAKE_SQLSTATE('2', '0', '0', '0', '0');
pub const ERRCODE_CARDINALITY_VIOLATION = MAKE_SQLSTATE('2', '1', '0', '0', '0');
pub const ERRCODE_DATA_EXCEPTION = MAKE_SQLSTATE('2', '2', '0', '0', '0');
pub const ERRCODE_ARRAY_ELEMENT_ERROR = MAKE_SQLSTATE('2', '2', '0', '2', 'E');
pub const ERRCODE_ARRAY_SUBSCRIPT_ERROR = MAKE_SQLSTATE('2', '2', '0', '2', 'E');
pub const ERRCODE_CHARACTER_NOT_IN_REPERTOIRE = MAKE_SQLSTATE('2', '2', '0', '2', '1');
pub const ERRCODE_DATETIME_FIELD_OVERFLOW = MAKE_SQLSTATE('2', '2', '0', '0', '8');
pub const ERRCODE_DATETIME_VALUE_OUT_OF_RANGE = MAKE_SQLSTATE('2', '2', '0', '0', '8');
pub const ERRCODE_DIVISION_BY_ZERO = MAKE_SQLSTATE('2', '2', '0', '1', '2');
pub const ERRCODE_ERROR_IN_ASSIGNMENT = MAKE_SQLSTATE('2', '2', '0', '0', '5');
pub const ERRCODE_ESCAPE_CHARACTER_CONFLICT = MAKE_SQLSTATE('2', '2', '0', '0', 'B');
pub const ERRCODE_INDICATOR_OVERFLOW = MAKE_SQLSTATE('2', '2', '0', '2', '2');
pub const ERRCODE_INTERVAL_FIELD_OVERFLOW = MAKE_SQLSTATE('2', '2', '0', '1', '5');
pub const ERRCODE_INVALID_ARGUMENT_FOR_LOG = MAKE_SQLSTATE('2', '2', '0', '1', 'E');
pub const ERRCODE_INVALID_ARGUMENT_FOR_NTILE = MAKE_SQLSTATE('2', '2', '0', '1', '4');
pub const ERRCODE_INVALID_ARGUMENT_FOR_NTH_VALUE = MAKE_SQLSTATE('2', '2', '0', '1', '6');
pub const ERRCODE_INVALID_ARGUMENT_FOR_POWER_FUNCTION = MAKE_SQLSTATE('2', '2', '0', '1', 'F');
pub const ERRCODE_INVALID_ARGUMENT_FOR_WIDTH_BUCKET_FUNCTION = MAKE_SQLSTATE('2', '2', '0', '1', 'G');
pub const ERRCODE_INVALID_CHARACTER_VALUE_FOR_CAST = MAKE_SQLSTATE('2', '2', '0', '1', '8');
pub const ERRCODE_INVALID_DATETIME_FORMAT = MAKE_SQLSTATE('2', '2', '0', '0', '7');
pub const ERRCODE_INVALID_ESCAPE_CHARACTER = MAKE_SQLSTATE('2', '2', '0', '1', '9');
pub const ERRCODE_INVALID_ESCAPE_OCTET = MAKE_SQLSTATE('2', '2', '0', '0', 'D');
pub const ERRCODE_INVALID_ESCAPE_SEQUENCE = MAKE_SQLSTATE('2', '2', '0', '2', '5');
pub const ERRCODE_NONSTANDARD_USE_OF_ESCAPE_CHARACTER = MAKE_SQLSTATE('2', '2', 'P', '0', '6');
pub const ERRCODE_INVALID_INDICATOR_PARAMETER_VALUE = MAKE_SQLSTATE('2', '2', '0', '1', '0');
pub const ERRCODE_INVALID_PARAMETER_VALUE = MAKE_SQLSTATE('2', '2', '0', '2', '3');
pub const ERRCODE_INVALID_PRECEDING_OR_FOLLOWING_SIZE = MAKE_SQLSTATE('2', '2', '0', '1', '3');
pub const ERRCODE_INVALID_REGULAR_EXPRESSION = MAKE_SQLSTATE('2', '2', '0', '1', 'B');
pub const ERRCODE_INVALID_ROW_COUNT_IN_LIMIT_CLAUSE = MAKE_SQLSTATE('2', '2', '0', '1', 'W');
pub const ERRCODE_INVALID_ROW_COUNT_IN_RESULT_OFFSET_CLAUSE = MAKE_SQLSTATE('2', '2', '0', '1', 'X');
pub const ERRCODE_INVALID_TABLESAMPLE_ARGUMENT = MAKE_SQLSTATE('2', '2', '0', '2', 'H');
pub const ERRCODE_INVALID_TABLESAMPLE_REPEAT = MAKE_SQLSTATE('2', '2', '0', '2', 'G');
pub const ERRCODE_INVALID_TIME_ZONE_DISPLACEMENT_VALUE = MAKE_SQLSTATE('2', '2', '0', '0', '9');
pub const ERRCODE_INVALID_USE_OF_ESCAPE_CHARACTER = MAKE_SQLSTATE('2', '2', '0', '0', 'C');
pub const ERRCODE_MOST_SPECIFIC_TYPE_MISMATCH = MAKE_SQLSTATE('2', '2', '0', '0', 'G');
pub const ERRCODE_NULL_VALUE_NOT_ALLOWED = MAKE_SQLSTATE('2', '2', '0', '0', '4');
pub const ERRCODE_NULL_VALUE_NO_INDICATOR_PARAMETER = MAKE_SQLSTATE('2', '2', '0', '0', '2');
pub const ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE = MAKE_SQLSTATE('2', '2', '0', '0', '3');
pub const ERRCODE_SEQUENCE_GENERATOR_LIMIT_EXCEEDED = MAKE_SQLSTATE('2', '2', '0', '0', 'H');
pub const ERRCODE_STRING_DATA_LENGTH_MISMATCH = MAKE_SQLSTATE('2', '2', '0', '2', '6');
pub const ERRCODE_STRING_DATA_RIGHT_TRUNCATION = MAKE_SQLSTATE('2', '2', '0', '0', '1');
pub const ERRCODE_SUBSTRING_ERROR = MAKE_SQLSTATE('2', '2', '0', '1', '1');
pub const ERRCODE_TRIM_ERROR = MAKE_SQLSTATE('2', '2', '0', '2', '7');
pub const ERRCODE_UNTERMINATED_C_STRING = MAKE_SQLSTATE('2', '2', '0', '2', '4');
pub const ERRCODE_ZERO_LENGTH_CHARACTER_STRING = MAKE_SQLSTATE('2', '2', '0', '0', 'F');
pub const ERRCODE_FLOATING_POINT_EXCEPTION = MAKE_SQLSTATE('2', '2', 'P', '0', '1');
pub const ERRCODE_INVALID_TEXT_REPRESENTATION = MAKE_SQLSTATE('2', '2', 'P', '0', '2');
pub const ERRCODE_INVALID_BINARY_REPRESENTATION = MAKE_SQLSTATE('2', '2', 'P', '0', '3');
pub const ERRCODE_BAD_COPY_FILE_FORMAT = MAKE_SQLSTATE('2', '2', 'P', '0', '4');
pub const ERRCODE_UNTRANSLATABLE_CHARACTER = MAKE_SQLSTATE('2', '2', 'P', '0', '5');
pub const ERRCODE_NOT_AN_XML_DOCUMENT = MAKE_SQLSTATE('2', '2', '0', '0', 'L');
pub const ERRCODE_INVALID_XML_DOCUMENT = MAKE_SQLSTATE('2', '2', '0', '0', 'M');
pub const ERRCODE_INVALID_XML_CONTENT = MAKE_SQLSTATE('2', '2', '0', '0', 'N');
pub const ERRCODE_INVALID_XML_COMMENT = MAKE_SQLSTATE('2', '2', '0', '0', 'S');
pub const ERRCODE_INVALID_XML_PROCESSING_INSTRUCTION = MAKE_SQLSTATE('2', '2', '0', '0', 'T');
pub const ERRCODE_DUPLICATE_JSON_OBJECT_KEY_VALUE = MAKE_SQLSTATE('2', '2', '0', '3', '0');
pub const ERRCODE_INVALID_ARGUMENT_FOR_SQL_JSON_DATETIME_FUNCTION = MAKE_SQLSTATE('2', '2', '0', '3', '1');
pub const ERRCODE_INVALID_JSON_TEXT = MAKE_SQLSTATE('2', '2', '0', '3', '2');
pub const ERRCODE_INVALID_SQL_JSON_SUBSCRIPT = MAKE_SQLSTATE('2', '2', '0', '3', '3');
pub const ERRCODE_MORE_THAN_ONE_SQL_JSON_ITEM = MAKE_SQLSTATE('2', '2', '0', '3', '4');
pub const ERRCODE_NO_SQL_JSON_ITEM = MAKE_SQLSTATE('2', '2', '0', '3', '5');
pub const ERRCODE_NON_NUMERIC_SQL_JSON_ITEM = MAKE_SQLSTATE('2', '2', '0', '3', '6');
pub const ERRCODE_NON_UNIQUE_KEYS_IN_A_JSON_OBJECT = MAKE_SQLSTATE('2', '2', '0', '3', '7');
pub const ERRCODE_SINGLETON_SQL_JSON_ITEM_REQUIRED = MAKE_SQLSTATE('2', '2', '0', '3', '8');
pub const ERRCODE_SQL_JSON_ARRAY_NOT_FOUND = MAKE_SQLSTATE('2', '2', '0', '3', '9');
pub const ERRCODE_SQL_JSON_MEMBER_NOT_FOUND = MAKE_SQLSTATE('2', '2', '0', '3', 'A');
pub const ERRCODE_SQL_JSON_NUMBER_NOT_FOUND = MAKE_SQLSTATE('2', '2', '0', '3', 'B');
pub const ERRCODE_SQL_JSON_OBJECT_NOT_FOUND = MAKE_SQLSTATE('2', '2', '0', '3', 'C');
pub const ERRCODE_TOO_MANY_JSON_ARRAY_ELEMENTS = MAKE_SQLSTATE('2', '2', '0', '3', 'D');
pub const ERRCODE_TOO_MANY_JSON_OBJECT_MEMBERS = MAKE_SQLSTATE('2', '2', '0', '3', 'E');
pub const ERRCODE_SQL_JSON_SCALAR_REQUIRED = MAKE_SQLSTATE('2', '2', '0', '3', 'F');
pub const ERRCODE_SQL_JSON_ITEM_CANNOT_BE_CAST_TO_TARGET_TYPE = MAKE_SQLSTATE('2', '2', '0', '3', 'G');
pub const ERRCODE_INTEGRITY_CONSTRAINT_VIOLATION = MAKE_SQLSTATE('2', '3', '0', '0', '0');
pub const ERRCODE_RESTRICT_VIOLATION = MAKE_SQLSTATE('2', '3', '0', '0', '1');
pub const ERRCODE_NOT_NULL_VIOLATION = MAKE_SQLSTATE('2', '3', '5', '0', '2');
pub const ERRCODE_FOREIGN_KEY_VIOLATION = MAKE_SQLSTATE('2', '3', '5', '0', '3');
pub const ERRCODE_UNIQUE_VIOLATION = MAKE_SQLSTATE('2', '3', '5', '0', '5');
pub const ERRCODE_CHECK_VIOLATION = MAKE_SQLSTATE('2', '3', '5', '1', '4');
pub const ERRCODE_EXCLUSION_VIOLATION = MAKE_SQLSTATE('2', '3', 'P', '0', '1');
pub const ERRCODE_INVALID_CURSOR_STATE = MAKE_SQLSTATE('2', '4', '0', '0', '0');
pub const ERRCODE_INVALID_TRANSACTION_STATE = MAKE_SQLSTATE('2', '5', '0', '0', '0');
pub const ERRCODE_ACTIVE_SQL_TRANSACTION = MAKE_SQLSTATE('2', '5', '0', '0', '1');
pub const ERRCODE_BRANCH_TRANSACTION_ALREADY_ACTIVE = MAKE_SQLSTATE('2', '5', '0', '0', '2');
pub const ERRCODE_HELD_CURSOR_REQUIRES_SAME_ISOLATION_LEVEL = MAKE_SQLSTATE('2', '5', '0', '0', '8');
pub const ERRCODE_INAPPROPRIATE_ACCESS_MODE_FOR_BRANCH_TRANSACTION = MAKE_SQLSTATE('2', '5', '0', '0', '3');
pub const ERRCODE_INAPPROPRIATE_ISOLATION_LEVEL_FOR_BRANCH_TRANSACTION = MAKE_SQLSTATE('2', '5', '0', '0', '4');
pub const ERRCODE_NO_ACTIVE_SQL_TRANSACTION_FOR_BRANCH_TRANSACTION = MAKE_SQLSTATE('2', '5', '0', '0', '5');
pub const ERRCODE_READ_ONLY_SQL_TRANSACTION = MAKE_SQLSTATE('2', '5', '0', '0', '6');
pub const ERRCODE_SCHEMA_AND_DATA_STATEMENT_MIXING_NOT_SUPPORTED = MAKE_SQLSTATE('2', '5', '0', '0', '7');
pub const ERRCODE_NO_ACTIVE_SQL_TRANSACTION = MAKE_SQLSTATE('2', '5', 'P', '0', '1');
pub const ERRCODE_IN_FAILED_SQL_TRANSACTION = MAKE_SQLSTATE('2', '5', 'P', '0', '2');
pub const ERRCODE_IDLE_IN_TRANSACTION_SESSION_TIMEOUT = MAKE_SQLSTATE('2', '5', 'P', '0', '3');
pub const ERRCODE_INVALID_SQL_STATEMENT_NAME = MAKE_SQLSTATE('2', '6', '0', '0', '0');
pub const ERRCODE_TRIGGERED_DATA_CHANGE_VIOLATION = MAKE_SQLSTATE('2', '7', '0', '0', '0');
pub const ERRCODE_INVALID_AUTHORIZATION_SPECIFICATION = MAKE_SQLSTATE('2', '8', '0', '0', '0');
pub const ERRCODE_INVALID_PASSWORD = MAKE_SQLSTATE('2', '8', 'P', '0', '1');
pub const ERRCODE_DEPENDENT_PRIVILEGE_DESCRIPTORS_STILL_EXIST = MAKE_SQLSTATE('2', 'B', '0', '0', '0');
pub const ERRCODE_DEPENDENT_OBJECTS_STILL_EXIST = MAKE_SQLSTATE('2', 'B', 'P', '0', '1');
pub const ERRCODE_INVALID_TRANSACTION_TERMINATION = MAKE_SQLSTATE('2', 'D', '0', '0', '0');
pub const ERRCODE_SQL_ROUTINE_EXCEPTION = MAKE_SQLSTATE('2', 'F', '0', '0', '0');
pub const ERRCODE_S_R_E_FUNCTION_EXECUTED_NO_RETURN_STATEMENT = MAKE_SQLSTATE('2', 'F', '0', '0', '5');
pub const ERRCODE_S_R_E_MODIFYING_SQL_DATA_NOT_PERMITTED = MAKE_SQLSTATE('2', 'F', '0', '0', '2');
pub const ERRCODE_S_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED = MAKE_SQLSTATE('2', 'F', '0', '0', '3');
pub const ERRCODE_S_R_E_READING_SQL_DATA_NOT_PERMITTED = MAKE_SQLSTATE('2', 'F', '0', '0', '4');
pub const ERRCODE_INVALID_CURSOR_NAME = MAKE_SQLSTATE('3', '4', '0', '0', '0');
pub const ERRCODE_EXTERNAL_ROUTINE_EXCEPTION = MAKE_SQLSTATE('3', '8', '0', '0', '0');
pub const ERRCODE_E_R_E_CONTAINING_SQL_NOT_PERMITTED = MAKE_SQLSTATE('3', '8', '0', '0', '1');
pub const ERRCODE_E_R_E_MODIFYING_SQL_DATA_NOT_PERMITTED = MAKE_SQLSTATE('3', '8', '0', '0', '2');
pub const ERRCODE_E_R_E_PROHIBITED_SQL_STATEMENT_ATTEMPTED = MAKE_SQLSTATE('3', '8', '0', '0', '3');
pub const ERRCODE_E_R_E_READING_SQL_DATA_NOT_PERMITTED = MAKE_SQLSTATE('3', '8', '0', '0', '4');
pub const ERRCODE_EXTERNAL_ROUTINE_INVOCATION_EXCEPTION = MAKE_SQLSTATE('3', '9', '0', '0', '0');
pub const ERRCODE_E_R_I_E_INVALID_SQLSTATE_RETURNED = MAKE_SQLSTATE('3', '9', '0', '0', '1');
pub const ERRCODE_E_R_I_E_NULL_VALUE_NOT_ALLOWED = MAKE_SQLSTATE('3', '9', '0', '0', '4');
pub const ERRCODE_E_R_I_E_TRIGGER_PROTOCOL_VIOLATED = MAKE_SQLSTATE('3', '9', 'P', '0', '1');
pub const ERRCODE_E_R_I_E_SRF_PROTOCOL_VIOLATED = MAKE_SQLSTATE('3', '9', 'P', '0', '2');
pub const ERRCODE_E_R_I_E_EVENT_TRIGGER_PROTOCOL_VIOLATED = MAKE_SQLSTATE('3', '9', 'P', '0', '3');
pub const ERRCODE_SAVEPOINT_EXCEPTION = MAKE_SQLSTATE('3', 'B', '0', '0', '0');
pub const ERRCODE_S_E_INVALID_SPECIFICATION = MAKE_SQLSTATE('3', 'B', '0', '0', '1');
pub const ERRCODE_INVALID_CATALOG_NAME = MAKE_SQLSTATE('3', 'D', '0', '0', '0');
pub const ERRCODE_INVALID_SCHEMA_NAME = MAKE_SQLSTATE('3', 'F', '0', '0', '0');
pub const ERRCODE_TRANSACTION_ROLLBACK = MAKE_SQLSTATE('4', '0', '0', '0', '0');
pub const ERRCODE_T_R_INTEGRITY_CONSTRAINT_VIOLATION = MAKE_SQLSTATE('4', '0', '0', '0', '2');
pub const ERRCODE_T_R_SERIALIZATION_FAILURE = MAKE_SQLSTATE('4', '0', '0', '0', '1');
pub const ERRCODE_T_R_STATEMENT_COMPLETION_UNKNOWN = MAKE_SQLSTATE('4', '0', '0', '0', '3');
pub const ERRCODE_T_R_DEADLOCK_DETECTED = MAKE_SQLSTATE('4', '0', 'P', '0', '1');
pub const ERRCODE_SYNTAX_ERROR_OR_ACCESS_RULE_VIOLATION = MAKE_SQLSTATE('4', '2', '0', '0', '0');
pub const ERRCODE_SYNTAX_ERROR = MAKE_SQLSTATE('4', '2', '6', '0', '1');
pub const ERRCODE_INSUFFICIENT_PRIVILEGE = MAKE_SQLSTATE('4', '2', '5', '0', '1');
pub const ERRCODE_CANNOT_COERCE = MAKE_SQLSTATE('4', '2', '8', '4', '6');
pub const ERRCODE_GROUPING_ERROR = MAKE_SQLSTATE('4', '2', '8', '0', '3');
pub const ERRCODE_WINDOWING_ERROR = MAKE_SQLSTATE('4', '2', 'P', '2', '0');
pub const ERRCODE_INVALID_RECURSION = MAKE_SQLSTATE('4', '2', 'P', '1', '9');
pub const ERRCODE_INVALID_FOREIGN_KEY = MAKE_SQLSTATE('4', '2', '8', '3', '0');
pub const ERRCODE_INVALID_NAME = MAKE_SQLSTATE('4', '2', '6', '0', '2');
pub const ERRCODE_NAME_TOO_LONG = MAKE_SQLSTATE('4', '2', '6', '2', '2');
pub const ERRCODE_RESERVED_NAME = MAKE_SQLSTATE('4', '2', '9', '3', '9');
pub const ERRCODE_DATATYPE_MISMATCH = MAKE_SQLSTATE('4', '2', '8', '0', '4');
pub const ERRCODE_INDETERMINATE_DATATYPE = MAKE_SQLSTATE('4', '2', 'P', '1', '8');
pub const ERRCODE_COLLATION_MISMATCH = MAKE_SQLSTATE('4', '2', 'P', '2', '1');
pub const ERRCODE_INDETERMINATE_COLLATION = MAKE_SQLSTATE('4', '2', 'P', '2', '2');
pub const ERRCODE_WRONG_OBJECT_TYPE = MAKE_SQLSTATE('4', '2', '8', '0', '9');
pub const ERRCODE_GENERATED_ALWAYS = MAKE_SQLSTATE('4', '2', '8', 'C', '9');
pub const ERRCODE_UNDEFINED_COLUMN = MAKE_SQLSTATE('4', '2', '7', '0', '3');
pub const ERRCODE_UNDEFINED_CURSOR = MAKE_SQLSTATE('3', '4', '0', '0', '0');
pub const ERRCODE_UNDEFINED_DATABASE = MAKE_SQLSTATE('3', 'D', '0', '0', '0');
pub const ERRCODE_UNDEFINED_FUNCTION = MAKE_SQLSTATE('4', '2', '8', '8', '3');
pub const ERRCODE_UNDEFINED_PSTATEMENT = MAKE_SQLSTATE('2', '6', '0', '0', '0');
pub const ERRCODE_UNDEFINED_SCHEMA = MAKE_SQLSTATE('3', 'F', '0', '0', '0');
pub const ERRCODE_UNDEFINED_TABLE = MAKE_SQLSTATE('4', '2', 'P', '0', '1');
pub const ERRCODE_UNDEFINED_PARAMETER = MAKE_SQLSTATE('4', '2', 'P', '0', '2');
pub const ERRCODE_UNDEFINED_OBJECT = MAKE_SQLSTATE('4', '2', '7', '0', '4');
pub const ERRCODE_DUPLICATE_COLUMN = MAKE_SQLSTATE('4', '2', '7', '0', '1');
pub const ERRCODE_DUPLICATE_CURSOR = MAKE_SQLSTATE('4', '2', 'P', '0', '3');
pub const ERRCODE_DUPLICATE_DATABASE = MAKE_SQLSTATE('4', '2', 'P', '0', '4');
pub const ERRCODE_DUPLICATE_FUNCTION = MAKE_SQLSTATE('4', '2', '7', '2', '3');
pub const ERRCODE_DUPLICATE_PSTATEMENT = MAKE_SQLSTATE('4', '2', 'P', '0', '5');
pub const ERRCODE_DUPLICATE_SCHEMA = MAKE_SQLSTATE('4', '2', 'P', '0', '6');
pub const ERRCODE_DUPLICATE_TABLE = MAKE_SQLSTATE('4', '2', 'P', '0', '7');
pub const ERRCODE_DUPLICATE_ALIAS = MAKE_SQLSTATE('4', '2', '7', '1', '2');
pub const ERRCODE_DUPLICATE_OBJECT = MAKE_SQLSTATE('4', '2', '7', '1', '0');
pub const ERRCODE_AMBIGUOUS_COLUMN = MAKE_SQLSTATE('4', '2', '7', '0', '2');
pub const ERRCODE_AMBIGUOUS_FUNCTION = MAKE_SQLSTATE('4', '2', '7', '2', '5');
pub const ERRCODE_AMBIGUOUS_PARAMETER = MAKE_SQLSTATE('4', '2', 'P', '0', '8');
pub const ERRCODE_AMBIGUOUS_ALIAS = MAKE_SQLSTATE('4', '2', 'P', '0', '9');
pub const ERRCODE_INVALID_COLUMN_REFERENCE = MAKE_SQLSTATE('4', '2', 'P', '1', '0');
pub const ERRCODE_INVALID_COLUMN_DEFINITION = MAKE_SQLSTATE('4', '2', '6', '1', '1');
pub const ERRCODE_INVALID_CURSOR_DEFINITION = MAKE_SQLSTATE('4', '2', 'P', '1', '1');
pub const ERRCODE_INVALID_DATABASE_DEFINITION = MAKE_SQLSTATE('4', '2', 'P', '1', '2');
pub const ERRCODE_INVALID_FUNCTION_DEFINITION = MAKE_SQLSTATE('4', '2', 'P', '1', '3');
pub const ERRCODE_INVALID_PSTATEMENT_DEFINITION = MAKE_SQLSTATE('4', '2', 'P', '1', '4');
pub const ERRCODE_INVALID_SCHEMA_DEFINITION = MAKE_SQLSTATE('4', '2', 'P', '1', '5');
pub const ERRCODE_INVALID_TABLE_DEFINITION = MAKE_SQLSTATE('4', '2', 'P', '1', '6');
pub const ERRCODE_INVALID_OBJECT_DEFINITION = MAKE_SQLSTATE('4', '2', 'P', '1', '7');
pub const ERRCODE_WITH_CHECK_OPTION_VIOLATION = MAKE_SQLSTATE('4', '4', '0', '0', '0');
pub const ERRCODE_INSUFFICIENT_RESOURCES = MAKE_SQLSTATE('5', '3', '0', '0', '0');
pub const ERRCODE_DISK_FULL = MAKE_SQLSTATE('5', '3', '1', '0', '0');
pub const ERRCODE_OUT_OF_MEMORY = MAKE_SQLSTATE('5', '3', '2', '0', '0');
pub const ERRCODE_TOO_MANY_CONNECTIONS = MAKE_SQLSTATE('5', '3', '3', '0', '0');
pub const ERRCODE_CONFIGURATION_LIMIT_EXCEEDED = MAKE_SQLSTATE('5', '3', '4', '0', '0');
pub const ERRCODE_PROGRAM_LIMIT_EXCEEDED = MAKE_SQLSTATE('5', '4', '0', '0', '0');
pub const ERRCODE_STATEMENT_TOO_COMPLEX = MAKE_SQLSTATE('5', '4', '0', '0', '1');
pub const ERRCODE_TOO_MANY_COLUMNS = MAKE_SQLSTATE('5', '4', '0', '1', '1');
pub const ERRCODE_TOO_MANY_ARGUMENTS = MAKE_SQLSTATE('5', '4', '0', '2', '3');
pub const ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE = MAKE_SQLSTATE('5', '5', '0', '0', '0');
pub const ERRCODE_OBJECT_IN_USE = MAKE_SQLSTATE('5', '5', '0', '0', '6');
pub const ERRCODE_CANT_CHANGE_RUNTIME_PARAM = MAKE_SQLSTATE('5', '5', 'P', '0', '2');
pub const ERRCODE_LOCK_NOT_AVAILABLE = MAKE_SQLSTATE('5', '5', 'P', '0', '3');
pub const ERRCODE_UNSAFE_NEW_ENUM_VALUE_USAGE = MAKE_SQLSTATE('5', '5', 'P', '0', '4');
pub const ERRCODE_OPERATOR_INTERVENTION = MAKE_SQLSTATE('5', '7', '0', '0', '0');
pub const ERRCODE_QUERY_CANCELED = MAKE_SQLSTATE('5', '7', '0', '1', '4');
pub const ERRCODE_ADMIN_SHUTDOWN = MAKE_SQLSTATE('5', '7', 'P', '0', '1');
pub const ERRCODE_CRASH_SHUTDOWN = MAKE_SQLSTATE('5', '7', 'P', '0', '2');
pub const ERRCODE_CANNOT_CONNECT_NOW = MAKE_SQLSTATE('5', '7', 'P', '0', '3');
pub const ERRCODE_DATABASE_DROPPED = MAKE_SQLSTATE('5', '7', 'P', '0', '4');
pub const ERRCODE_IDLE_SESSION_TIMEOUT = MAKE_SQLSTATE('5', '7', 'P', '0', '5');
pub const ERRCODE_SYSTEM_ERROR = MAKE_SQLSTATE('5', '8', '0', '0', '0');
pub const ERRCODE_IO_ERROR = MAKE_SQLSTATE('5', '8', '0', '3', '0');
pub const ERRCODE_UNDEFINED_FILE = MAKE_SQLSTATE('5', '8', 'P', '0', '1');
pub const ERRCODE_DUPLICATE_FILE = MAKE_SQLSTATE('5', '8', 'P', '0', '2');
pub const ERRCODE_SNAPSHOT_TOO_OLD = MAKE_SQLSTATE('7', '2', '0', '0', '0');
pub const ERRCODE_CONFIG_FILE_ERROR = MAKE_SQLSTATE('F', '0', '0', '0', '0');
pub const ERRCODE_LOCK_FILE_EXISTS = MAKE_SQLSTATE('F', '0', '0', '0', '1');
pub const ERRCODE_FDW_ERROR = MAKE_SQLSTATE('H', 'V', '0', '0', '0');
pub const ERRCODE_FDW_COLUMN_NAME_NOT_FOUND = MAKE_SQLSTATE('H', 'V', '0', '0', '5');
pub const ERRCODE_FDW_DYNAMIC_PARAMETER_VALUE_NEEDED = MAKE_SQLSTATE('H', 'V', '0', '0', '2');
pub const ERRCODE_FDW_FUNCTION_SEQUENCE_ERROR = MAKE_SQLSTATE('H', 'V', '0', '1', '0');
pub const ERRCODE_FDW_INCONSISTENT_DESCRIPTOR_INFORMATION = MAKE_SQLSTATE('H', 'V', '0', '2', '1');
pub const ERRCODE_FDW_INVALID_ATTRIBUTE_VALUE = MAKE_SQLSTATE('H', 'V', '0', '2', '4');
pub const ERRCODE_FDW_INVALID_COLUMN_NAME = MAKE_SQLSTATE('H', 'V', '0', '0', '7');
pub const ERRCODE_FDW_INVALID_COLUMN_NUMBER = MAKE_SQLSTATE('H', 'V', '0', '0', '8');
pub const ERRCODE_FDW_INVALID_DATA_TYPE = MAKE_SQLSTATE('H', 'V', '0', '0', '4');
pub const ERRCODE_FDW_INVALID_DATA_TYPE_DESCRIPTORS = MAKE_SQLSTATE('H', 'V', '0', '0', '6');
pub const ERRCODE_FDW_INVALID_DESCRIPTOR_FIELD_IDENTIFIER = MAKE_SQLSTATE('H', 'V', '0', '9', '1');
pub const ERRCODE_FDW_INVALID_HANDLE = MAKE_SQLSTATE('H', 'V', '0', '0', 'B');
pub const ERRCODE_FDW_INVALID_OPTION_INDEX = MAKE_SQLSTATE('H', 'V', '0', '0', 'C');
pub const ERRCODE_FDW_INVALID_OPTION_NAME = MAKE_SQLSTATE('H', 'V', '0', '0', 'D');
pub const ERRCODE_FDW_INVALID_STRING_LENGTH_OR_BUFFER_LENGTH = MAKE_SQLSTATE('H', 'V', '0', '9', '0');
pub const ERRCODE_FDW_INVALID_STRING_FORMAT = MAKE_SQLSTATE('H', 'V', '0', '0', 'A');
pub const ERRCODE_FDW_INVALID_USE_OF_NULL_POINTER = MAKE_SQLSTATE('H', 'V', '0', '0', '9');
pub const ERRCODE_FDW_TOO_MANY_HANDLES = MAKE_SQLSTATE('H', 'V', '0', '1', '4');
pub const ERRCODE_FDW_OUT_OF_MEMORY = MAKE_SQLSTATE('H', 'V', '0', '0', '1');
pub const ERRCODE_FDW_NO_SCHEMAS = MAKE_SQLSTATE('H', 'V', '0', '0', 'P');
pub const ERRCODE_FDW_OPTION_NAME_NOT_FOUND = MAKE_SQLSTATE('H', 'V', '0', '0', 'J');
pub const ERRCODE_FDW_REPLY_HANDLE = MAKE_SQLSTATE('H', 'V', '0', '0', 'K');
pub const ERRCODE_FDW_SCHEMA_NOT_FOUND = MAKE_SQLSTATE('H', 'V', '0', '0', 'Q');
pub const ERRCODE_FDW_TABLE_NOT_FOUND = MAKE_SQLSTATE('H', 'V', '0', '0', 'R');
pub const ERRCODE_FDW_UNABLE_TO_CREATE_EXECUTION = MAKE_SQLSTATE('H', 'V', '0', '0', 'L');
pub const ERRCODE_FDW_UNABLE_TO_CREATE_REPLY = MAKE_SQLSTATE('H', 'V', '0', '0', 'M');
pub const ERRCODE_FDW_UNABLE_TO_ESTABLISH_CONNECTION = MAKE_SQLSTATE('H', 'V', '0', '0', 'N');
pub const ERRCODE_PLPGSQL_ERROR = MAKE_SQLSTATE('P', '0', '0', '0', '0');
pub const ERRCODE_RAISE_EXCEPTION = MAKE_SQLSTATE('P', '0', '0', '0', '1');
pub const ERRCODE_NO_DATA_FOUND = MAKE_SQLSTATE('P', '0', '0', '0', '2');
pub const ERRCODE_TOO_MANY_ROWS = MAKE_SQLSTATE('P', '0', '0', '0', '3');
pub const ERRCODE_ASSERT_FAILURE = MAKE_SQLSTATE('P', '0', '0', '0', '4');
pub const ERRCODE_INTERNAL_ERROR = MAKE_SQLSTATE('X', 'X', '0', '0', '0');
pub const ERRCODE_DATA_CORRUPTED = MAKE_SQLSTATE('X', 'X', '0', '0', '1');
pub const ERRCODE_INDEX_CORRUPTED = MAKE_SQLSTATE('X', 'X', '0', '0', '2');
pub inline fn pg_prevent_errno_in_scope() @TypeOf((c_int ++ __errno_location ++ pg_attribute_unused)()) {
    return (c_int ++ __errno_location ++ pg_attribute_unused)();
}
pub const TEXTDOMAIN = NULL;
pub const errcontext = blk: {
    _ = set_errcontext_domain(TEXTDOMAIN);
    break :blk errcontext_msg;
};
pub inline fn PG_RE_THROW() @TypeOf(pg_re_throw()) {
    return pg_re_throw();
}
pub const LOG_DESTINATION_STDERR = @as(c_int, 1);
pub const LOG_DESTINATION_SYSLOG = @as(c_int, 2);
pub const LOG_DESTINATION_EVENTLOG = @as(c_int, 4);
pub const LOG_DESTINATION_CSVLOG = @as(c_int, 8);
pub const LOG_DESTINATION_JSONLOG = @as(c_int, 16);
pub const PALLOC_H = "";
pub const MCXT_ALLOC_HUGE = @as(c_int, 0x01);
pub const MCXT_ALLOC_NO_OOM = @as(c_int, 0x02);
pub const MCXT_ALLOC_ZERO = @as(c_int, 0x04);
pub inline fn palloc0fast(sz: anytype) @TypeOf(if (MemSetTest(@as(c_int, 0), sz)) MemoryContextAllocZeroAligned(CurrentMemoryContext, sz) else MemoryContextAllocZero(CurrentMemoryContext, sz)) {
    return if (MemSetTest(@as(c_int, 0), sz)) MemoryContextAllocZeroAligned(CurrentMemoryContext, sz) else MemoryContextAllocZero(CurrentMemoryContext, sz);
}
pub const VARLENA_EXTSIZE_BITS = @as(c_int, 30);
pub const VARLENA_EXTSIZE_MASK = (@as(c_uint, 1) << VARLENA_EXTSIZE_BITS) - @as(c_int, 1);
pub inline fn VARTAG_IS_EXPANDED(tag: anytype) @TypeOf((tag & ~@as(c_int, 1)) == VARTAG_EXPANDED_RO) {
    return (tag & ~@as(c_int, 1)) == VARTAG_EXPANDED_RO;
}
pub inline fn VARTAG_SIZE(tag: anytype) @TypeOf(if (tag == VARTAG_INDIRECT) @import("std").zig.c_translation.sizeof(varatt_indirect) else if (VARTAG_IS_EXPANDED(tag)) @import("std").zig.c_translation.sizeof(varatt_expanded) else if (tag == VARTAG_ONDISK) @import("std").zig.c_translation.sizeof(varatt_external) else TrapMacro(@"true", "unrecognized TOAST vartag")) {
    return if (tag == VARTAG_INDIRECT) @import("std").zig.c_translation.sizeof(varatt_indirect) else if (VARTAG_IS_EXPANDED(tag)) @import("std").zig.c_translation.sizeof(varatt_expanded) else if (tag == VARTAG_ONDISK) @import("std").zig.c_translation.sizeof(varatt_external) else TrapMacro(@"true", "unrecognized TOAST vartag");
}
pub inline fn VARATT_IS_4B(PTR: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header & @as(c_int, 0x01)) == @as(c_int, 0x00)) {
    return (@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header & @as(c_int, 0x01)) == @as(c_int, 0x00);
}
pub inline fn VARATT_IS_4B_U(PTR: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header & @as(c_int, 0x03)) == @as(c_int, 0x00)) {
    return (@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header & @as(c_int, 0x03)) == @as(c_int, 0x00);
}
pub inline fn VARATT_IS_4B_C(PTR: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header & @as(c_int, 0x03)) == @as(c_int, 0x02)) {
    return (@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header & @as(c_int, 0x03)) == @as(c_int, 0x02);
}
pub inline fn VARATT_IS_1B(PTR: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header & @as(c_int, 0x01)) == @as(c_int, 0x01)) {
    return (@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header & @as(c_int, 0x01)) == @as(c_int, 0x01);
}
pub inline fn VARATT_IS_1B_E(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header == @as(c_int, 0x01)) {
    return @import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header == @as(c_int, 0x01);
}
pub inline fn VARATT_NOT_PAD_BYTE(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]uint8, PTR).* != @as(c_int, 0)) {
    return @import("std").zig.c_translation.cast([*c]uint8, PTR).* != @as(c_int, 0);
}
pub inline fn VARSIZE_4B(PTR: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_4byte.va_header >> @as(c_int, 2)) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x3FFFFFFF, .hexadecimal)) {
    return (@import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_4byte.va_header >> @as(c_int, 2)) & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x3FFFFFFF, .hexadecimal);
}
pub inline fn VARSIZE_1B(PTR: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header >> @as(c_int, 1)) & @as(c_int, 0x7F)) {
    return (@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_header >> @as(c_int, 1)) & @as(c_int, 0x7F);
}
pub inline fn VARTAG_1B_E(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]varattrib_1b_e, PTR).*.va_tag) {
    return @import("std").zig.c_translation.cast([*c]varattrib_1b_e, PTR).*.va_tag;
}
pub inline fn VARDATA_4B(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_4byte.va_data) {
    return @import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_4byte.va_data;
}
pub inline fn VARDATA_4B_C(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_compressed.va_data) {
    return @import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_compressed.va_data;
}
pub inline fn VARDATA_1B(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_data) {
    return @import("std").zig.c_translation.cast([*c]varattrib_1b, PTR).*.va_data;
}
pub inline fn VARDATA_1B_E(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]varattrib_1b_e, PTR).*.va_data) {
    return @import("std").zig.c_translation.cast([*c]varattrib_1b_e, PTR).*.va_data;
}
pub const VARATT_SHORT_MAX = @as(c_int, 0x7F);
pub inline fn VARATT_CAN_MAKE_SHORT(PTR: anytype) @TypeOf((VARATT_IS_4B_U(PTR) != 0) and (((VARSIZE(PTR) - VARHDRSZ) + VARHDRSZ_SHORT) <= VARATT_SHORT_MAX)) {
    return (VARATT_IS_4B_U(PTR) != 0) and (((VARSIZE(PTR) - VARHDRSZ) + VARHDRSZ_SHORT) <= VARATT_SHORT_MAX);
}
pub inline fn VARATT_CONVERTED_SHORT_SIZE(PTR: anytype) @TypeOf((VARSIZE(PTR) - VARHDRSZ) + VARHDRSZ_SHORT) {
    return (VARSIZE(PTR) - VARHDRSZ) + VARHDRSZ_SHORT;
}
pub inline fn VARDATA(PTR: anytype) @TypeOf(VARDATA_4B(PTR)) {
    return VARDATA_4B(PTR);
}
pub inline fn VARSIZE(PTR: anytype) @TypeOf(VARSIZE_4B(PTR)) {
    return VARSIZE_4B(PTR);
}
pub inline fn VARSIZE_SHORT(PTR: anytype) @TypeOf(VARSIZE_1B(PTR)) {
    return VARSIZE_1B(PTR);
}
pub inline fn VARDATA_SHORT(PTR: anytype) @TypeOf(VARDATA_1B(PTR)) {
    return VARDATA_1B(PTR);
}
pub inline fn VARTAG_EXTERNAL(PTR: anytype) @TypeOf(VARTAG_1B_E(PTR)) {
    return VARTAG_1B_E(PTR);
}
pub inline fn VARSIZE_EXTERNAL(PTR: anytype) @TypeOf(VARHDRSZ_EXTERNAL + VARTAG_SIZE(VARTAG_EXTERNAL(PTR))) {
    return VARHDRSZ_EXTERNAL + VARTAG_SIZE(VARTAG_EXTERNAL(PTR));
}
pub inline fn VARDATA_EXTERNAL(PTR: anytype) @TypeOf(VARDATA_1B_E(PTR)) {
    return VARDATA_1B_E(PTR);
}
pub inline fn VARATT_IS_COMPRESSED(PTR: anytype) @TypeOf(VARATT_IS_4B_C(PTR)) {
    return VARATT_IS_4B_C(PTR);
}
pub inline fn VARATT_IS_EXTERNAL(PTR: anytype) @TypeOf(VARATT_IS_1B_E(PTR)) {
    return VARATT_IS_1B_E(PTR);
}
pub inline fn VARATT_IS_EXTERNAL_ONDISK(PTR: anytype) @TypeOf((VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_EXTERNAL(PTR) == VARTAG_ONDISK)) {
    return (VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_EXTERNAL(PTR) == VARTAG_ONDISK);
}
pub inline fn VARATT_IS_EXTERNAL_INDIRECT(PTR: anytype) @TypeOf((VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_EXTERNAL(PTR) == VARTAG_INDIRECT)) {
    return (VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_EXTERNAL(PTR) == VARTAG_INDIRECT);
}
pub inline fn VARATT_IS_EXTERNAL_EXPANDED_RO(PTR: anytype) @TypeOf((VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_EXTERNAL(PTR) == VARTAG_EXPANDED_RO)) {
    return (VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_EXTERNAL(PTR) == VARTAG_EXPANDED_RO);
}
pub inline fn VARATT_IS_EXTERNAL_EXPANDED_RW(PTR: anytype) @TypeOf((VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_EXTERNAL(PTR) == VARTAG_EXPANDED_RW)) {
    return (VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_EXTERNAL(PTR) == VARTAG_EXPANDED_RW);
}
pub inline fn VARATT_IS_EXTERNAL_EXPANDED(PTR: anytype) @TypeOf((VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_IS_EXPANDED(VARTAG_EXTERNAL(PTR)) != 0)) {
    return (VARATT_IS_EXTERNAL(PTR) != 0) and (VARTAG_IS_EXPANDED(VARTAG_EXTERNAL(PTR)) != 0);
}
pub inline fn VARATT_IS_EXTERNAL_NON_EXPANDED(PTR: anytype) @TypeOf((VARATT_IS_EXTERNAL(PTR) != 0) and !(VARTAG_IS_EXPANDED(VARTAG_EXTERNAL(PTR)) != 0)) {
    return (VARATT_IS_EXTERNAL(PTR) != 0) and !(VARTAG_IS_EXPANDED(VARTAG_EXTERNAL(PTR)) != 0);
}
pub inline fn VARATT_IS_SHORT(PTR: anytype) @TypeOf(VARATT_IS_1B(PTR)) {
    return VARATT_IS_1B(PTR);
}
pub inline fn VARATT_IS_EXTENDED(PTR: anytype) @TypeOf(!(VARATT_IS_4B_U(PTR) != 0)) {
    return !(VARATT_IS_4B_U(PTR) != 0);
}
pub inline fn SET_VARSIZE(PTR: anytype, len: anytype) @TypeOf(SET_VARSIZE_4B(PTR, len)) {
    return SET_VARSIZE_4B(PTR, len);
}
pub inline fn SET_VARSIZE_SHORT(PTR: anytype, len: anytype) @TypeOf(SET_VARSIZE_1B(PTR, len)) {
    return SET_VARSIZE_1B(PTR, len);
}
pub inline fn SET_VARSIZE_COMPRESSED(PTR: anytype, len: anytype) @TypeOf(SET_VARSIZE_4B_C(PTR, len)) {
    return SET_VARSIZE_4B_C(PTR, len);
}
pub inline fn SET_VARTAG_EXTERNAL(PTR: anytype, tag: anytype) @TypeOf(SET_VARTAG_1B_E(PTR, tag)) {
    return SET_VARTAG_1B_E(PTR, tag);
}
pub inline fn VARSIZE_ANY(PTR: anytype) @TypeOf(if (VARATT_IS_1B_E(PTR)) VARSIZE_EXTERNAL(PTR) else if (VARATT_IS_1B(PTR)) VARSIZE_1B(PTR) else VARSIZE_4B(PTR)) {
    return if (VARATT_IS_1B_E(PTR)) VARSIZE_EXTERNAL(PTR) else if (VARATT_IS_1B(PTR)) VARSIZE_1B(PTR) else VARSIZE_4B(PTR);
}
pub inline fn VARSIZE_ANY_EXHDR(PTR: anytype) @TypeOf(if (VARATT_IS_1B_E(PTR)) VARSIZE_EXTERNAL(PTR) - VARHDRSZ_EXTERNAL else if (VARATT_IS_1B(PTR)) VARSIZE_1B(PTR) - VARHDRSZ_SHORT else VARSIZE_4B(PTR) - VARHDRSZ) {
    return if (VARATT_IS_1B_E(PTR)) VARSIZE_EXTERNAL(PTR) - VARHDRSZ_EXTERNAL else if (VARATT_IS_1B(PTR)) VARSIZE_1B(PTR) - VARHDRSZ_SHORT else VARSIZE_4B(PTR) - VARHDRSZ;
}
pub inline fn VARDATA_ANY(PTR: anytype) @TypeOf(if (VARATT_IS_1B(PTR)) VARDATA_1B(PTR) else VARDATA_4B(PTR)) {
    return if (VARATT_IS_1B(PTR)) VARDATA_1B(PTR) else VARDATA_4B(PTR);
}
pub inline fn VARDATA_COMPRESSED_GET_EXTSIZE(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_compressed.va_tcinfo & VARLENA_EXTSIZE_MASK) {
    return @import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_compressed.va_tcinfo & VARLENA_EXTSIZE_MASK;
}
pub inline fn VARDATA_COMPRESSED_GET_COMPRESS_METHOD(PTR: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_compressed.va_tcinfo >> VARLENA_EXTSIZE_BITS) {
    return @import("std").zig.c_translation.cast([*c]varattrib_4b, PTR).*.va_compressed.va_tcinfo >> VARLENA_EXTSIZE_BITS;
}
pub inline fn VARATT_EXTERNAL_GET_EXTSIZE(toast_pointer: anytype) @TypeOf(toast_pointer.va_extinfo & VARLENA_EXTSIZE_MASK) {
    return toast_pointer.va_extinfo & VARLENA_EXTSIZE_MASK;
}
pub inline fn VARATT_EXTERNAL_GET_COMPRESS_METHOD(toast_pointer: anytype) @TypeOf(toast_pointer.va_extinfo >> VARLENA_EXTSIZE_BITS) {
    return toast_pointer.va_extinfo >> VARLENA_EXTSIZE_BITS;
}
pub inline fn VARATT_EXTERNAL_IS_COMPRESSED(toast_pointer: anytype) @TypeOf(VARATT_EXTERNAL_GET_EXTSIZE(toast_pointer) < (toast_pointer.va_rawsize - VARHDRSZ)) {
    return VARATT_EXTERNAL_GET_EXTSIZE(toast_pointer) < (toast_pointer.va_rawsize - VARHDRSZ);
}
pub const FIELDNO_NULLABLE_DATUM_DATUM = @as(c_int, 0);
pub const FIELDNO_NULLABLE_DATUM_ISNULL = @as(c_int, 1);
pub const SIZEOF_DATUM = SIZEOF_VOID_P;
pub inline fn DatumGetBool(X: anytype) @TypeOf(@"bool"(X != @as(c_int, 0))) {
    return @"bool"(X != @as(c_int, 0));
}
pub inline fn BoolGetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, if (X) @as(c_int, 1) else @as(c_int, 0));
}
pub inline fn DatumGetChar(X: anytype) u8 {
    return @import("std").zig.c_translation.cast(u8, X);
}
pub inline fn CharGetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn Int8GetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetUInt8(X: anytype) uint8 {
    return @import("std").zig.c_translation.cast(uint8, X);
}
pub inline fn UInt8GetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetInt16(X: anytype) int16 {
    return @import("std").zig.c_translation.cast(int16, X);
}
pub inline fn Int16GetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetUInt16(X: anytype) uint16 {
    return @import("std").zig.c_translation.cast(uint16, X);
}
pub inline fn UInt16GetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetInt32(X: anytype) int32 {
    return @import("std").zig.c_translation.cast(int32, X);
}
pub inline fn Int32GetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetUInt32(X: anytype) uint32 {
    return @import("std").zig.c_translation.cast(uint32, X);
}
pub inline fn UInt32GetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetObjectId(X: anytype) Oid {
    return @import("std").zig.c_translation.cast(Oid, X);
}
pub inline fn ObjectIdGetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetTransactionId(X: anytype) TransactionId {
    return @import("std").zig.c_translation.cast(TransactionId, X);
}
pub inline fn TransactionIdGetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn MultiXactIdGetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetCommandId(X: anytype) CommandId {
    return @import("std").zig.c_translation.cast(CommandId, X);
}
pub inline fn CommandIdGetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetPointer(X: anytype) Pointer {
    return @import("std").zig.c_translation.cast(Pointer, X);
}
pub inline fn PointerGetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetCString(X: anytype) [*c]u8 {
    return @import("std").zig.c_translation.cast([*c]u8, DatumGetPointer(X));
}
pub inline fn CStringGetDatum(X: anytype) @TypeOf(PointerGetDatum(X)) {
    return PointerGetDatum(X);
}
pub inline fn DatumGetName(X: anytype) Name {
    return @import("std").zig.c_translation.cast(Name, DatumGetPointer(X));
}
pub inline fn NameGetDatum(X: anytype) @TypeOf(CStringGetDatum(NameStr(X.*))) {
    return CStringGetDatum(NameStr(X.*));
}
pub inline fn DatumGetInt64(X: anytype) int64 {
    return @import("std").zig.c_translation.cast(int64, X);
}
pub inline fn Int64GetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn DatumGetUInt64(X: anytype) uint64 {
    return @import("std").zig.c_translation.cast(uint64, X);
}
pub inline fn UInt64GetDatum(X: anytype) Datum {
    return @import("std").zig.c_translation.cast(Datum, X);
}
pub inline fn Int64GetDatumFast(X: anytype) @TypeOf(Int64GetDatum(X)) {
    return Int64GetDatum(X);
}
pub inline fn Float8GetDatumFast(X: anytype) @TypeOf(Float8GetDatum(X)) {
    return Float8GetDatum(X);
}
pub const EXECUTOR_H = "";
pub const EXECDESC_H = "";
pub const EXECNODES_H = "";
pub const TUPCONVERT_H = "";
pub const ATTMAP_H = "";
pub const ATTNUM_H = "";
pub const InvalidAttrNumber = @as(c_int, 0);
pub const MaxAttrNumber = @as(c_int, 32767);
pub inline fn AttributeNumberIsValid(attributeNumber: anytype) @TypeOf(@"bool"(attributeNumber != InvalidAttrNumber)) {
    return @"bool"(attributeNumber != InvalidAttrNumber);
}
pub inline fn AttrNumberIsForUserDefinedAttr(attributeNumber: anytype) @TypeOf(@"bool"(attributeNumber > @as(c_int, 0))) {
    return @"bool"(attributeNumber > @as(c_int, 0));
}
pub inline fn AttrNumberGetAttrOffset(attNum: anytype) @TypeOf(attNum - @as(c_int, 1)) {
    return blk_1: {
        _ = AssertMacro(AttrNumberIsForUserDefinedAttr(attNum));
        break :blk_1 attNum - @as(c_int, 1);
    };
}
pub inline fn AttrOffsetGetAttrNumber(attributeOffset: anytype) AttrNumber {
    return @import("std").zig.c_translation.cast(AttrNumber, @as(c_int, 1) + attributeOffset);
}
pub const TUPDESC_H = "";
pub const PG_ATTRIBUTE_H = "";
pub const GENBKI_H = "";
pub const BKI_BOOTSTRAP = "";
pub const BKI_SHARED_RELATION = "";
pub const BKI_SCHEMA_MACRO = "";
pub const BKI_FORCE_NULL = "";
pub const BKI_FORCE_NOT_NULL = "";
pub const PG_ATTRIBUTE_D_H = "";
pub const AttributeRelationId = @as(c_int, 1249);
pub const AttributeRelation_Rowtype_Id = @as(c_int, 75);
pub const AttributeRelidNameIndexId = @as(c_int, 2658);
pub const AttributeRelidNumIndexId = @as(c_int, 2659);
pub const Anum_pg_attribute_attrelid = @as(c_int, 1);
pub const Anum_pg_attribute_attname = @as(c_int, 2);
pub const Anum_pg_attribute_atttypid = @as(c_int, 3);
pub const Anum_pg_attribute_attstattarget = @as(c_int, 4);
pub const Anum_pg_attribute_attlen = @as(c_int, 5);
pub const Anum_pg_attribute_attnum = @as(c_int, 6);
pub const Anum_pg_attribute_attndims = @as(c_int, 7);
pub const Anum_pg_attribute_attcacheoff = @as(c_int, 8);
pub const Anum_pg_attribute_atttypmod = @as(c_int, 9);
pub const Anum_pg_attribute_attbyval = @as(c_int, 10);
pub const Anum_pg_attribute_attalign = @as(c_int, 11);
pub const Anum_pg_attribute_attstorage = @as(c_int, 12);
pub const Anum_pg_attribute_attcompression = @as(c_int, 13);
pub const Anum_pg_attribute_attnotnull = @as(c_int, 14);
pub const Anum_pg_attribute_atthasdef = @as(c_int, 15);
pub const Anum_pg_attribute_atthasmissing = @as(c_int, 16);
pub const Anum_pg_attribute_attidentity = @as(c_int, 17);
pub const Anum_pg_attribute_attgenerated = @as(c_int, 18);
pub const Anum_pg_attribute_attisdropped = @as(c_int, 19);
pub const Anum_pg_attribute_attislocal = @as(c_int, 20);
pub const Anum_pg_attribute_attinhcount = @as(c_int, 21);
pub const Anum_pg_attribute_attcollation = @as(c_int, 22);
pub const Anum_pg_attribute_attacl = @as(c_int, 23);
pub const Anum_pg_attribute_attoptions = @as(c_int, 24);
pub const Anum_pg_attribute_attfdwoptions = @as(c_int, 25);
pub const Anum_pg_attribute_attmissingval = @as(c_int, 26);
pub const Natts_pg_attribute = @as(c_int, 26);
pub const ATTRIBUTE_IDENTITY_ALWAYS = 'a';
pub const ATTRIBUTE_IDENTITY_BY_DEFAULT = 'd';
pub const ATTRIBUTE_GENERATED_STORED = 's';
pub const PG_LIST_H = "";
pub const NODES_H = "";
pub inline fn IS_OUTER_JOIN(jointype: anytype) @TypeOf(((@as(c_int, 1) << jointype) & ((((@as(c_int, 1) << JOIN_LEFT) | (@as(c_int, 1) << JOIN_FULL)) | (@as(c_int, 1) << JOIN_RIGHT)) | (@as(c_int, 1) << JOIN_ANTI))) != @as(c_int, 0)) {
    return ((@as(c_int, 1) << jointype) & ((((@as(c_int, 1) << JOIN_LEFT) | (@as(c_int, 1) << JOIN_FULL)) | (@as(c_int, 1) << JOIN_RIGHT)) | (@as(c_int, 1) << JOIN_ANTI))) != @as(c_int, 0);
}
pub const AGGSPLITOP_COMBINE = @as(c_int, 0x01);
pub const AGGSPLITOP_SKIPFINAL = @as(c_int, 0x02);
pub const AGGSPLITOP_SERIALIZE = @as(c_int, 0x04);
pub const AGGSPLITOP_DESERIALIZE = @as(c_int, 0x08);
pub inline fn DO_AGGSPLIT_COMBINE(as: anytype) @TypeOf((as & AGGSPLITOP_COMBINE) != @as(c_int, 0)) {
    return (as & AGGSPLITOP_COMBINE) != @as(c_int, 0);
}
pub inline fn DO_AGGSPLIT_SKIPFINAL(as: anytype) @TypeOf((as & AGGSPLITOP_SKIPFINAL) != @as(c_int, 0)) {
    return (as & AGGSPLITOP_SKIPFINAL) != @as(c_int, 0);
}
pub inline fn DO_AGGSPLIT_SERIALIZE(as: anytype) @TypeOf((as & AGGSPLITOP_SERIALIZE) != @as(c_int, 0)) {
    return (as & AGGSPLITOP_SERIALIZE) != @as(c_int, 0);
}
pub inline fn DO_AGGSPLIT_DESERIALIZE(as: anytype) @TypeOf((as & AGGSPLITOP_DESERIALIZE) != @as(c_int, 0)) {
    return (as & AGGSPLITOP_DESERIALIZE) != @as(c_int, 0);
}
pub const NIL = @import("std").zig.c_translation.cast([*c]List, NULL);
pub inline fn lfirst(lc: anytype) @TypeOf(lc.*.ptr_value) {
    return lc.*.ptr_value;
}
pub inline fn lfirst_int(lc: anytype) @TypeOf(lc.*.int_value) {
    return lc.*.int_value;
}
pub inline fn lfirst_oid(lc: anytype) @TypeOf(lc.*.oid_value) {
    return lc.*.oid_value;
}
pub inline fn lfirst_node(@"type": anytype, lc: anytype) @TypeOf(castNode(@"type", lfirst(lc))) {
    return castNode(@"type", lfirst(lc));
}
pub inline fn linitial(l: anytype) @TypeOf(lfirst(list_nth_cell(l, @as(c_int, 0)))) {
    return lfirst(list_nth_cell(l, @as(c_int, 0)));
}
pub inline fn linitial_int(l: anytype) @TypeOf(lfirst_int(list_nth_cell(l, @as(c_int, 0)))) {
    return lfirst_int(list_nth_cell(l, @as(c_int, 0)));
}
pub inline fn linitial_oid(l: anytype) @TypeOf(lfirst_oid(list_nth_cell(l, @as(c_int, 0)))) {
    return lfirst_oid(list_nth_cell(l, @as(c_int, 0)));
}
pub inline fn linitial_node(@"type": anytype, l: anytype) @TypeOf(castNode(@"type", linitial(l))) {
    return castNode(@"type", linitial(l));
}
pub inline fn lsecond(l: anytype) @TypeOf(lfirst(list_nth_cell(l, @as(c_int, 1)))) {
    return lfirst(list_nth_cell(l, @as(c_int, 1)));
}
pub inline fn lsecond_int(l: anytype) @TypeOf(lfirst_int(list_nth_cell(l, @as(c_int, 1)))) {
    return lfirst_int(list_nth_cell(l, @as(c_int, 1)));
}
pub inline fn lsecond_oid(l: anytype) @TypeOf(lfirst_oid(list_nth_cell(l, @as(c_int, 1)))) {
    return lfirst_oid(list_nth_cell(l, @as(c_int, 1)));
}
pub inline fn lsecond_node(@"type": anytype, l: anytype) @TypeOf(castNode(@"type", lsecond(l))) {
    return castNode(@"type", lsecond(l));
}
pub inline fn lthird(l: anytype) @TypeOf(lfirst(list_nth_cell(l, @as(c_int, 2)))) {
    return lfirst(list_nth_cell(l, @as(c_int, 2)));
}
pub inline fn lthird_int(l: anytype) @TypeOf(lfirst_int(list_nth_cell(l, @as(c_int, 2)))) {
    return lfirst_int(list_nth_cell(l, @as(c_int, 2)));
}
pub inline fn lthird_oid(l: anytype) @TypeOf(lfirst_oid(list_nth_cell(l, @as(c_int, 2)))) {
    return lfirst_oid(list_nth_cell(l, @as(c_int, 2)));
}
pub inline fn lthird_node(@"type": anytype, l: anytype) @TypeOf(castNode(@"type", lthird(l))) {
    return castNode(@"type", lthird(l));
}
pub inline fn lfourth(l: anytype) @TypeOf(lfirst(list_nth_cell(l, @as(c_int, 3)))) {
    return lfirst(list_nth_cell(l, @as(c_int, 3)));
}
pub inline fn lfourth_int(l: anytype) @TypeOf(lfirst_int(list_nth_cell(l, @as(c_int, 3)))) {
    return lfirst_int(list_nth_cell(l, @as(c_int, 3)));
}
pub inline fn lfourth_oid(l: anytype) @TypeOf(lfirst_oid(list_nth_cell(l, @as(c_int, 3)))) {
    return lfirst_oid(list_nth_cell(l, @as(c_int, 3)));
}
pub inline fn lfourth_node(@"type": anytype, l: anytype) @TypeOf(castNode(@"type", lfourth(l))) {
    return castNode(@"type", lfourth(l));
}
pub inline fn llast(l: anytype) @TypeOf(lfirst(list_last_cell(l))) {
    return lfirst(list_last_cell(l));
}
pub inline fn llast_int(l: anytype) @TypeOf(lfirst_int(list_last_cell(l))) {
    return lfirst_int(list_last_cell(l));
}
pub inline fn llast_oid(l: anytype) @TypeOf(lfirst_oid(list_last_cell(l))) {
    return lfirst_oid(list_last_cell(l));
}
pub inline fn llast_node(@"type": anytype, l: anytype) @TypeOf(castNode(@"type", llast(l))) {
    return castNode(@"type", llast(l));
}
pub inline fn list_make_ptr_cell(v: anytype) ListCell {
    return @import("std").mem.zeroInit(ListCell, .{
        .ptr_value = v,
    });
}
pub inline fn list_make_int_cell(v: anytype) ListCell {
    return @import("std").mem.zeroInit(ListCell, .{
        .int_value = v,
    });
}
pub inline fn list_make_oid_cell(v: anytype) ListCell {
    return @import("std").mem.zeroInit(ListCell, .{
        .oid_value = v,
    });
}
pub inline fn list_make1(x1: anytype) @TypeOf(list_make1_impl(T_List, list_make_ptr_cell(x1))) {
    return list_make1_impl(T_List, list_make_ptr_cell(x1));
}
pub inline fn list_make2(x1: anytype, x2: anytype) @TypeOf(list_make2_impl(T_List, list_make_ptr_cell(x1), list_make_ptr_cell(x2))) {
    return list_make2_impl(T_List, list_make_ptr_cell(x1), list_make_ptr_cell(x2));
}
pub inline fn list_make3(x1: anytype, x2: anytype, x3: anytype) @TypeOf(list_make3_impl(T_List, list_make_ptr_cell(x1), list_make_ptr_cell(x2), list_make_ptr_cell(x3))) {
    return list_make3_impl(T_List, list_make_ptr_cell(x1), list_make_ptr_cell(x2), list_make_ptr_cell(x3));
}
pub inline fn list_make4(x1: anytype, x2: anytype, x3: anytype, x4: anytype) @TypeOf(list_make4_impl(T_List, list_make_ptr_cell(x1), list_make_ptr_cell(x2), list_make_ptr_cell(x3), list_make_ptr_cell(x4))) {
    return list_make4_impl(T_List, list_make_ptr_cell(x1), list_make_ptr_cell(x2), list_make_ptr_cell(x3), list_make_ptr_cell(x4));
}
pub inline fn list_make5(x1: anytype, x2: anytype, x3: anytype, x4: anytype, x5: anytype) @TypeOf(list_make5_impl(T_List, list_make_ptr_cell(x1), list_make_ptr_cell(x2), list_make_ptr_cell(x3), list_make_ptr_cell(x4), list_make_ptr_cell(x5))) {
    return list_make5_impl(T_List, list_make_ptr_cell(x1), list_make_ptr_cell(x2), list_make_ptr_cell(x3), list_make_ptr_cell(x4), list_make_ptr_cell(x5));
}
pub inline fn list_make1_int(x1: anytype) @TypeOf(list_make1_impl(T_IntList, list_make_int_cell(x1))) {
    return list_make1_impl(T_IntList, list_make_int_cell(x1));
}
pub inline fn list_make2_int(x1: anytype, x2: anytype) @TypeOf(list_make2_impl(T_IntList, list_make_int_cell(x1), list_make_int_cell(x2))) {
    return list_make2_impl(T_IntList, list_make_int_cell(x1), list_make_int_cell(x2));
}
pub inline fn list_make3_int(x1: anytype, x2: anytype, x3: anytype) @TypeOf(list_make3_impl(T_IntList, list_make_int_cell(x1), list_make_int_cell(x2), list_make_int_cell(x3))) {
    return list_make3_impl(T_IntList, list_make_int_cell(x1), list_make_int_cell(x2), list_make_int_cell(x3));
}
pub inline fn list_make4_int(x1: anytype, x2: anytype, x3: anytype, x4: anytype) @TypeOf(list_make4_impl(T_IntList, list_make_int_cell(x1), list_make_int_cell(x2), list_make_int_cell(x3), list_make_int_cell(x4))) {
    return list_make4_impl(T_IntList, list_make_int_cell(x1), list_make_int_cell(x2), list_make_int_cell(x3), list_make_int_cell(x4));
}
pub inline fn list_make5_int(x1: anytype, x2: anytype, x3: anytype, x4: anytype, x5: anytype) @TypeOf(list_make5_impl(T_IntList, list_make_int_cell(x1), list_make_int_cell(x2), list_make_int_cell(x3), list_make_int_cell(x4), list_make_int_cell(x5))) {
    return list_make5_impl(T_IntList, list_make_int_cell(x1), list_make_int_cell(x2), list_make_int_cell(x3), list_make_int_cell(x4), list_make_int_cell(x5));
}
pub inline fn list_make1_oid(x1: anytype) @TypeOf(list_make1_impl(T_OidList, list_make_oid_cell(x1))) {
    return list_make1_impl(T_OidList, list_make_oid_cell(x1));
}
pub inline fn list_make2_oid(x1: anytype, x2: anytype) @TypeOf(list_make2_impl(T_OidList, list_make_oid_cell(x1), list_make_oid_cell(x2))) {
    return list_make2_impl(T_OidList, list_make_oid_cell(x1), list_make_oid_cell(x2));
}
pub inline fn list_make3_oid(x1: anytype, x2: anytype, x3: anytype) @TypeOf(list_make3_impl(T_OidList, list_make_oid_cell(x1), list_make_oid_cell(x2), list_make_oid_cell(x3))) {
    return list_make3_impl(T_OidList, list_make_oid_cell(x1), list_make_oid_cell(x2), list_make_oid_cell(x3));
}
pub inline fn list_make4_oid(x1: anytype, x2: anytype, x3: anytype, x4: anytype) @TypeOf(list_make4_impl(T_OidList, list_make_oid_cell(x1), list_make_oid_cell(x2), list_make_oid_cell(x3), list_make_oid_cell(x4))) {
    return list_make4_impl(T_OidList, list_make_oid_cell(x1), list_make_oid_cell(x2), list_make_oid_cell(x3), list_make_oid_cell(x4));
}
pub inline fn list_make5_oid(x1: anytype, x2: anytype, x3: anytype, x4: anytype, x5: anytype) @TypeOf(list_make5_impl(T_OidList, list_make_oid_cell(x1), list_make_oid_cell(x2), list_make_oid_cell(x3), list_make_oid_cell(x4), list_make_oid_cell(x5))) {
    return list_make5_impl(T_OidList, list_make_oid_cell(x1), list_make_oid_cell(x2), list_make_oid_cell(x3), list_make_oid_cell(x4), list_make_oid_cell(x5));
}
pub inline fn list_nth_node(@"type": anytype, list: anytype, n: anytype) @TypeOf(castNode(@"type", list_nth(list, n))) {
    return castNode(@"type", list_nth(list, n));
}
pub inline fn TupleDescAttr(tupdesc: anytype, i: anytype) @TypeOf(&tupdesc.*.attrs[@intCast(usize, i)]) {
    return &tupdesc.*.attrs[@intCast(usize, i)];
}
pub const HTUP_H = "";
pub const ITEMPTR_H = "";
pub const BLOCK_H = "";
pub const InvalidBlockNumber = @import("std").zig.c_translation.cast(BlockNumber, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal));
pub const MaxBlockNumber = @import("std").zig.c_translation.cast(BlockNumber, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFE, .hexadecimal));
pub inline fn BlockNumberIsValid(blockNumber: anytype) @TypeOf(@import("std").zig.c_translation.cast(BlockNumber, blockNumber) != InvalidBlockNumber) {
    return @import("std").zig.c_translation.cast(BlockNumber, blockNumber) != InvalidBlockNumber;
}
pub inline fn BlockIdIsValid(blockId: anytype) @TypeOf(PointerIsValid(blockId)) {
    return PointerIsValid(blockId);
}
pub inline fn BlockIdEquals(blockId1: anytype, blockId2: anytype) @TypeOf((blockId1.*.bi_hi == blockId2.*.bi_hi) and (blockId1.*.bi_lo == blockId2.*.bi_lo)) {
    return (blockId1.*.bi_hi == blockId2.*.bi_hi) and (blockId1.*.bi_lo == blockId2.*.bi_lo);
}
pub inline fn BlockIdGetBlockNumber(blockId: anytype) @TypeOf((@import("std").zig.c_translation.cast(BlockNumber, blockId.*.bi_hi) << @as(c_int, 16)) | @import("std").zig.c_translation.cast(BlockNumber, blockId.*.bi_lo)) {
    return (@import("std").zig.c_translation.cast(BlockNumber, blockId.*.bi_hi) << @as(c_int, 16)) | @import("std").zig.c_translation.cast(BlockNumber, blockId.*.bi_lo);
}
pub const OFF_H = "";
pub const ITEMID_H = "";
pub const LP_UNUSED = @as(c_int, 0);
pub const LP_NORMAL = @as(c_int, 1);
pub const LP_REDIRECT = @as(c_int, 2);
pub const LP_DEAD = @as(c_int, 3);
pub inline fn ItemIdGetLength(itemId: anytype) @TypeOf(itemId.*.lp_len) {
    return itemId.*.lp_len;
}
pub inline fn ItemIdGetOffset(itemId: anytype) @TypeOf(itemId.*.lp_off) {
    return itemId.*.lp_off;
}
pub inline fn ItemIdGetFlags(itemId: anytype) @TypeOf(itemId.*.lp_flags) {
    return itemId.*.lp_flags;
}
pub inline fn ItemIdGetRedirect(itemId: anytype) @TypeOf(itemId.*.lp_off) {
    return itemId.*.lp_off;
}
pub inline fn ItemIdIsValid(itemId: anytype) @TypeOf(PointerIsValid(itemId)) {
    return PointerIsValid(itemId);
}
pub inline fn ItemIdIsUsed(itemId: anytype) @TypeOf(itemId.*.lp_flags != LP_UNUSED) {
    return itemId.*.lp_flags != LP_UNUSED;
}
pub inline fn ItemIdIsNormal(itemId: anytype) @TypeOf(itemId.*.lp_flags == LP_NORMAL) {
    return itemId.*.lp_flags == LP_NORMAL;
}
pub inline fn ItemIdIsRedirected(itemId: anytype) @TypeOf(itemId.*.lp_flags == LP_REDIRECT) {
    return itemId.*.lp_flags == LP_REDIRECT;
}
pub inline fn ItemIdIsDead(itemId: anytype) @TypeOf(itemId.*.lp_flags == LP_DEAD) {
    return itemId.*.lp_flags == LP_DEAD;
}
pub inline fn ItemIdHasStorage(itemId: anytype) @TypeOf(itemId.*.lp_len != @as(c_int, 0)) {
    return itemId.*.lp_len != @as(c_int, 0);
}
pub const InvalidOffsetNumber = @import("std").zig.c_translation.cast(OffsetNumber, @as(c_int, 0));
pub const FirstOffsetNumber = @import("std").zig.c_translation.cast(OffsetNumber, @as(c_int, 1));
pub const MaxOffsetNumber = @import("std").zig.c_translation.cast(OffsetNumber, @import("std").zig.c_translation.MacroArithmetic.div(BLCKSZ, @import("std").zig.c_translation.sizeof(ItemIdData)));
pub inline fn OffsetNumberIsValid(offsetNumber: anytype) @TypeOf(@"bool"((offsetNumber != InvalidOffsetNumber) and (offsetNumber <= MaxOffsetNumber))) {
    return @"bool"((offsetNumber != InvalidOffsetNumber) and (offsetNumber <= MaxOffsetNumber));
}
pub inline fn OffsetNumberNext(offsetNumber: anytype) OffsetNumber {
    return @import("std").zig.c_translation.cast(OffsetNumber, @as(c_int, 1) + offsetNumber);
}
pub inline fn OffsetNumberPrev(offsetNumber: anytype) OffsetNumber {
    return @import("std").zig.c_translation.cast(OffsetNumber, -@as(c_int, 1) + offsetNumber);
}
pub const SpecTokenOffsetNumber = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfffe, .hexadecimal);
pub const MovedPartitionsOffsetNumber = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xfffd, .hexadecimal);
pub const MovedPartitionsBlockNumber = InvalidBlockNumber;
pub inline fn ItemPointerIsValid(pointer: anytype) @TypeOf(@"bool"((PointerIsValid(pointer) != 0) and (pointer.*.ip_posid != @as(c_int, 0)))) {
    return @"bool"((PointerIsValid(pointer) != 0) and (pointer.*.ip_posid != @as(c_int, 0)));
}
pub inline fn ItemPointerGetBlockNumberNoCheck(pointer: anytype) @TypeOf(BlockIdGetBlockNumber(&pointer.*.ip_blkid)) {
    return BlockIdGetBlockNumber(&pointer.*.ip_blkid);
}
pub inline fn ItemPointerGetBlockNumber(pointer: anytype) @TypeOf(ItemPointerGetBlockNumberNoCheck(pointer)) {
    return blk_1: {
        _ = AssertMacro(ItemPointerIsValid(pointer));
        break :blk_1 ItemPointerGetBlockNumberNoCheck(pointer);
    };
}
pub inline fn ItemPointerGetOffsetNumberNoCheck(pointer: anytype) @TypeOf(pointer.*.ip_posid) {
    return pointer.*.ip_posid;
}
pub inline fn ItemPointerGetOffsetNumber(pointer: anytype) @TypeOf(ItemPointerGetOffsetNumberNoCheck(pointer)) {
    return blk_1: {
        _ = AssertMacro(ItemPointerIsValid(pointer));
        break :blk_1 ItemPointerGetOffsetNumberNoCheck(pointer);
    };
}
pub inline fn ItemPointerSetBlockNumber(pointer: anytype, blockNumber: anytype) @TypeOf(BlockIdSet(&pointer.*.ip_blkid, blockNumber)) {
    return blk_1: {
        _ = AssertMacro(PointerIsValid(pointer));
        break :blk_1 BlockIdSet(&pointer.*.ip_blkid, blockNumber);
    };
}
pub inline fn ItemPointerIndicatesMovedPartitions(pointer: anytype) @TypeOf((ItemPointerGetOffsetNumber(pointer) == MovedPartitionsOffsetNumber) and (ItemPointerGetBlockNumberNoCheck(pointer) == MovedPartitionsBlockNumber)) {
    return (ItemPointerGetOffsetNumber(pointer) == MovedPartitionsOffsetNumber) and (ItemPointerGetBlockNumberNoCheck(pointer) == MovedPartitionsBlockNumber);
}
pub inline fn ItemPointerSetMovedPartitions(pointer: anytype) @TypeOf(ItemPointerSet(pointer, MovedPartitionsBlockNumber, MovedPartitionsOffsetNumber)) {
    return ItemPointerSet(pointer, MovedPartitionsBlockNumber, MovedPartitionsOffsetNumber);
}
pub const FIELDNO_HEAPTUPLEDATA_DATA = @as(c_int, 3);
pub const HEAPTUPLESIZE = MAXALIGN(@import("std").zig.c_translation.sizeof(HeapTupleData));
pub inline fn HeapTupleIsValid(tuple: anytype) @TypeOf(PointerIsValid(tuple)) {
    return PointerIsValid(tuple);
}
pub const TUPTABLE_H = "";
pub const HTUP_DETAILS_H = "";
pub const TRANSAM_H = "";
pub const XLOG_DEFS_H = "";
pub const _FCNTL_H = @as(c_int, 1);
pub const __O_LARGEFILE = @as(c_int, 0);
pub const F_GETLK64 = @as(c_int, 5);
pub const F_SETLK64 = @as(c_int, 6);
pub const F_SETLKW64 = @as(c_int, 7);
pub const O_ACCMODE = @as(c_int, 0o003);
pub const O_RDONLY = @as(c_int, 0o0);
pub const O_WRONLY = @as(c_int, 0o1);
pub const O_RDWR = @as(c_int, 0o2);
pub const O_CREAT = @as(c_int, 0o100);
pub const O_EXCL = @as(c_int, 0o200);
pub const O_NOCTTY = @as(c_int, 0o400);
pub const O_TRUNC = @as(c_int, 0o1000);
pub const O_APPEND = @as(c_int, 0o2000);
pub const O_NONBLOCK = @as(c_int, 0o4000);
pub const O_NDELAY = O_NONBLOCK;
pub const O_SYNC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o4010000, .octal);
pub const O_FSYNC = O_SYNC;
pub const O_ASYNC = @as(c_int, 0o20000);
pub const __O_DIRECTORY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o200000, .octal);
pub const __O_NOFOLLOW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o400000, .octal);
pub const __O_CLOEXEC = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o2000000, .octal);
pub const __O_DIRECT = @as(c_int, 0o40000);
pub const __O_NOATIME = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o1000000, .octal);
pub const __O_PATH = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o10000000, .octal);
pub const __O_DSYNC = @as(c_int, 0o10000);
pub const __O_TMPFILE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o20000000, .octal) | __O_DIRECTORY;
pub const F_GETLK = @as(c_int, 5);
pub const F_SETLK = @as(c_int, 6);
pub const F_SETLKW = @as(c_int, 7);
pub const O_DIRECTORY = __O_DIRECTORY;
pub const O_NOFOLLOW = __O_NOFOLLOW;
pub const O_CLOEXEC = __O_CLOEXEC;
pub const O_DSYNC = __O_DSYNC;
pub const O_RSYNC = O_SYNC;
pub const F_DUPFD = @as(c_int, 0);
pub const F_GETFD = @as(c_int, 1);
pub const F_SETFD = @as(c_int, 2);
pub const F_GETFL = @as(c_int, 3);
pub const F_SETFL = @as(c_int, 4);
pub const __F_SETOWN = @as(c_int, 8);
pub const __F_GETOWN = @as(c_int, 9);
pub const F_SETOWN = __F_SETOWN;
pub const F_GETOWN = __F_GETOWN;
pub const __F_SETSIG = @as(c_int, 10);
pub const __F_GETSIG = @as(c_int, 11);
pub const __F_SETOWN_EX = @as(c_int, 15);
pub const __F_GETOWN_EX = @as(c_int, 16);
pub const F_DUPFD_CLOEXEC = @as(c_int, 1030);
pub const FD_CLOEXEC = @as(c_int, 1);
pub const F_RDLCK = @as(c_int, 0);
pub const F_WRLCK = @as(c_int, 1);
pub const F_UNLCK = @as(c_int, 2);
pub const F_EXLCK = @as(c_int, 4);
pub const F_SHLCK = @as(c_int, 8);
pub const LOCK_SH = @as(c_int, 1);
pub const LOCK_EX = @as(c_int, 2);
pub const LOCK_NB = @as(c_int, 4);
pub const LOCK_UN = @as(c_int, 8);
pub const FAPPEND = O_APPEND;
pub const FFSYNC = O_FSYNC;
pub const FASYNC = O_ASYNC;
pub const FNONBLOCK = O_NONBLOCK;
pub const FNDELAY = O_NDELAY;
pub const __POSIX_FADV_DONTNEED = @as(c_int, 4);
pub const __POSIX_FADV_NOREUSE = @as(c_int, 5);
pub const POSIX_FADV_NORMAL = @as(c_int, 0);
pub const POSIX_FADV_RANDOM = @as(c_int, 1);
pub const POSIX_FADV_SEQUENTIAL = @as(c_int, 2);
pub const POSIX_FADV_WILLNEED = @as(c_int, 3);
pub const POSIX_FADV_DONTNEED = __POSIX_FADV_DONTNEED;
pub const POSIX_FADV_NOREUSE = __POSIX_FADV_NOREUSE;
pub inline fn __OPEN_NEEDS_MODE(oflag: anytype) @TypeOf(((oflag & O_CREAT) != @as(c_int, 0)) or ((oflag & __O_TMPFILE) == __O_TMPFILE)) {
    return ((oflag & O_CREAT) != @as(c_int, 0)) or ((oflag & __O_TMPFILE) == __O_TMPFILE);
}
pub const _BITS_STAT_H = @as(c_int, 1);
pub const _BITS_STRUCT_STAT_H = @as(c_int, 1);
pub const _STATBUF_ST_BLKSIZE = "";
pub const _STATBUF_ST_RDEV = "";
pub const _STATBUF_ST_NSEC = "";
pub const __S_IFMT = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal);
pub const __S_IFDIR = @as(c_int, 0o040000);
pub const __S_IFCHR = @as(c_int, 0o020000);
pub const __S_IFBLK = @as(c_int, 0o060000);
pub const __S_IFREG = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o100000, .octal);
pub const __S_IFIFO = @as(c_int, 0o010000);
pub const __S_IFLNK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o120000, .octal);
pub const __S_IFSOCK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o140000, .octal);
pub inline fn __S_TYPEISMQ(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSEM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    return buf.*.st_mode - buf.*.st_mode;
}
pub inline fn __S_TYPEISSHM(buf: anytype) @TypeOf(buf.*.st_mode - buf.*.st_mode) {
    return buf.*.st_mode - buf.*.st_mode;
}
pub const __S_ISUID = @as(c_int, 0o4000);
pub const __S_ISGID = @as(c_int, 0o2000);
pub const __S_ISVTX = @as(c_int, 0o1000);
pub const __S_IREAD = @as(c_int, 0o400);
pub const __S_IWRITE = @as(c_int, 0o200);
pub const __S_IEXEC = @as(c_int, 0o100);
pub const UTIME_NOW = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 1);
pub const UTIME_OMIT = (@as(c_long, 1) << @as(c_int, 30)) - @as(c_long, 2);
pub const S_IFMT = __S_IFMT;
pub const S_IFDIR = __S_IFDIR;
pub const S_IFCHR = __S_IFCHR;
pub const S_IFBLK = __S_IFBLK;
pub const S_IFREG = __S_IFREG;
pub const S_IFIFO = __S_IFIFO;
pub const S_IFLNK = __S_IFLNK;
pub const S_IFSOCK = __S_IFSOCK;
pub const S_ISUID = __S_ISUID;
pub const S_ISGID = __S_ISGID;
pub const S_ISVTX = __S_ISVTX;
pub const S_IRUSR = __S_IREAD;
pub const S_IWUSR = __S_IWRITE;
pub const S_IXUSR = __S_IEXEC;
pub const S_IRWXU = (__S_IREAD | __S_IWRITE) | __S_IEXEC;
pub const S_IRGRP = S_IRUSR >> @as(c_int, 3);
pub const S_IWGRP = S_IWUSR >> @as(c_int, 3);
pub const S_IXGRP = S_IXUSR >> @as(c_int, 3);
pub const S_IRWXG = S_IRWXU >> @as(c_int, 3);
pub const S_IROTH = S_IRGRP >> @as(c_int, 3);
pub const S_IWOTH = S_IWGRP >> @as(c_int, 3);
pub const S_IXOTH = S_IXGRP >> @as(c_int, 3);
pub const S_IRWXO = S_IRWXG >> @as(c_int, 3);
pub const R_OK = @as(c_int, 4);
pub const W_OK = @as(c_int, 2);
pub const X_OK = @as(c_int, 1);
pub const F_OK = @as(c_int, 0);
pub const AT_FDCWD = -@as(c_int, 100);
pub const AT_SYMLINK_NOFOLLOW = @as(c_int, 0x100);
pub const AT_REMOVEDIR = @as(c_int, 0x200);
pub const AT_SYMLINK_FOLLOW = @as(c_int, 0x400);
pub const AT_EACCESS = @as(c_int, 0x200);
pub const F_ULOCK = @as(c_int, 0);
pub const F_LOCK = @as(c_int, 1);
pub const F_TLOCK = @as(c_int, 2);
pub const F_TEST = @as(c_int, 3);
pub const InvalidXLogRecPtr = @as(c_int, 0);
pub inline fn XLogRecPtrIsInvalid(r: anytype) @TypeOf(r == InvalidXLogRecPtr) {
    return r == InvalidXLogRecPtr;
}
pub const FirstNormalUnloggedLSN = @import("std").zig.c_translation.cast(XLogRecPtr, @as(c_int, 1000));
pub inline fn LSN_FORMAT_ARGS(lsn: anytype) uint32 {
    return blk: {
        _ = blk_1: {
            _ = AssertVariableIsOfTypeMacro(lsn, XLogRecPtr);
            break :blk_1 @import("std").zig.c_translation.cast(uint32, lsn >> @as(c_int, 32));
        };
        break :blk @import("std").zig.c_translation.cast(uint32, lsn);
    };
}
pub const OPEN_SYNC_FLAG = O_SYNC;
pub const OPEN_DATASYNC_FLAG = O_DSYNC;
pub const DEFAULT_SYNC_METHOD = PLATFORM_DEFAULT_SYNC_METHOD;
pub const InvalidTransactionId = @import("std").zig.c_translation.cast(TransactionId, @as(c_int, 0));
pub const BootstrapTransactionId = @import("std").zig.c_translation.cast(TransactionId, @as(c_int, 1));
pub const FrozenTransactionId = @import("std").zig.c_translation.cast(TransactionId, @as(c_int, 2));
pub const FirstNormalTransactionId = @import("std").zig.c_translation.cast(TransactionId, @as(c_int, 3));
pub const MaxTransactionId = @import("std").zig.c_translation.cast(TransactionId, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFFFFFFF, .hexadecimal));
pub inline fn TransactionIdIsValid(xid: anytype) @TypeOf(xid != InvalidTransactionId) {
    return xid != InvalidTransactionId;
}
pub inline fn TransactionIdIsNormal(xid: anytype) @TypeOf(xid >= FirstNormalTransactionId) {
    return xid >= FirstNormalTransactionId;
}
pub inline fn TransactionIdEquals(id1: anytype, id2: anytype) @TypeOf(id1 == id2) {
    return id1 == id2;
}
pub inline fn EpochFromFullTransactionId(x: anytype) uint32 {
    return @import("std").zig.c_translation.cast(uint32, x.value >> @as(c_int, 32));
}
pub inline fn XidFromFullTransactionId(x: anytype) uint32 {
    return @import("std").zig.c_translation.cast(uint32, x.value);
}
pub inline fn U64FromFullTransactionId(x: anytype) @TypeOf(x.value) {
    return x.value;
}
pub inline fn FullTransactionIdEquals(a: anytype, b: anytype) @TypeOf(a.value == b.value) {
    return a.value == b.value;
}
pub inline fn FullTransactionIdPrecedes(a: anytype, b: anytype) @TypeOf(a.value < b.value) {
    return a.value < b.value;
}
pub inline fn FullTransactionIdPrecedesOrEquals(a: anytype, b: anytype) @TypeOf(a.value <= b.value) {
    return a.value <= b.value;
}
pub inline fn FullTransactionIdFollows(a: anytype, b: anytype) @TypeOf(a.value > b.value) {
    return a.value > b.value;
}
pub inline fn FullTransactionIdFollowsOrEquals(a: anytype, b: anytype) @TypeOf(a.value >= b.value) {
    return a.value >= b.value;
}
pub inline fn FullTransactionIdIsValid(x: anytype) @TypeOf(TransactionIdIsValid(XidFromFullTransactionId(x))) {
    return TransactionIdIsValid(XidFromFullTransactionId(x));
}
pub const InvalidFullTransactionId = FullTransactionIdFromEpochAndXid(@as(c_int, 0), InvalidTransactionId);
pub const FirstNormalFullTransactionId = FullTransactionIdFromEpochAndXid(@as(c_int, 0), FirstNormalTransactionId);
pub inline fn FullTransactionIdIsNormal(x: anytype) @TypeOf(FullTransactionIdFollowsOrEquals(x, FirstNormalFullTransactionId)) {
    return FullTransactionIdFollowsOrEquals(x, FirstNormalFullTransactionId);
}
pub inline fn NormalTransactionIdPrecedes(id1: anytype, id2: anytype) @TypeOf(@import("std").zig.c_translation.cast(int32, id1 - id2) < @as(c_int, 0)) {
    return blk_1: {
        _ = AssertMacro((TransactionIdIsNormal(id1) != 0) and (TransactionIdIsNormal(id2) != 0));
        break :blk_1 @import("std").zig.c_translation.cast(int32, id1 - id2) < @as(c_int, 0);
    };
}
pub inline fn NormalTransactionIdFollows(id1: anytype, id2: anytype) @TypeOf(@import("std").zig.c_translation.cast(int32, id1 - id2) > @as(c_int, 0)) {
    return blk_1: {
        _ = AssertMacro((TransactionIdIsNormal(id1) != 0) and (TransactionIdIsNormal(id2) != 0));
        break :blk_1 @import("std").zig.c_translation.cast(int32, id1 - id2) > @as(c_int, 0);
    };
}
pub const FirstGenbkiObjectId = @as(c_int, 10000);
pub const FirstUnpinnedObjectId = @as(c_int, 12000);
pub const FirstNormalObjectId = @as(c_int, 16384);
pub inline fn AssertTransactionIdInAllowableRange(xid: anytype) anyopaque {
    _ = @TypeOf(xid);
    return @import("std").zig.c_translation.cast(anyopaque, @"true");
}
pub const TUPMACS_H = "";
pub const PG_TYPE_D_H = "";
pub const TypeRelationId = @as(c_int, 1247);
pub const TypeRelation_Rowtype_Id = @as(c_int, 71);
pub const TypeOidIndexId = @as(c_int, 2703);
pub const TypeNameNspIndexId = @as(c_int, 2704);
pub const Anum_pg_type_oid = @as(c_int, 1);
pub const Anum_pg_type_typname = @as(c_int, 2);
pub const Anum_pg_type_typnamespace = @as(c_int, 3);
pub const Anum_pg_type_typowner = @as(c_int, 4);
pub const Anum_pg_type_typlen = @as(c_int, 5);
pub const Anum_pg_type_typbyval = @as(c_int, 6);
pub const Anum_pg_type_typtype = @as(c_int, 7);
pub const Anum_pg_type_typcategory = @as(c_int, 8);
pub const Anum_pg_type_typispreferred = @as(c_int, 9);
pub const Anum_pg_type_typisdefined = @as(c_int, 10);
pub const Anum_pg_type_typdelim = @as(c_int, 11);
pub const Anum_pg_type_typrelid = @as(c_int, 12);
pub const Anum_pg_type_typsubscript = @as(c_int, 13);
pub const Anum_pg_type_typelem = @as(c_int, 14);
pub const Anum_pg_type_typarray = @as(c_int, 15);
pub const Anum_pg_type_typinput = @as(c_int, 16);
pub const Anum_pg_type_typoutput = @as(c_int, 17);
pub const Anum_pg_type_typreceive = @as(c_int, 18);
pub const Anum_pg_type_typsend = @as(c_int, 19);
pub const Anum_pg_type_typmodin = @as(c_int, 20);
pub const Anum_pg_type_typmodout = @as(c_int, 21);
pub const Anum_pg_type_typanalyze = @as(c_int, 22);
pub const Anum_pg_type_typalign = @as(c_int, 23);
pub const Anum_pg_type_typstorage = @as(c_int, 24);
pub const Anum_pg_type_typnotnull = @as(c_int, 25);
pub const Anum_pg_type_typbasetype = @as(c_int, 26);
pub const Anum_pg_type_typtypmod = @as(c_int, 27);
pub const Anum_pg_type_typndims = @as(c_int, 28);
pub const Anum_pg_type_typcollation = @as(c_int, 29);
pub const Anum_pg_type_typdefaultbin = @as(c_int, 30);
pub const Anum_pg_type_typdefault = @as(c_int, 31);
pub const Anum_pg_type_typacl = @as(c_int, 32);
pub const Natts_pg_type = @as(c_int, 32);
pub const TYPTYPE_BASE = 'b';
pub const TYPTYPE_COMPOSITE = 'c';
pub const TYPTYPE_DOMAIN = 'd';
pub const TYPTYPE_ENUM = 'e';
pub const TYPTYPE_MULTIRANGE = 'm';
pub const TYPTYPE_PSEUDO = 'p';
pub const TYPTYPE_RANGE = 'r';
pub const TYPCATEGORY_INVALID = '\x00';
pub const TYPCATEGORY_ARRAY = 'A';
pub const TYPCATEGORY_BOOLEAN = 'B';
pub const TYPCATEGORY_COMPOSITE = 'C';
pub const TYPCATEGORY_DATETIME = 'D';
pub const TYPCATEGORY_ENUM = 'E';
pub const TYPCATEGORY_GEOMETRIC = 'G';
pub const TYPCATEGORY_NETWORK = 'I';
pub const TYPCATEGORY_NUMERIC = 'N';
pub const TYPCATEGORY_PSEUDOTYPE = 'P';
pub const TYPCATEGORY_RANGE = 'R';
pub const TYPCATEGORY_STRING = 'S';
pub const TYPCATEGORY_TIMESPAN = 'T';
pub const TYPCATEGORY_USER = 'U';
pub const TYPCATEGORY_BITSTRING = 'V';
pub const TYPCATEGORY_UNKNOWN = 'X';
pub const TYPCATEGORY_INTERNAL = 'Z';
pub const TYPALIGN_CHAR = 'c';
pub const TYPALIGN_SHORT = 's';
pub const TYPALIGN_INT = 'i';
pub const TYPALIGN_DOUBLE = 'd';
pub const TYPSTORAGE_PLAIN = 'p';
pub const TYPSTORAGE_EXTERNAL = 'e';
pub const TYPSTORAGE_EXTENDED = 'x';
pub const TYPSTORAGE_MAIN = 'm';
pub inline fn IsPolymorphicType(typid: anytype) @TypeOf((IsPolymorphicTypeFamily1(typid) != 0) or (IsPolymorphicTypeFamily2(typid) != 0)) {
    return (IsPolymorphicTypeFamily1(typid) != 0) or (IsPolymorphicTypeFamily2(typid) != 0);
}
pub inline fn IsPolymorphicTypeFamily1(typid: anytype) @TypeOf((((((typid == ANYELEMENTOID) or (typid == ANYARRAYOID)) or (typid == ANYNONARRAYOID)) or (typid == ANYENUMOID)) or (typid == ANYRANGEOID)) or (typid == ANYMULTIRANGEOID)) {
    return (((((typid == ANYELEMENTOID) or (typid == ANYARRAYOID)) or (typid == ANYNONARRAYOID)) or (typid == ANYENUMOID)) or (typid == ANYRANGEOID)) or (typid == ANYMULTIRANGEOID);
}
pub inline fn IsPolymorphicTypeFamily2(typid: anytype) @TypeOf(((((typid == ANYCOMPATIBLEOID) or (typid == ANYCOMPATIBLEARRAYOID)) or (typid == ANYCOMPATIBLENONARRAYOID)) or (typid == ANYCOMPATIBLERANGEOID)) or (typid == ANYCOMPATIBLEMULTIRANGEOID)) {
    return ((((typid == ANYCOMPATIBLEOID) or (typid == ANYCOMPATIBLEARRAYOID)) or (typid == ANYCOMPATIBLENONARRAYOID)) or (typid == ANYCOMPATIBLERANGEOID)) or (typid == ANYCOMPATIBLEMULTIRANGEOID);
}
pub const CASHOID = MONEYOID;
pub const LSNOID = PG_LSNOID;
pub const BOOLOID = @as(c_int, 16);
pub const BYTEAOID = @as(c_int, 17);
pub const CHAROID = @as(c_int, 18);
pub const NAMEOID = @as(c_int, 19);
pub const INT8OID = @as(c_int, 20);
pub const INT2OID = @as(c_int, 21);
pub const INT2VECTOROID = @as(c_int, 22);
pub const INT4OID = @as(c_int, 23);
pub const REGPROCOID = @as(c_int, 24);
pub const TEXTOID = @as(c_int, 25);
pub const OIDOID = @as(c_int, 26);
pub const TIDOID = @as(c_int, 27);
pub const XIDOID = @as(c_int, 28);
pub const CIDOID = @as(c_int, 29);
pub const OIDVECTOROID = @as(c_int, 30);
pub const JSONOID = @as(c_int, 114);
pub const XMLOID = @as(c_int, 142);
pub const PG_NODE_TREEOID = @as(c_int, 194);
pub const PG_NDISTINCTOID = @as(c_int, 3361);
pub const PG_DEPENDENCIESOID = @as(c_int, 3402);
pub const PG_MCV_LISTOID = @as(c_int, 5017);
pub const PG_DDL_COMMANDOID = @as(c_int, 32);
pub const XID8OID = @as(c_int, 5069);
pub const POINTOID = @as(c_int, 600);
pub const LSEGOID = @as(c_int, 601);
pub const PATHOID = @as(c_int, 602);
pub const BOXOID = @as(c_int, 603);
pub const POLYGONOID = @as(c_int, 604);
pub const LINEOID = @as(c_int, 628);
pub const FLOAT4OID = @as(c_int, 700);
pub const FLOAT8OID = @as(c_int, 701);
pub const UNKNOWNOID = @as(c_int, 705);
pub const CIRCLEOID = @as(c_int, 718);
pub const MONEYOID = @as(c_int, 790);
pub const MACADDROID = @as(c_int, 829);
pub const INETOID = @as(c_int, 869);
pub const CIDROID = @as(c_int, 650);
pub const MACADDR8OID = @as(c_int, 774);
pub const ACLITEMOID = @as(c_int, 1033);
pub const BPCHAROID = @as(c_int, 1042);
pub const VARCHAROID = @as(c_int, 1043);
pub const DATEOID = @as(c_int, 1082);
pub const TIMEOID = @as(c_int, 1083);
pub const TIMESTAMPOID = @as(c_int, 1114);
pub const TIMESTAMPTZOID = @as(c_int, 1184);
pub const INTERVALOID = @as(c_int, 1186);
pub const TIMETZOID = @as(c_int, 1266);
pub const BITOID = @as(c_int, 1560);
pub const VARBITOID = @as(c_int, 1562);
pub const NUMERICOID = @as(c_int, 1700);
pub const REFCURSOROID = @as(c_int, 1790);
pub const REGPROCEDUREOID = @as(c_int, 2202);
pub const REGOPEROID = @as(c_int, 2203);
pub const REGOPERATOROID = @as(c_int, 2204);
pub const REGCLASSOID = @as(c_int, 2205);
pub const REGCOLLATIONOID = @as(c_int, 4191);
pub const REGTYPEOID = @as(c_int, 2206);
pub const REGROLEOID = @as(c_int, 4096);
pub const REGNAMESPACEOID = @as(c_int, 4089);
pub const UUIDOID = @as(c_int, 2950);
pub const PG_LSNOID = @as(c_int, 3220);
pub const TSVECTOROID = @as(c_int, 3614);
pub const GTSVECTOROID = @as(c_int, 3642);
pub const TSQUERYOID = @as(c_int, 3615);
pub const REGCONFIGOID = @as(c_int, 3734);
pub const REGDICTIONARYOID = @as(c_int, 3769);
pub const JSONBOID = @as(c_int, 3802);
pub const JSONPATHOID = @as(c_int, 4072);
pub const TXID_SNAPSHOTOID = @as(c_int, 2970);
pub const PG_SNAPSHOTOID = @as(c_int, 5038);
pub const INT4RANGEOID = @as(c_int, 3904);
pub const NUMRANGEOID = @as(c_int, 3906);
pub const TSRANGEOID = @as(c_int, 3908);
pub const TSTZRANGEOID = @as(c_int, 3910);
pub const DATERANGEOID = @as(c_int, 3912);
pub const INT8RANGEOID = @as(c_int, 3926);
pub const INT4MULTIRANGEOID = @as(c_int, 4451);
pub const NUMMULTIRANGEOID = @as(c_int, 4532);
pub const TSMULTIRANGEOID = @as(c_int, 4533);
pub const TSTZMULTIRANGEOID = @as(c_int, 4534);
pub const DATEMULTIRANGEOID = @as(c_int, 4535);
pub const INT8MULTIRANGEOID = @as(c_int, 4536);
pub const RECORDOID = @as(c_int, 2249);
pub const RECORDARRAYOID = @as(c_int, 2287);
pub const CSTRINGOID = @as(c_int, 2275);
pub const ANYOID = @as(c_int, 2276);
pub const ANYARRAYOID = @as(c_int, 2277);
pub const VOIDOID = @as(c_int, 2278);
pub const TRIGGEROID = @as(c_int, 2279);
pub const EVENT_TRIGGEROID = @as(c_int, 3838);
pub const LANGUAGE_HANDLEROID = @as(c_int, 2280);
pub const INTERNALOID = @as(c_int, 2281);
pub const ANYELEMENTOID = @as(c_int, 2283);
pub const ANYNONARRAYOID = @as(c_int, 2776);
pub const ANYENUMOID = @as(c_int, 3500);
pub const FDW_HANDLEROID = @as(c_int, 3115);
pub const INDEX_AM_HANDLEROID = @as(c_int, 325);
pub const TSM_HANDLEROID = @as(c_int, 3310);
pub const TABLE_AM_HANDLEROID = @as(c_int, 269);
pub const ANYRANGEOID = @as(c_int, 3831);
pub const ANYCOMPATIBLEOID = @as(c_int, 5077);
pub const ANYCOMPATIBLEARRAYOID = @as(c_int, 5078);
pub const ANYCOMPATIBLENONARRAYOID = @as(c_int, 5079);
pub const ANYCOMPATIBLERANGEOID = @as(c_int, 5080);
pub const ANYMULTIRANGEOID = @as(c_int, 4537);
pub const ANYCOMPATIBLEMULTIRANGEOID = @as(c_int, 4538);
pub const PG_BRIN_BLOOM_SUMMARYOID = @as(c_int, 4600);
pub const PG_BRIN_MINMAX_MULTI_SUMMARYOID = @as(c_int, 4601);
pub const BOOLARRAYOID = @as(c_int, 1000);
pub const BYTEAARRAYOID = @as(c_int, 1001);
pub const CHARARRAYOID = @as(c_int, 1002);
pub const NAMEARRAYOID = @as(c_int, 1003);
pub const INT8ARRAYOID = @as(c_int, 1016);
pub const INT2ARRAYOID = @as(c_int, 1005);
pub const INT2VECTORARRAYOID = @as(c_int, 1006);
pub const INT4ARRAYOID = @as(c_int, 1007);
pub const REGPROCARRAYOID = @as(c_int, 1008);
pub const TEXTARRAYOID = @as(c_int, 1009);
pub const OIDARRAYOID = @as(c_int, 1028);
pub const TIDARRAYOID = @as(c_int, 1010);
pub const XIDARRAYOID = @as(c_int, 1011);
pub const CIDARRAYOID = @as(c_int, 1012);
pub const OIDVECTORARRAYOID = @as(c_int, 1013);
pub const PG_TYPEARRAYOID = @as(c_int, 210);
pub const PG_ATTRIBUTEARRAYOID = @as(c_int, 270);
pub const PG_PROCARRAYOID = @as(c_int, 272);
pub const PG_CLASSARRAYOID = @as(c_int, 273);
pub const JSONARRAYOID = @as(c_int, 199);
pub const XMLARRAYOID = @as(c_int, 143);
pub const XID8ARRAYOID = @as(c_int, 271);
pub const POINTARRAYOID = @as(c_int, 1017);
pub const LSEGARRAYOID = @as(c_int, 1018);
pub const PATHARRAYOID = @as(c_int, 1019);
pub const BOXARRAYOID = @as(c_int, 1020);
pub const POLYGONARRAYOID = @as(c_int, 1027);
pub const LINEARRAYOID = @as(c_int, 629);
pub const FLOAT4ARRAYOID = @as(c_int, 1021);
pub const FLOAT8ARRAYOID = @as(c_int, 1022);
pub const CIRCLEARRAYOID = @as(c_int, 719);
pub const MONEYARRAYOID = @as(c_int, 791);
pub const MACADDRARRAYOID = @as(c_int, 1040);
pub const INETARRAYOID = @as(c_int, 1041);
pub const CIDRARRAYOID = @as(c_int, 651);
pub const MACADDR8ARRAYOID = @as(c_int, 775);
pub const ACLITEMARRAYOID = @as(c_int, 1034);
pub const BPCHARARRAYOID = @as(c_int, 1014);
pub const VARCHARARRAYOID = @as(c_int, 1015);
pub const DATEARRAYOID = @as(c_int, 1182);
pub const TIMEARRAYOID = @as(c_int, 1183);
pub const TIMESTAMPARRAYOID = @as(c_int, 1115);
pub const TIMESTAMPTZARRAYOID = @as(c_int, 1185);
pub const INTERVALARRAYOID = @as(c_int, 1187);
pub const TIMETZARRAYOID = @as(c_int, 1270);
pub const BITARRAYOID = @as(c_int, 1561);
pub const VARBITARRAYOID = @as(c_int, 1563);
pub const NUMERICARRAYOID = @as(c_int, 1231);
pub const REFCURSORARRAYOID = @as(c_int, 2201);
pub const REGPROCEDUREARRAYOID = @as(c_int, 2207);
pub const REGOPERARRAYOID = @as(c_int, 2208);
pub const REGOPERATORARRAYOID = @as(c_int, 2209);
pub const REGCLASSARRAYOID = @as(c_int, 2210);
pub const REGCOLLATIONARRAYOID = @as(c_int, 4192);
pub const REGTYPEARRAYOID = @as(c_int, 2211);
pub const REGROLEARRAYOID = @as(c_int, 4097);
pub const REGNAMESPACEARRAYOID = @as(c_int, 4090);
pub const UUIDARRAYOID = @as(c_int, 2951);
pub const PG_LSNARRAYOID = @as(c_int, 3221);
pub const TSVECTORARRAYOID = @as(c_int, 3643);
pub const GTSVECTORARRAYOID = @as(c_int, 3644);
pub const TSQUERYARRAYOID = @as(c_int, 3645);
pub const REGCONFIGARRAYOID = @as(c_int, 3735);
pub const REGDICTIONARYARRAYOID = @as(c_int, 3770);
pub const JSONBARRAYOID = @as(c_int, 3807);
pub const JSONPATHARRAYOID = @as(c_int, 4073);
pub const TXID_SNAPSHOTARRAYOID = @as(c_int, 2949);
pub const PG_SNAPSHOTARRAYOID = @as(c_int, 5039);
pub const INT4RANGEARRAYOID = @as(c_int, 3905);
pub const NUMRANGEARRAYOID = @as(c_int, 3907);
pub const TSRANGEARRAYOID = @as(c_int, 3909);
pub const TSTZRANGEARRAYOID = @as(c_int, 3911);
pub const DATERANGEARRAYOID = @as(c_int, 3913);
pub const INT8RANGEARRAYOID = @as(c_int, 3927);
pub const INT4MULTIRANGEARRAYOID = @as(c_int, 6150);
pub const NUMMULTIRANGEARRAYOID = @as(c_int, 6151);
pub const TSMULTIRANGEARRAYOID = @as(c_int, 6152);
pub const TSTZMULTIRANGEARRAYOID = @as(c_int, 6153);
pub const DATEMULTIRANGEARRAYOID = @as(c_int, 6155);
pub const INT8MULTIRANGEARRAYOID = @as(c_int, 6157);
pub const CSTRINGARRAYOID = @as(c_int, 1263);
pub inline fn att_isnull(ATT: anytype, BITS: anytype) @TypeOf(!((BITS[@intCast(usize, ATT >> @as(c_int, 3))] & (@as(c_int, 1) << (ATT & @as(c_int, 0x07)))) != 0)) {
    return !((BITS[@intCast(usize, ATT >> @as(c_int, 3))] & (@as(c_int, 1) << (ATT & @as(c_int, 0x07)))) != 0);
}
pub inline fn fetchatt(A: anytype, T: anytype) @TypeOf(fetch_att(T, A.*.attbyval, A.*.attlen)) {
    return fetch_att(T, A.*.attbyval, A.*.attlen);
}
pub inline fn fetch_att(T: anytype, attbyval: anytype, attlen: anytype) @TypeOf(if (attbyval) if (attlen == @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(Datum))) @import("std").zig.c_translation.cast([*c]Datum, T).* else if (attlen == @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(int32))) Int32GetDatum(@import("std").zig.c_translation.cast([*c]int32, T).*) else if (attlen == @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(int16))) Int16GetDatum(@import("std").zig.c_translation.cast([*c]int16, T).*) else blk_5: {
    _ = AssertMacro(attlen == @as(c_int, 1));
    break :blk_5 CharGetDatum(@import("std").zig.c_translation.cast([*c]u8, T).*);
} else PointerGetDatum(@import("std").zig.c_translation.cast([*c]u8, T))) {
    return if (attbyval) if (attlen == @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(Datum))) @import("std").zig.c_translation.cast([*c]Datum, T).* else if (attlen == @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(int32))) Int32GetDatum(@import("std").zig.c_translation.cast([*c]int32, T).*) else if (attlen == @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.sizeof(int16))) Int16GetDatum(@import("std").zig.c_translation.cast([*c]int16, T).*) else blk_5: {
        _ = AssertMacro(attlen == @as(c_int, 1));
        break :blk_5 CharGetDatum(@import("std").zig.c_translation.cast([*c]u8, T).*);
    } else PointerGetDatum(@import("std").zig.c_translation.cast([*c]u8, T));
}
pub inline fn att_align_datum(cur_offset: anytype, attalign: anytype, attlen: anytype, attdatum: anytype) @TypeOf(if ((attlen == -@as(c_int, 1)) and (VARATT_IS_SHORT(DatumGetPointer(attdatum)) != 0)) @import("std").zig.c_translation.cast(usize, cur_offset) else att_align_nominal(cur_offset, attalign)) {
    return if ((attlen == -@as(c_int, 1)) and (VARATT_IS_SHORT(DatumGetPointer(attdatum)) != 0)) @import("std").zig.c_translation.cast(usize, cur_offset) else att_align_nominal(cur_offset, attalign);
}
pub inline fn att_align_pointer(cur_offset: anytype, attalign: anytype, attlen: anytype, attptr: anytype) @TypeOf(if ((attlen == -@as(c_int, 1)) and (VARATT_NOT_PAD_BYTE(attptr) != 0)) @import("std").zig.c_translation.cast(usize, cur_offset) else att_align_nominal(cur_offset, attalign)) {
    return if ((attlen == -@as(c_int, 1)) and (VARATT_NOT_PAD_BYTE(attptr) != 0)) @import("std").zig.c_translation.cast(usize, cur_offset) else att_align_nominal(cur_offset, attalign);
}
pub inline fn att_align_nominal(cur_offset: anytype, attalign: anytype) @TypeOf(if (attalign == TYPALIGN_INT) INTALIGN(cur_offset) else if (attalign == TYPALIGN_CHAR) @import("std").zig.c_translation.cast(usize, cur_offset) else if (attalign == TYPALIGN_DOUBLE) DOUBLEALIGN(cur_offset) else blk_4: {
    _ = AssertMacro(attalign == TYPALIGN_SHORT);
    break :blk_4 SHORTALIGN(cur_offset);
}) {
    return if (attalign == TYPALIGN_INT) INTALIGN(cur_offset) else if (attalign == TYPALIGN_CHAR) @import("std").zig.c_translation.cast(usize, cur_offset) else if (attalign == TYPALIGN_DOUBLE) DOUBLEALIGN(cur_offset) else blk_4: {
        _ = AssertMacro(attalign == TYPALIGN_SHORT);
        break :blk_4 SHORTALIGN(cur_offset);
    };
}
pub inline fn att_addlength_datum(cur_offset: anytype, attlen: anytype, attdatum: anytype) @TypeOf(att_addlength_pointer(cur_offset, attlen, DatumGetPointer(attdatum))) {
    return att_addlength_pointer(cur_offset, attlen, DatumGetPointer(attdatum));
}
pub inline fn att_addlength_pointer(cur_offset: anytype, attlen: anytype, attptr: anytype) @TypeOf(if (attlen > @as(c_int, 0)) cur_offset + attlen else if (attlen == -@as(c_int, 1)) cur_offset + VARSIZE_ANY(attptr) else blk_3: {
    _ = AssertMacro(attlen == -@as(c_int, 2));
    break :blk_3 cur_offset + (strlen(@import("std").zig.c_translation.cast([*c]u8, attptr)) + @as(c_int, 1));
}) {
    return if (attlen > @as(c_int, 0)) cur_offset + attlen else if (attlen == -@as(c_int, 1)) cur_offset + VARSIZE_ANY(attptr) else blk_3: {
        _ = AssertMacro(attlen == -@as(c_int, 2));
        break :blk_3 cur_offset + (strlen(@import("std").zig.c_translation.cast([*c]u8, attptr)) + @as(c_int, 1));
    };
}
pub const BUFPAGE_H = "";
pub const ITEM_H = "";
pub inline fn PageXLogRecPtrGet(val: anytype) @TypeOf((@import("std").zig.c_translation.cast(uint64, val.xlogid) << @as(c_int, 32)) | val.xrecoff) {
    return (@import("std").zig.c_translation.cast(uint64, val.xlogid) << @as(c_int, 32)) | val.xrecoff;
}
pub const PD_HAS_FREE_LINES = @as(c_int, 0x0001);
pub const PD_PAGE_FULL = @as(c_int, 0x0002);
pub const PD_ALL_VISIBLE = @as(c_int, 0x0004);
pub const PD_VALID_FLAG_BITS = @as(c_int, 0x0007);
pub const PG_PAGE_LAYOUT_VERSION = @as(c_int, 4);
pub const PG_DATA_CHECKSUM_VERSION = @as(c_int, 1);
pub inline fn PageIsValid(page: anytype) @TypeOf(PointerIsValid(page)) {
    return PointerIsValid(page);
}
pub inline fn PageIsEmpty(page: anytype) @TypeOf(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_lower <= SizeOfPageHeaderData) {
    return @import("std").zig.c_translation.cast(PageHeader, page).*.pd_lower <= SizeOfPageHeaderData;
}
pub inline fn PageIsNew(page: anytype) @TypeOf(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_upper == @as(c_int, 0)) {
    return @import("std").zig.c_translation.cast(PageHeader, page).*.pd_upper == @as(c_int, 0);
}
pub inline fn PageGetItemId(page: anytype, offsetNumber: anytype) ItemId {
    return @import("std").zig.c_translation.cast(ItemId, &@import("std").zig.c_translation.cast(PageHeader, page).*.pd_linp[@intCast(usize, offsetNumber - @as(c_int, 1))]);
}
pub inline fn PageGetContents(page: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]u8, page) + MAXALIGN(SizeOfPageHeaderData)) {
    return @import("std").zig.c_translation.cast([*c]u8, page) + MAXALIGN(SizeOfPageHeaderData);
}
pub inline fn PageSizeIsValid(pageSize: anytype) @TypeOf(pageSize == BLCKSZ) {
    return pageSize == BLCKSZ;
}
pub inline fn PageGetPageSize(page: anytype) Size {
    return @import("std").zig.c_translation.cast(Size, @import("std").zig.c_translation.cast(PageHeader, page).*.pd_pagesize_version & @import("std").zig.c_translation.cast(uint16, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFF00, .hexadecimal)));
}
pub inline fn PageGetPageLayoutVersion(page: anytype) @TypeOf(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_pagesize_version & @as(c_int, 0x00FF)) {
    return @import("std").zig.c_translation.cast(PageHeader, page).*.pd_pagesize_version & @as(c_int, 0x00FF);
}
pub inline fn PageGetSpecialSize(page: anytype) uint16 {
    return @import("std").zig.c_translation.cast(uint16, PageGetPageSize(page) - @import("std").zig.c_translation.cast(PageHeader, page).*.pd_special);
}
pub inline fn PageGetSpecialPointer(page: anytype) [*c]u8 {
    return blk_1: {
        _ = AssertMacro(PageValidateSpecialPointer(page));
        break :blk_1 @import("std").zig.c_translation.cast([*c]u8, @import("std").zig.c_translation.cast([*c]u8, page) + @import("std").zig.c_translation.cast(PageHeader, page).*.pd_special);
    };
}
pub inline fn PageGetItem(page: anytype, itemId: anytype) Item {
    return blk_1: {
        _ = AssertMacro(PageIsValid(page));
        _ = AssertMacro(ItemIdHasStorage(itemId));
        break :blk_1 @import("std").zig.c_translation.cast(Item, @import("std").zig.c_translation.cast([*c]u8, page) + ItemIdGetOffset(itemId));
    };
}
pub inline fn PageGetMaxOffsetNumber(page: anytype) @TypeOf(if (@import("std").zig.c_translation.cast(PageHeader, page).*.pd_lower <= SizeOfPageHeaderData) @as(c_int, 0) else @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_lower - SizeOfPageHeaderData, @import("std").zig.c_translation.sizeof(ItemIdData))) {
    return if (@import("std").zig.c_translation.cast(PageHeader, page).*.pd_lower <= SizeOfPageHeaderData) @as(c_int, 0) else @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_lower - SizeOfPageHeaderData, @import("std").zig.c_translation.sizeof(ItemIdData));
}
pub inline fn PageGetLSN(page: anytype) @TypeOf(PageXLogRecPtrGet(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_lsn)) {
    return PageXLogRecPtrGet(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_lsn);
}
pub inline fn PageSetLSN(page: anytype, lsn: anytype) @TypeOf(PageXLogRecPtrSet(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_lsn, lsn)) {
    return PageXLogRecPtrSet(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_lsn, lsn);
}
pub inline fn PageHasFreeLinePointers(page: anytype) @TypeOf(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_flags & PD_HAS_FREE_LINES) {
    return @import("std").zig.c_translation.cast(PageHeader, page).*.pd_flags & PD_HAS_FREE_LINES;
}
pub inline fn PageIsFull(page: anytype) @TypeOf(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_flags & PD_PAGE_FULL) {
    return @import("std").zig.c_translation.cast(PageHeader, page).*.pd_flags & PD_PAGE_FULL;
}
pub inline fn PageIsAllVisible(page: anytype) @TypeOf(@import("std").zig.c_translation.cast(PageHeader, page).*.pd_flags & PD_ALL_VISIBLE) {
    return @import("std").zig.c_translation.cast(PageHeader, page).*.pd_flags & PD_ALL_VISIBLE;
}
pub const PAI_OVERWRITE = @as(c_int, 1) << @as(c_int, 0);
pub const PAI_IS_HEAP = @as(c_int, 1) << @as(c_int, 1);
pub const PIV_LOG_WARNING = @as(c_int, 1) << @as(c_int, 0);
pub const PIV_REPORT_STAT = @as(c_int, 1) << @as(c_int, 1);
pub inline fn PageAddItem(page: anytype, item: anytype, size: anytype, offsetNumber: anytype, overwrite: anytype, is_heap: anytype) @TypeOf(PageAddItemExtended(page, item, size, offsetNumber, (if (overwrite) PAI_OVERWRITE else @as(c_int, 0)) | (if (is_heap) PAI_IS_HEAP else @as(c_int, 0)))) {
    return PageAddItemExtended(page, item, size, offsetNumber, (if (overwrite) PAI_OVERWRITE else @as(c_int, 0)) | (if (is_heap) PAI_IS_HEAP else @as(c_int, 0)));
}
pub inline fn PageIsVerified(page: anytype, blkno: anytype) @TypeOf(PageIsVerifiedExtended(page, blkno, PIV_LOG_WARNING | PIV_REPORT_STAT)) {
    return PageIsVerifiedExtended(page, blkno, PIV_LOG_WARNING | PIV_REPORT_STAT);
}
pub const MaxTupleAttributeNumber = @as(c_int, 1664);
pub const MaxHeapAttributeNumber = @as(c_int, 1600);
pub const FIELDNO_HEAPTUPLEHEADERDATA_INFOMASK2 = @as(c_int, 2);
pub const FIELDNO_HEAPTUPLEHEADERDATA_INFOMASK = @as(c_int, 3);
pub const FIELDNO_HEAPTUPLEHEADERDATA_HOFF = @as(c_int, 4);
pub const FIELDNO_HEAPTUPLEHEADERDATA_BITS = @as(c_int, 5);
pub const HEAP_HASNULL = @as(c_int, 0x0001);
pub const HEAP_HASVARWIDTH = @as(c_int, 0x0002);
pub const HEAP_HASEXTERNAL = @as(c_int, 0x0004);
pub const HEAP_HASOID_OLD = @as(c_int, 0x0008);
pub const HEAP_XMAX_KEYSHR_LOCK = @as(c_int, 0x0010);
pub const HEAP_COMBOCID = @as(c_int, 0x0020);
pub const HEAP_XMAX_EXCL_LOCK = @as(c_int, 0x0040);
pub const HEAP_XMAX_LOCK_ONLY = @as(c_int, 0x0080);
pub const HEAP_XMAX_SHR_LOCK = HEAP_XMAX_EXCL_LOCK | HEAP_XMAX_KEYSHR_LOCK;
pub const HEAP_LOCK_MASK = (HEAP_XMAX_SHR_LOCK | HEAP_XMAX_EXCL_LOCK) | HEAP_XMAX_KEYSHR_LOCK;
pub const HEAP_XMIN_COMMITTED = @as(c_int, 0x0100);
pub const HEAP_XMIN_INVALID = @as(c_int, 0x0200);
pub const HEAP_XMIN_FROZEN = HEAP_XMIN_COMMITTED | HEAP_XMIN_INVALID;
pub const HEAP_XMAX_COMMITTED = @as(c_int, 0x0400);
pub const HEAP_XMAX_INVALID = @as(c_int, 0x0800);
pub const HEAP_XMAX_IS_MULTI = @as(c_int, 0x1000);
pub const HEAP_UPDATED = @as(c_int, 0x2000);
pub const HEAP_MOVED_OFF = @as(c_int, 0x4000);
pub const HEAP_MOVED_IN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const HEAP_MOVED = HEAP_MOVED_OFF | HEAP_MOVED_IN;
pub const HEAP_XACT_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xFFF0, .hexadecimal);
pub inline fn HEAP_XMAX_IS_LOCKED_ONLY(infomask: anytype) @TypeOf(((infomask & HEAP_XMAX_LOCK_ONLY) != 0) or ((infomask & (HEAP_XMAX_IS_MULTI | HEAP_LOCK_MASK)) == HEAP_XMAX_EXCL_LOCK)) {
    return ((infomask & HEAP_XMAX_LOCK_ONLY) != 0) or ((infomask & (HEAP_XMAX_IS_MULTI | HEAP_LOCK_MASK)) == HEAP_XMAX_EXCL_LOCK);
}
pub inline fn HEAP_LOCKED_UPGRADED(infomask: anytype) @TypeOf((((infomask & HEAP_XMAX_IS_MULTI) != @as(c_int, 0)) and ((infomask & HEAP_XMAX_LOCK_ONLY) != @as(c_int, 0))) and ((infomask & (HEAP_XMAX_EXCL_LOCK | HEAP_XMAX_KEYSHR_LOCK)) == @as(c_int, 0))) {
    return (((infomask & HEAP_XMAX_IS_MULTI) != @as(c_int, 0)) and ((infomask & HEAP_XMAX_LOCK_ONLY) != @as(c_int, 0))) and ((infomask & (HEAP_XMAX_EXCL_LOCK | HEAP_XMAX_KEYSHR_LOCK)) == @as(c_int, 0));
}
pub inline fn HEAP_XMAX_IS_SHR_LOCKED(infomask: anytype) @TypeOf((infomask & HEAP_LOCK_MASK) == HEAP_XMAX_SHR_LOCK) {
    return (infomask & HEAP_LOCK_MASK) == HEAP_XMAX_SHR_LOCK;
}
pub inline fn HEAP_XMAX_IS_EXCL_LOCKED(infomask: anytype) @TypeOf((infomask & HEAP_LOCK_MASK) == HEAP_XMAX_EXCL_LOCK) {
    return (infomask & HEAP_LOCK_MASK) == HEAP_XMAX_EXCL_LOCK;
}
pub inline fn HEAP_XMAX_IS_KEYSHR_LOCKED(infomask: anytype) @TypeOf((infomask & HEAP_LOCK_MASK) == HEAP_XMAX_KEYSHR_LOCK) {
    return (infomask & HEAP_LOCK_MASK) == HEAP_XMAX_KEYSHR_LOCK;
}
pub const HEAP_XMAX_BITS = (((HEAP_XMAX_COMMITTED | HEAP_XMAX_INVALID) | HEAP_XMAX_IS_MULTI) | HEAP_LOCK_MASK) | HEAP_XMAX_LOCK_ONLY;
pub const HEAP_NATTS_MASK = @as(c_int, 0x07FF);
pub const HEAP_KEYS_UPDATED = @as(c_int, 0x2000);
pub const HEAP_HOT_UPDATED = @as(c_int, 0x4000);
pub const HEAP_ONLY_TUPLE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub const HEAP2_XACT_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0xE000, .hexadecimal);
pub const HEAP_TUPLE_HAS_MATCH = HEAP_ONLY_TUPLE;
pub inline fn HeapTupleHeaderGetRawXmin(tup: anytype) @TypeOf(tup.*.t_choice.t_heap.t_xmin) {
    return tup.*.t_choice.t_heap.t_xmin;
}
pub inline fn HeapTupleHeaderGetXmin(tup: anytype) @TypeOf(if (HeapTupleHeaderXminFrozen(tup)) FrozenTransactionId else HeapTupleHeaderGetRawXmin(tup)) {
    return if (HeapTupleHeaderXminFrozen(tup)) FrozenTransactionId else HeapTupleHeaderGetRawXmin(tup);
}
pub inline fn HeapTupleHeaderXminCommitted(tup: anytype) @TypeOf((tup.*.t_infomask & HEAP_XMIN_COMMITTED) != @as(c_int, 0)) {
    return (tup.*.t_infomask & HEAP_XMIN_COMMITTED) != @as(c_int, 0);
}
pub inline fn HeapTupleHeaderXminInvalid(tup: anytype) @TypeOf((tup.*.t_infomask & (HEAP_XMIN_COMMITTED | HEAP_XMIN_INVALID)) == HEAP_XMIN_INVALID) {
    return (tup.*.t_infomask & (HEAP_XMIN_COMMITTED | HEAP_XMIN_INVALID)) == HEAP_XMIN_INVALID;
}
pub inline fn HeapTupleHeaderXminFrozen(tup: anytype) @TypeOf((tup.*.t_infomask & HEAP_XMIN_FROZEN) == HEAP_XMIN_FROZEN) {
    return (tup.*.t_infomask & HEAP_XMIN_FROZEN) == HEAP_XMIN_FROZEN;
}
pub inline fn HeapTupleHeaderGetUpdateXid(tup: anytype) @TypeOf(if ((!((tup.*.t_infomask & HEAP_XMAX_INVALID) != 0) and ((tup.*.t_infomask & HEAP_XMAX_IS_MULTI) != 0)) and !((tup.*.t_infomask & HEAP_XMAX_LOCK_ONLY) != 0)) HeapTupleGetUpdateXid(tup) else HeapTupleHeaderGetRawXmax(tup)) {
    return if ((!((tup.*.t_infomask & HEAP_XMAX_INVALID) != 0) and ((tup.*.t_infomask & HEAP_XMAX_IS_MULTI) != 0)) and !((tup.*.t_infomask & HEAP_XMAX_LOCK_ONLY) != 0)) HeapTupleGetUpdateXid(tup) else HeapTupleHeaderGetRawXmax(tup);
}
pub inline fn HeapTupleHeaderGetRawXmax(tup: anytype) @TypeOf(tup.*.t_choice.t_heap.t_xmax) {
    return tup.*.t_choice.t_heap.t_xmax;
}
pub inline fn HeapTupleHeaderGetRawCommandId(tup: anytype) @TypeOf(tup.*.t_choice.t_heap.t_field3.t_cid) {
    return tup.*.t_choice.t_heap.t_field3.t_cid;
}
pub inline fn HeapTupleHeaderGetXvac(tup: anytype) @TypeOf(if (tup.*.t_infomask & HEAP_MOVED) tup.*.t_choice.t_heap.t_field3.t_xvac else InvalidTransactionId) {
    return if (tup.*.t_infomask & HEAP_MOVED) tup.*.t_choice.t_heap.t_field3.t_xvac else InvalidTransactionId;
}
pub inline fn HeapTupleHeaderIsSpeculative(tup: anytype) @TypeOf(ItemPointerGetOffsetNumberNoCheck(&tup.*.t_ctid) == SpecTokenOffsetNumber) {
    return ItemPointerGetOffsetNumberNoCheck(&tup.*.t_ctid) == SpecTokenOffsetNumber;
}
pub inline fn HeapTupleHeaderGetSpeculativeToken(tup: anytype) @TypeOf(ItemPointerGetBlockNumber(&tup.*.t_ctid)) {
    return blk_1: {
        _ = AssertMacro(HeapTupleHeaderIsSpeculative(tup));
        break :blk_1 ItemPointerGetBlockNumber(&tup.*.t_ctid);
    };
}
pub inline fn HeapTupleHeaderSetSpeculativeToken(tup: anytype, token: anytype) @TypeOf(ItemPointerSet(&tup.*.t_ctid, token, SpecTokenOffsetNumber)) {
    return ItemPointerSet(&tup.*.t_ctid, token, SpecTokenOffsetNumber);
}
pub inline fn HeapTupleHeaderIndicatesMovedPartitions(tup: anytype) @TypeOf(ItemPointerIndicatesMovedPartitions(&tup.*.t_ctid)) {
    return ItemPointerIndicatesMovedPartitions(&tup.*.t_ctid);
}
pub inline fn HeapTupleHeaderSetMovedPartitions(tup: anytype) @TypeOf(ItemPointerSetMovedPartitions(&tup.*.t_ctid)) {
    return ItemPointerSetMovedPartitions(&tup.*.t_ctid);
}
pub inline fn HeapTupleHeaderGetDatumLength(tup: anytype) @TypeOf(VARSIZE(tup)) {
    return VARSIZE(tup);
}
pub inline fn HeapTupleHeaderSetDatumLength(tup: anytype, len: anytype) @TypeOf(SET_VARSIZE(tup, len)) {
    return SET_VARSIZE(tup, len);
}
pub inline fn HeapTupleHeaderGetTypeId(tup: anytype) @TypeOf(tup.*.t_choice.t_datum.datum_typeid) {
    return tup.*.t_choice.t_datum.datum_typeid;
}
pub inline fn HeapTupleHeaderGetTypMod(tup: anytype) @TypeOf(tup.*.t_choice.t_datum.datum_typmod) {
    return tup.*.t_choice.t_datum.datum_typmod;
}
pub inline fn HeapTupleHeaderIsHotUpdated(tup: anytype) @TypeOf((((tup.*.t_infomask2 & HEAP_HOT_UPDATED) != @as(c_int, 0)) and ((tup.*.t_infomask & HEAP_XMAX_INVALID) == @as(c_int, 0))) and !(HeapTupleHeaderXminInvalid(tup) != 0)) {
    return (((tup.*.t_infomask2 & HEAP_HOT_UPDATED) != @as(c_int, 0)) and ((tup.*.t_infomask & HEAP_XMAX_INVALID) == @as(c_int, 0))) and !(HeapTupleHeaderXminInvalid(tup) != 0);
}
pub inline fn HeapTupleHeaderIsHeapOnly(tup: anytype) @TypeOf((tup.*.t_infomask2 & HEAP_ONLY_TUPLE) != @as(c_int, 0)) {
    return (tup.*.t_infomask2 & HEAP_ONLY_TUPLE) != @as(c_int, 0);
}
pub inline fn HeapTupleHeaderHasMatch(tup: anytype) @TypeOf((tup.*.t_infomask2 & HEAP_TUPLE_HAS_MATCH) != @as(c_int, 0)) {
    return (tup.*.t_infomask2 & HEAP_TUPLE_HAS_MATCH) != @as(c_int, 0);
}
pub inline fn HeapTupleHeaderGetNatts(tup: anytype) @TypeOf(tup.*.t_infomask2 & HEAP_NATTS_MASK) {
    return tup.*.t_infomask2 & HEAP_NATTS_MASK;
}
pub inline fn HeapTupleHeaderHasExternal(tup: anytype) @TypeOf((tup.*.t_infomask & HEAP_HASEXTERNAL) != @as(c_int, 0)) {
    return (tup.*.t_infomask & HEAP_HASEXTERNAL) != @as(c_int, 0);
}
pub inline fn BITMAPLEN(NATTS: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(c_int, NATTS) + @as(c_int, 7), @as(c_int, 8))) {
    return @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(c_int, NATTS) + @as(c_int, 7), @as(c_int, 8));
}
pub const MaxHeapTupleSize = BLCKSZ - MAXALIGN(SizeOfPageHeaderData + @import("std").zig.c_translation.sizeof(ItemIdData));
pub const MinHeapTupleSize = MAXALIGN(SizeofHeapTupleHeader);
pub const MaxHeapTuplesPerPage = @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.MacroArithmetic.div(BLCKSZ - SizeOfPageHeaderData, MAXALIGN(SizeofHeapTupleHeader) + @import("std").zig.c_translation.sizeof(ItemIdData)));
pub const MaxAttrSize = (@as(c_int, 10) * @as(c_int, 1024)) * @as(c_int, 1024);
pub inline fn GETSTRUCT(TUP: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]u8, TUP.*.t_data) + TUP.*.t_data.*.t_hoff) {
    return @import("std").zig.c_translation.cast([*c]u8, TUP.*.t_data) + TUP.*.t_data.*.t_hoff;
}
pub inline fn HeapTupleHasNulls(tuple: anytype) @TypeOf((tuple.*.t_data.*.t_infomask & HEAP_HASNULL) != @as(c_int, 0)) {
    return (tuple.*.t_data.*.t_infomask & HEAP_HASNULL) != @as(c_int, 0);
}
pub inline fn HeapTupleNoNulls(tuple: anytype) @TypeOf(!((tuple.*.t_data.*.t_infomask & HEAP_HASNULL) != 0)) {
    return !((tuple.*.t_data.*.t_infomask & HEAP_HASNULL) != 0);
}
pub inline fn HeapTupleHasVarWidth(tuple: anytype) @TypeOf((tuple.*.t_data.*.t_infomask & HEAP_HASVARWIDTH) != @as(c_int, 0)) {
    return (tuple.*.t_data.*.t_infomask & HEAP_HASVARWIDTH) != @as(c_int, 0);
}
pub inline fn HeapTupleAllFixed(tuple: anytype) @TypeOf(!((tuple.*.t_data.*.t_infomask & HEAP_HASVARWIDTH) != 0)) {
    return !((tuple.*.t_data.*.t_infomask & HEAP_HASVARWIDTH) != 0);
}
pub inline fn HeapTupleHasExternal(tuple: anytype) @TypeOf((tuple.*.t_data.*.t_infomask & HEAP_HASEXTERNAL) != @as(c_int, 0)) {
    return (tuple.*.t_data.*.t_infomask & HEAP_HASEXTERNAL) != @as(c_int, 0);
}
pub inline fn HeapTupleIsHotUpdated(tuple: anytype) @TypeOf(HeapTupleHeaderIsHotUpdated(tuple.*.t_data)) {
    return HeapTupleHeaderIsHotUpdated(tuple.*.t_data);
}
pub inline fn HeapTupleSetHotUpdated(tuple: anytype) @TypeOf(HeapTupleHeaderSetHotUpdated(tuple.*.t_data)) {
    return HeapTupleHeaderSetHotUpdated(tuple.*.t_data);
}
pub inline fn HeapTupleClearHotUpdated(tuple: anytype) @TypeOf(HeapTupleHeaderClearHotUpdated(tuple.*.t_data)) {
    return HeapTupleHeaderClearHotUpdated(tuple.*.t_data);
}
pub inline fn HeapTupleIsHeapOnly(tuple: anytype) @TypeOf(HeapTupleHeaderIsHeapOnly(tuple.*.t_data)) {
    return HeapTupleHeaderIsHeapOnly(tuple.*.t_data);
}
pub inline fn HeapTupleSetHeapOnly(tuple: anytype) @TypeOf(HeapTupleHeaderSetHeapOnly(tuple.*.t_data)) {
    return HeapTupleHeaderSetHeapOnly(tuple.*.t_data);
}
pub inline fn HeapTupleClearHeapOnly(tuple: anytype) @TypeOf(HeapTupleHeaderClearHeapOnly(tuple.*.t_data)) {
    return HeapTupleHeaderClearHeapOnly(tuple.*.t_data);
}
pub const SYSATTR_H = "";
pub const SelfItemPointerAttributeNumber = -@as(c_int, 1);
pub const MinTransactionIdAttributeNumber = -@as(c_int, 2);
pub const MinCommandIdAttributeNumber = -@as(c_int, 3);
pub const MaxTransactionIdAttributeNumber = -@as(c_int, 4);
pub const MaxCommandIdAttributeNumber = -@as(c_int, 5);
pub const TableOidAttributeNumber = -@as(c_int, 6);
pub const FirstLowInvalidHeapAttributeNumber = -@as(c_int, 7);
pub const BUF_H = "";
pub const InvalidBuffer = @as(c_int, 0);
pub inline fn BufferIsInvalid(buffer: anytype) @TypeOf(buffer == InvalidBuffer) {
    return buffer == InvalidBuffer;
}
pub inline fn BufferIsLocal(buffer: anytype) @TypeOf(buffer < @as(c_int, 0)) {
    return buffer < @as(c_int, 0);
}
pub const TTS_FLAG_EMPTY = @as(c_int, 1) << @as(c_int, 1);
pub inline fn TTS_EMPTY(slot: anytype) @TypeOf((slot.*.tts_flags & TTS_FLAG_EMPTY) != @as(c_int, 0)) {
    return (slot.*.tts_flags & TTS_FLAG_EMPTY) != @as(c_int, 0);
}
pub const TTS_FLAG_SHOULDFREE = @as(c_int, 1) << @as(c_int, 2);
pub inline fn TTS_SHOULDFREE(slot: anytype) @TypeOf((slot.*.tts_flags & TTS_FLAG_SHOULDFREE) != @as(c_int, 0)) {
    return (slot.*.tts_flags & TTS_FLAG_SHOULDFREE) != @as(c_int, 0);
}
pub const TTS_FLAG_SLOW = @as(c_int, 1) << @as(c_int, 3);
pub inline fn TTS_SLOW(slot: anytype) @TypeOf((slot.*.tts_flags & TTS_FLAG_SLOW) != @as(c_int, 0)) {
    return (slot.*.tts_flags & TTS_FLAG_SLOW) != @as(c_int, 0);
}
pub const TTS_FLAG_FIXED = @as(c_int, 1) << @as(c_int, 4);
pub inline fn TTS_FIXED(slot: anytype) @TypeOf((slot.*.tts_flags & TTS_FLAG_FIXED) != @as(c_int, 0)) {
    return (slot.*.tts_flags & TTS_FLAG_FIXED) != @as(c_int, 0);
}
pub const FIELDNO_TUPLETABLESLOT_FLAGS = @as(c_int, 1);
pub const FIELDNO_TUPLETABLESLOT_NVALID = @as(c_int, 2);
pub const FIELDNO_TUPLETABLESLOT_TUPLEDESCRIPTOR = @as(c_int, 4);
pub const FIELDNO_TUPLETABLESLOT_VALUES = @as(c_int, 5);
pub const FIELDNO_TUPLETABLESLOT_ISNULL = @as(c_int, 6);
pub inline fn TTS_IS_VIRTUAL(slot: anytype) @TypeOf(slot.*.tts_ops == (&TTSOpsVirtual)) {
    return slot.*.tts_ops == (&TTSOpsVirtual);
}
pub inline fn TTS_IS_HEAPTUPLE(slot: anytype) @TypeOf(slot.*.tts_ops == (&TTSOpsHeapTuple)) {
    return slot.*.tts_ops == (&TTSOpsHeapTuple);
}
pub inline fn TTS_IS_MINIMALTUPLE(slot: anytype) @TypeOf(slot.*.tts_ops == (&TTSOpsMinimalTuple)) {
    return slot.*.tts_ops == (&TTSOpsMinimalTuple);
}
pub inline fn TTS_IS_BUFFERTUPLE(slot: anytype) @TypeOf(slot.*.tts_ops == (&TTSOpsBufferHeapTuple)) {
    return slot.*.tts_ops == (&TTSOpsBufferHeapTuple);
}
pub const FIELDNO_HEAPTUPLETABLESLOT_TUPLE = @as(c_int, 1);
pub const FIELDNO_HEAPTUPLETABLESLOT_OFF = @as(c_int, 2);
pub const FIELDNO_MINIMALTUPLETABLESLOT_TUPLE = @as(c_int, 1);
pub const FIELDNO_MINIMALTUPLETABLESLOT_OFF = @as(c_int, 4);
pub inline fn TupIsNull(slot: anytype) @TypeOf((slot == NULL) or (TTS_EMPTY(slot) != 0)) {
    return (slot == NULL) or (TTS_EMPTY(slot) != 0);
}
pub const BITMAPSET_H = "";
pub const BITS_PER_BITMAPWORD = @as(c_int, 64);
pub const INSTRUMENT_H = "";
pub const INSTR_TIME_H = "";
pub const _TIME_H = @as(c_int, 1);
pub const _BITS_TIME_H = @as(c_int, 1);
pub const CLOCKS_PER_SEC = @import("std").zig.c_translation.cast(__clock_t, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const CLOCK_REALTIME = @as(c_int, 0);
pub const CLOCK_MONOTONIC = @as(c_int, 1);
pub const CLOCK_PROCESS_CPUTIME_ID = @as(c_int, 2);
pub const CLOCK_THREAD_CPUTIME_ID = @as(c_int, 3);
pub const CLOCK_MONOTONIC_RAW = @as(c_int, 4);
pub const CLOCK_REALTIME_COARSE = @as(c_int, 5);
pub const CLOCK_MONOTONIC_COARSE = @as(c_int, 6);
pub const CLOCK_BOOTTIME = @as(c_int, 7);
pub const CLOCK_REALTIME_ALARM = @as(c_int, 8);
pub const CLOCK_BOOTTIME_ALARM = @as(c_int, 9);
pub const CLOCK_TAI = @as(c_int, 11);
pub const TIMER_ABSTIME = @as(c_int, 1);
pub const __struct_tm_defined = @as(c_int, 1);
pub const __itimerspec_defined = @as(c_int, 1);
pub const TIME_UTC = @as(c_int, 1);
pub inline fn __isleap(year: anytype) @TypeOf((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)))) {
    return (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 4)) == @as(c_int, 0)) and ((@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 100)) != @as(c_int, 0)) or (@import("std").zig.c_translation.MacroArithmetic.rem(year, @as(c_int, 400)) == @as(c_int, 0)));
}
pub const PG_INSTR_CLOCK = CLOCK_MONOTONIC;
pub inline fn INSTR_TIME_IS_ZERO(t: anytype) @TypeOf((t.tv_nsec == @as(c_int, 0)) and (t.tv_sec == @as(c_int, 0))) {
    return (t.tv_nsec == @as(c_int, 0)) and (t.tv_sec == @as(c_int, 0));
}
pub inline fn INSTR_TIME_SET_CURRENT(t: anytype) anyopaque {
    return @import("std").zig.c_translation.cast(anyopaque, clock_gettime(PG_INSTR_CLOCK, &t));
}
pub inline fn INSTR_TIME_GET_DOUBLE(t: anytype) @TypeOf(@import("std").zig.c_translation.cast(f64, t.tv_sec) + @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(f64, t.tv_nsec), @as(f64, 1000000000.0))) {
    return @import("std").zig.c_translation.cast(f64, t.tv_sec) + @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(f64, t.tv_nsec), @as(f64, 1000000000.0));
}
pub inline fn INSTR_TIME_GET_MILLISEC(t: anytype) @TypeOf((@import("std").zig.c_translation.cast(f64, t.tv_sec) * @as(f64, 1000.0)) + @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(f64, t.tv_nsec), @as(f64, 1000000.0))) {
    return (@import("std").zig.c_translation.cast(f64, t.tv_sec) * @as(f64, 1000.0)) + @import("std").zig.c_translation.MacroArithmetic.div(@import("std").zig.c_translation.cast(f64, t.tv_nsec), @as(f64, 1000000.0));
}
pub inline fn INSTR_TIME_GET_MICROSEC(t: anytype) @TypeOf((@import("std").zig.c_translation.cast(uint64, t.tv_sec) * @import("std").zig.c_translation.cast(uint64, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal))) + @import("std").zig.c_translation.cast(uint64, @import("std").zig.c_translation.MacroArithmetic.div(t.tv_nsec, @as(c_int, 1000)))) {
    return (@import("std").zig.c_translation.cast(uint64, t.tv_sec) * @import("std").zig.c_translation.cast(uint64, @import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal))) + @import("std").zig.c_translation.cast(uint64, @import("std").zig.c_translation.MacroArithmetic.div(t.tv_nsec, @as(c_int, 1000)));
}
pub const FMGR_H = "";
pub const FIELDNO_FUNCTIONCALLINFODATA_ISNULL = @as(c_int, 4);
pub const FIELDNO_FUNCTIONCALLINFODATA_ARGS = @as(c_int, 6);
pub inline fn FunctionCallInvoke(fcinfo: anytype) @TypeOf(fcinfo.*.flinfo.*.fn_addr.*(fcinfo)) {
    return fcinfo.*.flinfo.*.fn_addr.*(fcinfo);
}
pub inline fn PG_DETOAST_DATUM(datum: anytype) @TypeOf(pg_detoast_datum(@import("std").zig.c_translation.cast([*c]struct_varlena, DatumGetPointer(datum)))) {
    return pg_detoast_datum(@import("std").zig.c_translation.cast([*c]struct_varlena, DatumGetPointer(datum)));
}
pub inline fn PG_DETOAST_DATUM_COPY(datum: anytype) @TypeOf(pg_detoast_datum_copy(@import("std").zig.c_translation.cast([*c]struct_varlena, DatumGetPointer(datum)))) {
    return pg_detoast_datum_copy(@import("std").zig.c_translation.cast([*c]struct_varlena, DatumGetPointer(datum)));
}
pub inline fn PG_DETOAST_DATUM_SLICE(datum: anytype, f: anytype, c: anytype) @TypeOf(pg_detoast_datum_slice(@import("std").zig.c_translation.cast([*c]struct_varlena, DatumGetPointer(datum)), @import("std").zig.c_translation.cast(int32, f), @import("std").zig.c_translation.cast(int32, c))) {
    return pg_detoast_datum_slice(@import("std").zig.c_translation.cast([*c]struct_varlena, DatumGetPointer(datum)), @import("std").zig.c_translation.cast(int32, f), @import("std").zig.c_translation.cast(int32, c));
}
pub inline fn PG_DETOAST_DATUM_PACKED(datum: anytype) @TypeOf(pg_detoast_datum_packed(@import("std").zig.c_translation.cast([*c]struct_varlena, DatumGetPointer(datum)))) {
    return pg_detoast_datum_packed(@import("std").zig.c_translation.cast([*c]struct_varlena, DatumGetPointer(datum)));
}
pub inline fn PG_GETARG_INT32(n: anytype) @TypeOf(DatumGetInt32(PG_GETARG_DATUM(n))) {
    return DatumGetInt32(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_UINT32(n: anytype) @TypeOf(DatumGetUInt32(PG_GETARG_DATUM(n))) {
    return DatumGetUInt32(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_INT16(n: anytype) @TypeOf(DatumGetInt16(PG_GETARG_DATUM(n))) {
    return DatumGetInt16(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_UINT16(n: anytype) @TypeOf(DatumGetUInt16(PG_GETARG_DATUM(n))) {
    return DatumGetUInt16(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_CHAR(n: anytype) @TypeOf(DatumGetChar(PG_GETARG_DATUM(n))) {
    return DatumGetChar(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_BOOL(n: anytype) @TypeOf(DatumGetBool(PG_GETARG_DATUM(n))) {
    return DatumGetBool(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_OID(n: anytype) @TypeOf(DatumGetObjectId(PG_GETARG_DATUM(n))) {
    return DatumGetObjectId(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_POINTER(n: anytype) @TypeOf(DatumGetPointer(PG_GETARG_DATUM(n))) {
    return DatumGetPointer(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_CSTRING(n: anytype) @TypeOf(DatumGetCString(PG_GETARG_DATUM(n))) {
    return DatumGetCString(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_NAME(n: anytype) @TypeOf(DatumGetName(PG_GETARG_DATUM(n))) {
    return DatumGetName(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_TRANSACTIONID(n: anytype) @TypeOf(DatumGetTransactionId(PG_GETARG_DATUM(n))) {
    return DatumGetTransactionId(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_FLOAT4(n: anytype) @TypeOf(DatumGetFloat4(PG_GETARG_DATUM(n))) {
    return DatumGetFloat4(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_FLOAT8(n: anytype) @TypeOf(DatumGetFloat8(PG_GETARG_DATUM(n))) {
    return DatumGetFloat8(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_INT64(n: anytype) @TypeOf(DatumGetInt64(PG_GETARG_DATUM(n))) {
    return DatumGetInt64(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_RAW_VARLENA_P(n: anytype) [*c]struct_varlena {
    return @import("std").zig.c_translation.cast([*c]struct_varlena, PG_GETARG_POINTER(n));
}
pub inline fn PG_GETARG_VARLENA_P(n: anytype) @TypeOf(PG_DETOAST_DATUM(PG_GETARG_DATUM(n))) {
    return PG_DETOAST_DATUM(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_VARLENA_PP(n: anytype) @TypeOf(PG_DETOAST_DATUM_PACKED(PG_GETARG_DATUM(n))) {
    return PG_DETOAST_DATUM_PACKED(PG_GETARG_DATUM(n));
}
pub inline fn DatumGetByteaPP(X: anytype) [*c]bytea {
    return @import("std").zig.c_translation.cast([*c]bytea, PG_DETOAST_DATUM_PACKED(X));
}
pub inline fn DatumGetTextPP(X: anytype) [*c]text {
    return @import("std").zig.c_translation.cast([*c]text, PG_DETOAST_DATUM_PACKED(X));
}
pub inline fn DatumGetBpCharPP(X: anytype) [*c]BpChar {
    return @import("std").zig.c_translation.cast([*c]BpChar, PG_DETOAST_DATUM_PACKED(X));
}
pub inline fn DatumGetVarCharPP(X: anytype) [*c]VarChar {
    return @import("std").zig.c_translation.cast([*c]VarChar, PG_DETOAST_DATUM_PACKED(X));
}
pub inline fn DatumGetHeapTupleHeader(X: anytype) HeapTupleHeader {
    return @import("std").zig.c_translation.cast(HeapTupleHeader, PG_DETOAST_DATUM(X));
}
pub inline fn DatumGetByteaPCopy(X: anytype) [*c]bytea {
    return @import("std").zig.c_translation.cast([*c]bytea, PG_DETOAST_DATUM_COPY(X));
}
pub inline fn DatumGetTextPCopy(X: anytype) [*c]text {
    return @import("std").zig.c_translation.cast([*c]text, PG_DETOAST_DATUM_COPY(X));
}
pub inline fn DatumGetBpCharPCopy(X: anytype) [*c]BpChar {
    return @import("std").zig.c_translation.cast([*c]BpChar, PG_DETOAST_DATUM_COPY(X));
}
pub inline fn DatumGetVarCharPCopy(X: anytype) [*c]VarChar {
    return @import("std").zig.c_translation.cast([*c]VarChar, PG_DETOAST_DATUM_COPY(X));
}
pub inline fn DatumGetHeapTupleHeaderCopy(X: anytype) HeapTupleHeader {
    return @import("std").zig.c_translation.cast(HeapTupleHeader, PG_DETOAST_DATUM_COPY(X));
}
pub inline fn DatumGetByteaPSlice(X: anytype, m: anytype, n: anytype) [*c]bytea {
    return @import("std").zig.c_translation.cast([*c]bytea, PG_DETOAST_DATUM_SLICE(X, m, n));
}
pub inline fn DatumGetTextPSlice(X: anytype, m: anytype, n: anytype) [*c]text {
    return @import("std").zig.c_translation.cast([*c]text, PG_DETOAST_DATUM_SLICE(X, m, n));
}
pub inline fn DatumGetBpCharPSlice(X: anytype, m: anytype, n: anytype) [*c]BpChar {
    return @import("std").zig.c_translation.cast([*c]BpChar, PG_DETOAST_DATUM_SLICE(X, m, n));
}
pub inline fn DatumGetVarCharPSlice(X: anytype, m: anytype, n: anytype) [*c]VarChar {
    return @import("std").zig.c_translation.cast([*c]VarChar, PG_DETOAST_DATUM_SLICE(X, m, n));
}
pub inline fn PG_GETARG_BYTEA_PP(n: anytype) @TypeOf(DatumGetByteaPP(PG_GETARG_DATUM(n))) {
    return DatumGetByteaPP(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_TEXT_PP(n: anytype) @TypeOf(DatumGetTextPP(PG_GETARG_DATUM(n))) {
    return DatumGetTextPP(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_BPCHAR_PP(n: anytype) @TypeOf(DatumGetBpCharPP(PG_GETARG_DATUM(n))) {
    return DatumGetBpCharPP(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_VARCHAR_PP(n: anytype) @TypeOf(DatumGetVarCharPP(PG_GETARG_DATUM(n))) {
    return DatumGetVarCharPP(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_HEAPTUPLEHEADER(n: anytype) @TypeOf(DatumGetHeapTupleHeader(PG_GETARG_DATUM(n))) {
    return DatumGetHeapTupleHeader(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_BYTEA_P_COPY(n: anytype) @TypeOf(DatumGetByteaPCopy(PG_GETARG_DATUM(n))) {
    return DatumGetByteaPCopy(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_TEXT_P_COPY(n: anytype) @TypeOf(DatumGetTextPCopy(PG_GETARG_DATUM(n))) {
    return DatumGetTextPCopy(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_BPCHAR_P_COPY(n: anytype) @TypeOf(DatumGetBpCharPCopy(PG_GETARG_DATUM(n))) {
    return DatumGetBpCharPCopy(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_VARCHAR_P_COPY(n: anytype) @TypeOf(DatumGetVarCharPCopy(PG_GETARG_DATUM(n))) {
    return DatumGetVarCharPCopy(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_HEAPTUPLEHEADER_COPY(n: anytype) @TypeOf(DatumGetHeapTupleHeaderCopy(PG_GETARG_DATUM(n))) {
    return DatumGetHeapTupleHeaderCopy(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_BYTEA_P_SLICE(n: anytype, a: anytype, b: anytype) @TypeOf(DatumGetByteaPSlice(PG_GETARG_DATUM(n), a, b)) {
    return DatumGetByteaPSlice(PG_GETARG_DATUM(n), a, b);
}
pub inline fn PG_GETARG_TEXT_P_SLICE(n: anytype, a: anytype, b: anytype) @TypeOf(DatumGetTextPSlice(PG_GETARG_DATUM(n), a, b)) {
    return DatumGetTextPSlice(PG_GETARG_DATUM(n), a, b);
}
pub inline fn PG_GETARG_BPCHAR_P_SLICE(n: anytype, a: anytype, b: anytype) @TypeOf(DatumGetBpCharPSlice(PG_GETARG_DATUM(n), a, b)) {
    return DatumGetBpCharPSlice(PG_GETARG_DATUM(n), a, b);
}
pub inline fn PG_GETARG_VARCHAR_P_SLICE(n: anytype, a: anytype, b: anytype) @TypeOf(DatumGetVarCharPSlice(PG_GETARG_DATUM(n), a, b)) {
    return DatumGetVarCharPSlice(PG_GETARG_DATUM(n), a, b);
}
pub inline fn DatumGetByteaP(X: anytype) [*c]bytea {
    return @import("std").zig.c_translation.cast([*c]bytea, PG_DETOAST_DATUM(X));
}
pub inline fn DatumGetTextP(X: anytype) [*c]text {
    return @import("std").zig.c_translation.cast([*c]text, PG_DETOAST_DATUM(X));
}
pub inline fn DatumGetBpCharP(X: anytype) [*c]BpChar {
    return @import("std").zig.c_translation.cast([*c]BpChar, PG_DETOAST_DATUM(X));
}
pub inline fn DatumGetVarCharP(X: anytype) [*c]VarChar {
    return @import("std").zig.c_translation.cast([*c]VarChar, PG_DETOAST_DATUM(X));
}
pub inline fn PG_GETARG_BYTEA_P(n: anytype) @TypeOf(DatumGetByteaP(PG_GETARG_DATUM(n))) {
    return DatumGetByteaP(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_TEXT_P(n: anytype) @TypeOf(DatumGetTextP(PG_GETARG_DATUM(n))) {
    return DatumGetTextP(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_BPCHAR_P(n: anytype) @TypeOf(DatumGetBpCharP(PG_GETARG_DATUM(n))) {
    return DatumGetBpCharP(PG_GETARG_DATUM(n));
}
pub inline fn PG_GETARG_VARCHAR_P(n: anytype) @TypeOf(DatumGetVarCharP(PG_GETARG_DATUM(n))) {
    return DatumGetVarCharP(PG_GETARG_DATUM(n));
}
pub inline fn PG_RETURN_BYTEA_P(x: anytype) @TypeOf(PG_RETURN_POINTER(x)) {
    return PG_RETURN_POINTER(x);
}
pub inline fn PG_RETURN_TEXT_P(x: anytype) @TypeOf(PG_RETURN_POINTER(x)) {
    return PG_RETURN_POINTER(x);
}
pub inline fn PG_RETURN_BPCHAR_P(x: anytype) @TypeOf(PG_RETURN_POINTER(x)) {
    return PG_RETURN_POINTER(x);
}
pub inline fn PG_RETURN_VARCHAR_P(x: anytype) @TypeOf(PG_RETURN_POINTER(x)) {
    return PG_RETURN_POINTER(x);
}
pub const PG_MAGIC_FUNCTION_NAME = Pg_magic_func;
pub const PG_MAGIC_FUNCTION_NAME_STRING = "Pg_magic_func";
pub inline fn DirectFunctionCall1(func: anytype, arg1: anytype) @TypeOf(DirectFunctionCall1Coll(func, InvalidOid, arg1)) {
    return DirectFunctionCall1Coll(func, InvalidOid, arg1);
}
pub inline fn DirectFunctionCall2(func: anytype, arg1: anytype, arg2: anytype) @TypeOf(DirectFunctionCall2Coll(func, InvalidOid, arg1, arg2)) {
    return DirectFunctionCall2Coll(func, InvalidOid, arg1, arg2);
}
pub inline fn DirectFunctionCall3(func: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(DirectFunctionCall3Coll(func, InvalidOid, arg1, arg2, arg3)) {
    return DirectFunctionCall3Coll(func, InvalidOid, arg1, arg2, arg3);
}
pub inline fn DirectFunctionCall4(func: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(DirectFunctionCall4Coll(func, InvalidOid, arg1, arg2, arg3, arg4)) {
    return DirectFunctionCall4Coll(func, InvalidOid, arg1, arg2, arg3, arg4);
}
pub inline fn DirectFunctionCall5(func: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(DirectFunctionCall5Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5)) {
    return DirectFunctionCall5Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5);
}
pub inline fn DirectFunctionCall6(func: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(DirectFunctionCall6Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6)) {
    return DirectFunctionCall6Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6);
}
pub inline fn DirectFunctionCall7(func: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(DirectFunctionCall7Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7)) {
    return DirectFunctionCall7Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}
pub inline fn DirectFunctionCall8(func: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(DirectFunctionCall8Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) {
    return DirectFunctionCall8Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}
pub inline fn DirectFunctionCall9(func: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(DirectFunctionCall9Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) {
    return DirectFunctionCall9Coll(func, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}
pub inline fn FunctionCall1(flinfo: anytype, arg1: anytype) @TypeOf(FunctionCall1Coll(flinfo, InvalidOid, arg1)) {
    return FunctionCall1Coll(flinfo, InvalidOid, arg1);
}
pub inline fn FunctionCall2(flinfo: anytype, arg1: anytype, arg2: anytype) @TypeOf(FunctionCall2Coll(flinfo, InvalidOid, arg1, arg2)) {
    return FunctionCall2Coll(flinfo, InvalidOid, arg1, arg2);
}
pub inline fn FunctionCall3(flinfo: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(FunctionCall3Coll(flinfo, InvalidOid, arg1, arg2, arg3)) {
    return FunctionCall3Coll(flinfo, InvalidOid, arg1, arg2, arg3);
}
pub inline fn FunctionCall4(flinfo: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(FunctionCall4Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4)) {
    return FunctionCall4Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4);
}
pub inline fn FunctionCall5(flinfo: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(FunctionCall5Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5)) {
    return FunctionCall5Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5);
}
pub inline fn FunctionCall6(flinfo: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(FunctionCall6Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6)) {
    return FunctionCall6Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6);
}
pub inline fn FunctionCall7(flinfo: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(FunctionCall7Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7)) {
    return FunctionCall7Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}
pub inline fn FunctionCall8(flinfo: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(FunctionCall8Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) {
    return FunctionCall8Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}
pub inline fn FunctionCall9(flinfo: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(FunctionCall9Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) {
    return FunctionCall9Coll(flinfo, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}
pub inline fn OidFunctionCall0(functionId: anytype) @TypeOf(OidFunctionCall0Coll(functionId, InvalidOid)) {
    return OidFunctionCall0Coll(functionId, InvalidOid);
}
pub inline fn OidFunctionCall1(functionId: anytype, arg1: anytype) @TypeOf(OidFunctionCall1Coll(functionId, InvalidOid, arg1)) {
    return OidFunctionCall1Coll(functionId, InvalidOid, arg1);
}
pub inline fn OidFunctionCall2(functionId: anytype, arg1: anytype, arg2: anytype) @TypeOf(OidFunctionCall2Coll(functionId, InvalidOid, arg1, arg2)) {
    return OidFunctionCall2Coll(functionId, InvalidOid, arg1, arg2);
}
pub inline fn OidFunctionCall3(functionId: anytype, arg1: anytype, arg2: anytype, arg3: anytype) @TypeOf(OidFunctionCall3Coll(functionId, InvalidOid, arg1, arg2, arg3)) {
    return OidFunctionCall3Coll(functionId, InvalidOid, arg1, arg2, arg3);
}
pub inline fn OidFunctionCall4(functionId: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype) @TypeOf(OidFunctionCall4Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4)) {
    return OidFunctionCall4Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4);
}
pub inline fn OidFunctionCall5(functionId: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype) @TypeOf(OidFunctionCall5Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5)) {
    return OidFunctionCall5Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5);
}
pub inline fn OidFunctionCall6(functionId: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype) @TypeOf(OidFunctionCall6Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6)) {
    return OidFunctionCall6Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6);
}
pub inline fn OidFunctionCall7(functionId: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype) @TypeOf(OidFunctionCall7Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7)) {
    return OidFunctionCall7Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7);
}
pub inline fn OidFunctionCall8(functionId: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype) @TypeOf(OidFunctionCall8Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)) {
    return OidFunctionCall8Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
}
pub inline fn OidFunctionCall9(functionId: anytype, arg1: anytype, arg2: anytype, arg3: anytype, arg4: anytype, arg5: anytype, arg6: anytype, arg7: anytype, arg8: anytype, arg9: anytype) @TypeOf(OidFunctionCall9Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9)) {
    return OidFunctionCall9Coll(functionId, InvalidOid, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9);
}
pub const AGG_CONTEXT_AGGREGATE = @as(c_int, 1);
pub const AGG_CONTEXT_WINDOW = @as(c_int, 2);
pub inline fn FmgrHookIsNeeded(fn_oid: anytype) @TypeOf(if (!(needs_fmgr_hook != 0)) @"false" else needs_fmgr_hook.*(fn_oid)) {
    return if (!(needs_fmgr_hook != 0)) @"false" else needs_fmgr_hook.*(fn_oid);
}
pub const ILIST_H = "";
pub const dlist_check = @import("std").zig.c_translation.Macros.DISCARD;
pub const slist_check = @import("std").zig.c_translation.Macros.DISCARD;
pub const PAIRINGHEAP_H = "";
pub const STRINGINFO_H = "";
pub inline fn pairingheap_is_empty(h: anytype) @TypeOf(h.*.ph_root == NULL) {
    return h.*.ph_root == NULL;
}
pub inline fn pairingheap_is_singular(h: anytype) @TypeOf((h.*.ph_root != 0) and (h.*.ph_root.*.first_child == NULL)) {
    return (h.*.ph_root != 0) and (h.*.ph_root.*.first_child == NULL);
}
pub const PARAMS_H = "";
pub const PARAM_FLAG_CONST = @as(c_int, 0x0001);
pub const PLANNODES_H = "";
pub const SDIR_H = "";
pub inline fn ScanDirectionIsValid(direction: anytype) @TypeOf(@"bool"((BackwardScanDirection <= direction) and (direction <= ForwardScanDirection))) {
    return @"bool"((BackwardScanDirection <= direction) and (direction <= ForwardScanDirection));
}
pub inline fn ScanDirectionIsBackward(direction: anytype) @TypeOf(@"bool"(direction == BackwardScanDirection)) {
    return @"bool"(direction == BackwardScanDirection);
}
pub inline fn ScanDirectionIsNoMovement(direction: anytype) @TypeOf(@"bool"(direction == NoMovementScanDirection)) {
    return @"bool"(direction == NoMovementScanDirection);
}
pub inline fn ScanDirectionIsForward(direction: anytype) @TypeOf(@"bool"(direction == ForwardScanDirection)) {
    return @"bool"(direction == ForwardScanDirection);
}
pub const STRATNUM_H = "";
pub const InvalidStrategy = @import("std").zig.c_translation.cast(StrategyNumber, @as(c_int, 0));
pub const BTLessStrategyNumber = @as(c_int, 1);
pub const BTLessEqualStrategyNumber = @as(c_int, 2);
pub const BTEqualStrategyNumber = @as(c_int, 3);
pub const BTGreaterEqualStrategyNumber = @as(c_int, 4);
pub const BTGreaterStrategyNumber = @as(c_int, 5);
pub const BTMaxStrategyNumber = @as(c_int, 5);
pub const HTEqualStrategyNumber = @as(c_int, 1);
pub const HTMaxStrategyNumber = @as(c_int, 1);
pub const RTLeftStrategyNumber = @as(c_int, 1);
pub const RTOverLeftStrategyNumber = @as(c_int, 2);
pub const RTOverlapStrategyNumber = @as(c_int, 3);
pub const RTOverRightStrategyNumber = @as(c_int, 4);
pub const RTRightStrategyNumber = @as(c_int, 5);
pub const RTSameStrategyNumber = @as(c_int, 6);
pub const RTContainsStrategyNumber = @as(c_int, 7);
pub const RTContainedByStrategyNumber = @as(c_int, 8);
pub const RTOverBelowStrategyNumber = @as(c_int, 9);
pub const RTBelowStrategyNumber = @as(c_int, 10);
pub const RTAboveStrategyNumber = @as(c_int, 11);
pub const RTOverAboveStrategyNumber = @as(c_int, 12);
pub const RTOldContainsStrategyNumber = @as(c_int, 13);
pub const RTOldContainedByStrategyNumber = @as(c_int, 14);
pub const RTKNNSearchStrategyNumber = @as(c_int, 15);
pub const RTContainsElemStrategyNumber = @as(c_int, 16);
pub const RTAdjacentStrategyNumber = @as(c_int, 17);
pub const RTEqualStrategyNumber = @as(c_int, 18);
pub const RTNotEqualStrategyNumber = @as(c_int, 19);
pub const RTLessStrategyNumber = @as(c_int, 20);
pub const RTLessEqualStrategyNumber = @as(c_int, 21);
pub const RTGreaterStrategyNumber = @as(c_int, 22);
pub const RTGreaterEqualStrategyNumber = @as(c_int, 23);
pub const RTSubStrategyNumber = @as(c_int, 24);
pub const RTSubEqualStrategyNumber = @as(c_int, 25);
pub const RTSuperStrategyNumber = @as(c_int, 26);
pub const RTSuperEqualStrategyNumber = @as(c_int, 27);
pub const RTPrefixStrategyNumber = @as(c_int, 28);
pub const RTOldBelowStrategyNumber = @as(c_int, 29);
pub const RTOldAboveStrategyNumber = @as(c_int, 30);
pub const RTMaxStrategyNumber = @as(c_int, 30);
pub const LOCKOPTIONS_H = "";
pub const PARSENODES_H = "";
pub const PRIMNODES_H = "";
pub const INNER_VAR = -@as(c_int, 1);
pub const OUTER_VAR = -@as(c_int, 2);
pub const INDEX_VAR = -@as(c_int, 3);
pub const ROWID_VAR = -@as(c_int, 4);
pub inline fn IS_SPECIAL_VARNO(varno: anytype) @TypeOf(@import("std").zig.c_translation.cast(c_int, varno) < @as(c_int, 0)) {
    return @import("std").zig.c_translation.cast(c_int, varno) < @as(c_int, 0);
}
pub const PRS2_OLD_VARNO = @as(c_int, 1);
pub const PRS2_NEW_VARNO = @as(c_int, 2);
pub const VALUE_H = "";
pub inline fn intVal(v: anytype) @TypeOf(castNode(Integer, v).*.ival) {
    return castNode(Integer, v).*.ival;
}
pub inline fn floatVal(v: anytype) @TypeOf(atof(castNode(Float, v).*.fval)) {
    return atof(castNode(Float, v).*.fval);
}
pub inline fn boolVal(v: anytype) @TypeOf(castNode(Boolean, v).*.boolval) {
    return castNode(Boolean, v).*.boolval;
}
pub inline fn strVal(v: anytype) @TypeOf(castNode(String, v).*.sval) {
    return castNode(String, v).*.sval;
}
pub const PARTDEFS_H = "";
pub const ACL_INSERT = @as(c_int, 1) << @as(c_int, 0);
pub const ACL_SELECT = @as(c_int, 1) << @as(c_int, 1);
pub const ACL_UPDATE = @as(c_int, 1) << @as(c_int, 2);
pub const ACL_DELETE = @as(c_int, 1) << @as(c_int, 3);
pub const ACL_TRUNCATE = @as(c_int, 1) << @as(c_int, 4);
pub const ACL_REFERENCES = @as(c_int, 1) << @as(c_int, 5);
pub const ACL_TRIGGER = @as(c_int, 1) << @as(c_int, 6);
pub const ACL_EXECUTE = @as(c_int, 1) << @as(c_int, 7);
pub const ACL_USAGE = @as(c_int, 1) << @as(c_int, 8);
pub const ACL_CREATE = @as(c_int, 1) << @as(c_int, 9);
pub const ACL_CREATE_TEMP = @as(c_int, 1) << @as(c_int, 10);
pub const ACL_CONNECT = @as(c_int, 1) << @as(c_int, 11);
pub const ACL_SET = @as(c_int, 1) << @as(c_int, 12);
pub const ACL_ALTER_SYSTEM = @as(c_int, 1) << @as(c_int, 13);
pub const N_ACL_RIGHTS = @as(c_int, 14);
pub const ACL_NO_RIGHTS = @as(c_int, 0);
pub const ACL_SELECT_FOR_UPDATE = ACL_UPDATE;
pub const FRAMEOPTION_NONDEFAULT = @as(c_int, 0x00001);
pub const FRAMEOPTION_RANGE = @as(c_int, 0x00002);
pub const FRAMEOPTION_ROWS = @as(c_int, 0x00004);
pub const FRAMEOPTION_GROUPS = @as(c_int, 0x00008);
pub const FRAMEOPTION_BETWEEN = @as(c_int, 0x00010);
pub const FRAMEOPTION_START_UNBOUNDED_PRECEDING = @as(c_int, 0x00020);
pub const FRAMEOPTION_END_UNBOUNDED_PRECEDING = @as(c_int, 0x00040);
pub const FRAMEOPTION_START_UNBOUNDED_FOLLOWING = @as(c_int, 0x00080);
pub const FRAMEOPTION_END_UNBOUNDED_FOLLOWING = @as(c_int, 0x00100);
pub const FRAMEOPTION_START_CURRENT_ROW = @as(c_int, 0x00200);
pub const FRAMEOPTION_END_CURRENT_ROW = @as(c_int, 0x00400);
pub const FRAMEOPTION_START_OFFSET_PRECEDING = @as(c_int, 0x00800);
pub const FRAMEOPTION_END_OFFSET_PRECEDING = @as(c_int, 0x01000);
pub const FRAMEOPTION_START_OFFSET_FOLLOWING = @as(c_int, 0x02000);
pub const FRAMEOPTION_END_OFFSET_FOLLOWING = @as(c_int, 0x04000);
pub const FRAMEOPTION_EXCLUDE_CURRENT_ROW = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x08000, .hexadecimal);
pub const FRAMEOPTION_EXCLUDE_GROUP = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x10000, .hexadecimal);
pub const FRAMEOPTION_EXCLUDE_TIES = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x20000, .hexadecimal);
pub const FRAMEOPTION_START_OFFSET = FRAMEOPTION_START_OFFSET_PRECEDING | FRAMEOPTION_START_OFFSET_FOLLOWING;
pub const FRAMEOPTION_END_OFFSET = FRAMEOPTION_END_OFFSET_PRECEDING | FRAMEOPTION_END_OFFSET_FOLLOWING;
pub const FRAMEOPTION_EXCLUSION = (FRAMEOPTION_EXCLUDE_CURRENT_ROW | FRAMEOPTION_EXCLUDE_GROUP) | FRAMEOPTION_EXCLUDE_TIES;
pub const FRAMEOPTION_DEFAULTS = (FRAMEOPTION_RANGE | FRAMEOPTION_START_UNBOUNDED_PRECEDING) | FRAMEOPTION_END_CURRENT_ROW;
pub const PARTITION_STRATEGY_HASH = 'h';
pub const PARTITION_STRATEGY_LIST = 'l';
pub const PARTITION_STRATEGY_RANGE = 'r';
pub inline fn GetCTETargetList(cte: anytype) @TypeOf(if (@import("std").zig.c_translation.cast([*c]Query, cte.*.ctequery).*.commandType == CMD_SELECT) @import("std").zig.c_translation.cast([*c]Query, cte.*.ctequery).*.targetList else @import("std").zig.c_translation.cast([*c]Query, cte.*.ctequery).*.returningList) {
    return blk_1: {
        _ = AssertMacro(IsA(cte.*.ctequery, Query));
        break :blk_1 if (@import("std").zig.c_translation.cast([*c]Query, cte.*.ctequery).*.commandType == CMD_SELECT) @import("std").zig.c_translation.cast([*c]Query, cte.*.ctequery).*.targetList else @import("std").zig.c_translation.cast([*c]Query, cte.*.ctequery).*.returningList;
    };
}
pub const FKCONSTR_ACTION_NOACTION = 'a';
pub const FKCONSTR_ACTION_RESTRICT = 'r';
pub const FKCONSTR_ACTION_CASCADE = 'c';
pub const FKCONSTR_ACTION_SETNULL = 'n';
pub const FKCONSTR_ACTION_SETDEFAULT = 'd';
pub const FKCONSTR_MATCH_FULL = 'f';
pub const FKCONSTR_MATCH_PARTIAL = 'p';
pub const FKCONSTR_MATCH_SIMPLE = 's';
pub const OPCLASS_ITEM_OPERATOR = @as(c_int, 1);
pub const OPCLASS_ITEM_FUNCTION = @as(c_int, 2);
pub const OPCLASS_ITEM_STORAGETYPE = @as(c_int, 3);
pub const CURSOR_OPT_BINARY = @as(c_int, 0x0001);
pub const CURSOR_OPT_SCROLL = @as(c_int, 0x0002);
pub const CURSOR_OPT_NO_SCROLL = @as(c_int, 0x0004);
pub const CURSOR_OPT_INSENSITIVE = @as(c_int, 0x0008);
pub const CURSOR_OPT_ASENSITIVE = @as(c_int, 0x0010);
pub const CURSOR_OPT_HOLD = @as(c_int, 0x0020);
pub const CURSOR_OPT_FAST_PLAN = @as(c_int, 0x0100);
pub const CURSOR_OPT_GENERIC_PLAN = @as(c_int, 0x0200);
pub const CURSOR_OPT_CUSTOM_PLAN = @as(c_int, 0x0400);
pub const CURSOR_OPT_PARALLEL_OK = @as(c_int, 0x0800);
pub const FETCH_ALL = LONG_MAX;
pub inline fn exec_subplan_get_plan(plannedstmt: anytype, subplan: anytype) [*c]Plan {
    return @import("std").zig.c_translation.cast([*c]Plan, list_nth(plannedstmt.*.subplans, subplan.*.plan_id - @as(c_int, 1)));
}
pub inline fn innerPlan(node: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]Plan, node).*.righttree) {
    return @import("std").zig.c_translation.cast([*c]Plan, node).*.righttree;
}
pub inline fn outerPlan(node: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]Plan, node).*.lefttree) {
    return @import("std").zig.c_translation.cast([*c]Plan, node).*.lefttree;
}
pub inline fn RowMarkRequiresRowShareLock(marktype: anytype) @TypeOf(marktype <= ROW_MARK_KEYSHARE) {
    return marktype <= ROW_MARK_KEYSHARE;
}
pub const TIDBITMAP_H = "";
pub const DSA_H = "";
pub const ATOMICS_H = "";
pub const INSIDE_ATOMICS_H = "";
pub const _LIBC_LIMITS_H_ = @as(c_int, 1);
pub const MB_LEN_MAX = @as(c_int, 16);
pub const __CLANG_LIMITS_H = "";
pub const _GCC_LIMITS_H_ = "";
pub const SCHAR_MAX = __SCHAR_MAX__;
pub const SHRT_MAX = __SHRT_MAX__;
pub const INT_MAX = __INT_MAX__;
pub const LONG_MAX = __LONG_MAX__;
pub const SCHAR_MIN = -__SCHAR_MAX__ - @as(c_int, 1);
pub const SHRT_MIN = -__SHRT_MAX__ - @as(c_int, 1);
pub const INT_MIN = -__INT_MAX__ - @as(c_int, 1);
pub const LONG_MIN = -__LONG_MAX__ - @as(c_long, 1);
pub const UCHAR_MAX = (__SCHAR_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const USHRT_MAX = (__SHRT_MAX__ * @as(c_int, 2)) + @as(c_int, 1);
pub const UINT_MAX = (__INT_MAX__ * @as(c_uint, 2)) + @as(c_uint, 1);
pub const ULONG_MAX = (__LONG_MAX__ * @as(c_ulong, 2)) + @as(c_ulong, 1);
pub const CHAR_BIT = __CHAR_BIT__;
pub const CHAR_MIN = SCHAR_MIN;
pub const CHAR_MAX = __SCHAR_MAX__;
pub const LLONG_MAX = __LONG_LONG_MAX__;
pub const LLONG_MIN = -__LONG_LONG_MAX__ - @as(c_longlong, 1);
pub const ULLONG_MAX = (__LONG_LONG_MAX__ * @as(c_ulonglong, 2)) + @as(c_ulonglong, 1);
pub const _BITS_POSIX1_LIM_H = @as(c_int, 1);
pub const _POSIX_AIO_LISTIO_MAX = @as(c_int, 2);
pub const _POSIX_AIO_MAX = @as(c_int, 1);
pub const _POSIX_ARG_MAX = @as(c_int, 4096);
pub const _POSIX_CHILD_MAX = @as(c_int, 25);
pub const _POSIX_DELAYTIMER_MAX = @as(c_int, 32);
pub const _POSIX_HOST_NAME_MAX = @as(c_int, 255);
pub const _POSIX_LINK_MAX = @as(c_int, 8);
pub const _POSIX_LOGIN_NAME_MAX = @as(c_int, 9);
pub const _POSIX_MAX_CANON = @as(c_int, 255);
pub const _POSIX_MAX_INPUT = @as(c_int, 255);
pub const _POSIX_MQ_OPEN_MAX = @as(c_int, 8);
pub const _POSIX_MQ_PRIO_MAX = @as(c_int, 32);
pub const _POSIX_NAME_MAX = @as(c_int, 14);
pub const _POSIX_NGROUPS_MAX = @as(c_int, 8);
pub const _POSIX_OPEN_MAX = @as(c_int, 20);
pub const _POSIX_PATH_MAX = @as(c_int, 256);
pub const _POSIX_PIPE_BUF = @as(c_int, 512);
pub const _POSIX_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX_RTSIG_MAX = @as(c_int, 8);
pub const _POSIX_SEM_NSEMS_MAX = @as(c_int, 256);
pub const _POSIX_SEM_VALUE_MAX = @as(c_int, 32767);
pub const _POSIX_SIGQUEUE_MAX = @as(c_int, 32);
pub const _POSIX_SSIZE_MAX = @as(c_int, 32767);
pub const _POSIX_STREAM_MAX = @as(c_int, 8);
pub const _POSIX_SYMLINK_MAX = @as(c_int, 255);
pub const _POSIX_SYMLOOP_MAX = @as(c_int, 8);
pub const _POSIX_TIMER_MAX = @as(c_int, 32);
pub const _POSIX_TTY_NAME_MAX = @as(c_int, 9);
pub const _POSIX_TZNAME_MAX = @as(c_int, 6);
pub const _POSIX_CLOCKRES_MIN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 20000000, .decimal);
pub const __undef_NR_OPEN = "";
pub const __undef_LINK_MAX = "";
pub const __undef_OPEN_MAX = "";
pub const __undef_ARG_MAX = "";
pub const _LINUX_LIMITS_H = "";
pub const NR_OPEN = @as(c_int, 1024);
pub const NGROUPS_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const ARG_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 131072, .decimal);
pub const LINK_MAX = @as(c_int, 127);
pub const MAX_CANON = @as(c_int, 255);
pub const MAX_INPUT = @as(c_int, 255);
pub const NAME_MAX = @as(c_int, 255);
pub const PATH_MAX = @as(c_int, 4096);
pub const PIPE_BUF = @as(c_int, 4096);
pub const XATTR_NAME_MAX = @as(c_int, 255);
pub const XATTR_SIZE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const XATTR_LIST_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65536, .decimal);
pub const RTSIG_MAX = @as(c_int, 32);
pub const _POSIX_THREAD_KEYS_MAX = @as(c_int, 128);
pub const PTHREAD_KEYS_MAX = @as(c_int, 1024);
pub const _POSIX_THREAD_DESTRUCTOR_ITERATIONS = @as(c_int, 4);
pub const PTHREAD_DESTRUCTOR_ITERATIONS = _POSIX_THREAD_DESTRUCTOR_ITERATIONS;
pub const _POSIX_THREAD_THREADS_MAX = @as(c_int, 64);
pub const AIO_PRIO_DELTA_MAX = @as(c_int, 20);
pub const PTHREAD_STACK_MIN = @as(c_int, 16384);
pub const DELAYTIMER_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const TTY_NAME_MAX = @as(c_int, 32);
pub const LOGIN_NAME_MAX = @as(c_int, 256);
pub const HOST_NAME_MAX = @as(c_int, 64);
pub const MQ_PRIO_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 32768, .decimal);
pub const SEM_VALUE_MAX = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SSIZE_MAX = LONG_MAX;
pub const _BITS_POSIX2_LIM_H = @as(c_int, 1);
pub const _POSIX2_BC_BASE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_DIM_MAX = @as(c_int, 2048);
pub const _POSIX2_BC_SCALE_MAX = @as(c_int, 99);
pub const _POSIX2_BC_STRING_MAX = @as(c_int, 1000);
pub const _POSIX2_COLL_WEIGHTS_MAX = @as(c_int, 2);
pub const _POSIX2_EXPR_NEST_MAX = @as(c_int, 32);
pub const _POSIX2_LINE_MAX = @as(c_int, 2048);
pub const _POSIX2_RE_DUP_MAX = @as(c_int, 255);
pub const _POSIX2_CHARCLASS_NAME_MAX = @as(c_int, 14);
pub const BC_BASE_MAX = _POSIX2_BC_BASE_MAX;
pub const BC_DIM_MAX = _POSIX2_BC_DIM_MAX;
pub const BC_SCALE_MAX = _POSIX2_BC_SCALE_MAX;
pub const BC_STRING_MAX = _POSIX2_BC_STRING_MAX;
pub const COLL_WEIGHTS_MAX = @as(c_int, 255);
pub const EXPR_NEST_MAX = _POSIX2_EXPR_NEST_MAX;
pub const LINE_MAX = _POSIX2_LINE_MAX;
pub const CHARCLASS_NAME_MAX = @as(c_int, 2048);
pub const RE_DUP_MAX = @as(c_int, 0x7fff);
pub inline fn pg_read_barrier_impl() @TypeOf(pg_compiler_barrier_impl()) {
    return pg_compiler_barrier_impl();
}
pub inline fn pg_write_barrier_impl() @TypeOf(pg_compiler_barrier_impl()) {
    return pg_compiler_barrier_impl();
}
pub const PG_HAVE_ATOMIC_FLAG_SUPPORT = "";
pub const PG_HAVE_ATOMIC_U32_SUPPORT = "";
pub const PG_HAVE_ATOMIC_U64_SUPPORT = "";
pub const PG_HAVE_SPIN_DELAY = "";
pub const PG_HAVE_ATOMIC_TEST_SET_FLAG = "";
pub const PG_HAVE_ATOMIC_CLEAR_FLAG = "";
pub const PG_HAVE_ATOMIC_COMPARE_EXCHANGE_U32 = "";
pub const PG_HAVE_ATOMIC_FETCH_ADD_U32 = "";
pub const PG_HAVE_ATOMIC_COMPARE_EXCHANGE_U64 = "";
pub const PG_HAVE_ATOMIC_FETCH_ADD_U64 = "";
pub const PG_HAVE_8BYTE_SINGLE_COPY_ATOMICITY = "";
pub const PG_HAVE_ATOMIC_UNLOCKED_TEST_FLAG = "";
pub const PG_HAVE_ATOMIC_INIT_FLAG = "";
pub const PG_HAVE_ATOMIC_FETCH_SUB_U32 = "";
pub const PG_HAVE_ATOMIC_FETCH_AND_U32 = "";
pub const PG_HAVE_ATOMIC_FETCH_OR_U32 = "";
pub const PG_HAVE_ATOMIC_FETCH_SUB_U64 = "";
pub const PG_HAVE_ATOMIC_FETCH_AND_U64 = "";
pub const PG_HAVE_ATOMIC_FETCH_OR_U64 = "";
pub const PG_HAVE_ATOMIC_READ_U32 = "";
pub const PG_HAVE_ATOMIC_WRITE_U32 = "";
pub const PG_HAVE_ATOMIC_UNLOCKED_WRITE_U32 = "";
pub const PG_HAVE_ATOMIC_INIT_U32 = "";
pub const PG_HAVE_ATOMIC_EXCHANGE_U32 = "";
pub const PG_HAVE_ATOMIC_ADD_FETCH_U32 = "";
pub const PG_HAVE_ATOMIC_SUB_FETCH_U32 = "";
pub const PG_HAVE_ATOMIC_EXCHANGE_U64 = "";
pub const PG_HAVE_ATOMIC_WRITE_U64 = "";
pub const PG_HAVE_ATOMIC_READ_U64 = "";
pub const PG_HAVE_ATOMIC_INIT_U64 = "";
pub const PG_HAVE_ATOMIC_ADD_FETCH_U64 = "";
pub const PG_HAVE_ATOMIC_SUB_FETCH_U64 = "";
pub inline fn pg_compiler_barrier() @TypeOf(pg_compiler_barrier_impl()) {
    return pg_compiler_barrier_impl();
}
pub inline fn pg_memory_barrier() @TypeOf(pg_memory_barrier_impl()) {
    return pg_memory_barrier_impl();
}
pub inline fn pg_read_barrier() @TypeOf(pg_read_barrier_impl()) {
    return pg_read_barrier_impl();
}
pub inline fn pg_write_barrier() @TypeOf(pg_write_barrier_impl()) {
    return pg_write_barrier_impl();
}
pub inline fn pg_spin_delay() @TypeOf(pg_spin_delay_impl()) {
    return pg_spin_delay_impl();
}
pub const DSM_H = "";
pub const DSM_IMPL_H = "";
pub const DSM_IMPL_POSIX = @as(c_int, 1);
pub const DSM_IMPL_SYSV = @as(c_int, 2);
pub const DSM_IMPL_WINDOWS = @as(c_int, 3);
pub const DSM_IMPL_MMAP = @as(c_int, 4);
pub const USE_DSM_POSIX = "";
pub const DEFAULT_DYNAMIC_SHARED_MEMORY_TYPE = DSM_IMPL_POSIX;
pub const USE_DSM_SYSV = "";
pub const USE_DSM_MMAP = "";
pub const PG_DYNSHMEM_DIR = "pg_dynshmem";
pub const PG_DYNSHMEM_MMAP_FILE_PREFIX = "mmap.";
pub const DSM_CREATE_NULL_IF_MAXSEGMENTS = @as(c_int, 0x0001);
pub const DSM_HANDLE_INVALID = @as(c_int, 0);
pub const SIZEOF_DSA_POINTER = @as(c_int, 8);
pub const dsa_pointer_atomic_init = pg_atomic_init_u64;
pub const dsa_pointer_atomic_read = pg_atomic_read_u64;
pub const dsa_pointer_atomic_write = pg_atomic_write_u64;
pub const dsa_pointer_atomic_fetch_add = pg_atomic_fetch_add_u64;
pub const dsa_pointer_atomic_compare_exchange = pg_atomic_compare_exchange_u64;
pub const DSA_POINTER_FORMAT = "%016" ++ INT64_MODIFIER ++ "x";
pub const DSA_ALLOC_HUGE = @as(c_int, 0x01);
pub const DSA_ALLOC_NO_OOM = @as(c_int, 0x02);
pub const DSA_ALLOC_ZERO = @as(c_int, 0x04);
pub const InvalidDsaPointer = @import("std").zig.c_translation.cast(dsa_pointer, @as(c_int, 0));
pub inline fn DsaPointerIsValid(x: anytype) @TypeOf(x != InvalidDsaPointer) {
    return x != InvalidDsaPointer;
}
pub inline fn dsa_allocate(area: anytype, size: anytype) @TypeOf(dsa_allocate_extended(area, size, @as(c_int, 0))) {
    return dsa_allocate_extended(area, size, @as(c_int, 0));
}
pub inline fn dsa_allocate0(area: anytype, size: anytype) @TypeOf(dsa_allocate_extended(area, size, DSA_ALLOC_ZERO)) {
    return dsa_allocate_extended(area, size, DSA_ALLOC_ZERO);
}
pub const CONDITION_VARIABLE_H = "";
pub const PROCLIST_TYPES_H = "";
pub const SPIN_H = "";
pub const S_LOCK_H = "";
pub const HAS_TEST_AND_SET = "";
pub inline fn TAS(lock: anytype) @TypeOf(tas(lock)) {
    return tas(lock);
}
pub inline fn TAS_SPIN(lock: anytype) @TypeOf(if (lock.*) @as(c_int, 1) else TAS(lock)) {
    return if (lock.*) @as(c_int, 1) else TAS(lock);
}
pub inline fn SPIN_DELAY() @TypeOf(spin_delay()) {
    return spin_delay();
}
pub inline fn S_LOCK_FREE(lock: anytype) @TypeOf(lock.* == @as(c_int, 0)) {
    return lock.* == @as(c_int, 0);
}
pub inline fn S_INIT_LOCK(lock: anytype) @TypeOf(S_UNLOCK(lock)) {
    return S_UNLOCK(lock);
}
pub const DEFAULT_SPINS_PER_DELAY = @as(c_int, 100);
pub inline fn SpinLockInit(lock: anytype) @TypeOf(S_INIT_LOCK(lock)) {
    return S_INIT_LOCK(lock);
}
pub inline fn SpinLockAcquire(lock: anytype) @TypeOf(S_LOCK(lock)) {
    return S_LOCK(lock);
}
pub inline fn SpinLockRelease(lock: anytype) @TypeOf(S_UNLOCK(lock)) {
    return S_UNLOCK(lock);
}
pub inline fn SpinLockFree(lock: anytype) @TypeOf(S_LOCK_FREE(lock)) {
    return S_LOCK_FREE(lock);
}
pub const CV_MINIMAL_SIZE = if (@import("std").zig.c_translation.sizeof(ConditionVariable) <= @as(c_int, 16)) @as(c_int, 16) else @as(c_int, 32);
pub const HSEARCH_H = "";
pub const HASH_PARTITION = @as(c_int, 0x0001);
pub const HASH_SEGMENT = @as(c_int, 0x0002);
pub const HASH_DIRSIZE = @as(c_int, 0x0004);
pub const HASH_ELEM = @as(c_int, 0x0008);
pub const HASH_STRINGS = @as(c_int, 0x0010);
pub const HASH_BLOBS = @as(c_int, 0x0020);
pub const HASH_FUNCTION = @as(c_int, 0x0040);
pub const HASH_COMPARE = @as(c_int, 0x0080);
pub const HASH_KEYCOPY = @as(c_int, 0x0100);
pub const HASH_ALLOC = @as(c_int, 0x0200);
pub const HASH_CONTEXT = @as(c_int, 0x0400);
pub const HASH_SHARED_MEM = @as(c_int, 0x0800);
pub const HASH_ATTACH = @as(c_int, 0x1000);
pub const HASH_FIXED_SIZE = @as(c_int, 0x2000);
pub const NO_MAX_DSIZE = -@as(c_int, 1);
pub const QUERYENVIRONMENT_H = "";
pub const RELTRIGGER_H = "";
pub const SHAREDTUPLESTORE_H = "";
pub const FD_H = "";
pub const _DIRENT_H = @as(c_int, 1);
pub const _DIRENT_HAVE_D_RECLEN = "";
pub const _DIRENT_HAVE_D_OFF = "";
pub const _DIRENT_HAVE_D_TYPE = "";
pub const _DIRENT_MATCHES_DIRENT64 = @as(c_int, 1);
pub inline fn _D_EXACT_NAMLEN(d: anytype) @TypeOf(strlen(d.*.d_name)) {
    return strlen(d.*.d_name);
}
pub inline fn _D_ALLOC_NAMLEN(d: anytype) @TypeOf((@import("std").zig.c_translation.cast([*c]u8, d) + d.*.d_reclen) - (&d.*.d_name[@intCast(usize, @as(c_int, 0))])) {
    return (@import("std").zig.c_translation.cast([*c]u8, d) + d.*.d_reclen) - (&d.*.d_name[@intCast(usize, @as(c_int, 0))]);
}
pub inline fn IFTODT(mode: anytype) @TypeOf((mode & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal)) >> @as(c_int, 12)) {
    return (mode & @import("std").zig.c_translation.promoteIntLiteral(c_int, 0o170000, .octal)) >> @as(c_int, 12);
}
pub inline fn DTTOIF(dirtype: anytype) @TypeOf(dirtype << @as(c_int, 12)) {
    return dirtype << @as(c_int, 12);
}
pub const MAXNAMLEN = NAME_MAX;
pub inline fn FILE_POSSIBLY_DELETED(err: anytype) @TypeOf(err == ENOENT) {
    return err == ENOENT;
}
pub const PG_O_DIRECT = @as(c_int, 0);
pub const PG_TEMP_FILES_DIR = "pgsql_tmp";
pub const PG_TEMP_FILE_PREFIX = "pgsql_tmp";
pub const SHAREDFILESET_H = "";
pub const FILESET_H = "";
pub const SHARED_TUPLESTORE_SINGLE_PASS = @as(c_int, 0x01);
pub const SNAPSHOT_H = "";
pub const DATATYPE_TIMESTAMP_H = "";
pub const MAX_TIMESTAMP_PRECISION = @as(c_int, 6);
pub const MAX_INTERVAL_PRECISION = @as(c_int, 6);
pub const TS_PREC_INV = @as(f64, 1000000.0);
pub inline fn TSROUND(j: anytype) @TypeOf(@import("std").zig.c_translation.MacroArithmetic.div(rint(@import("std").zig.c_translation.cast(f64, j) * TS_PREC_INV), TS_PREC_INV)) {
    return @import("std").zig.c_translation.MacroArithmetic.div(rint(@import("std").zig.c_translation.cast(f64, j) * TS_PREC_INV), TS_PREC_INV);
}
pub const DAYS_PER_YEAR = @as(f64, 365.25);
pub const MONTHS_PER_YEAR = @as(c_int, 12);
pub const DAYS_PER_MONTH = @as(c_int, 30);
pub const HOURS_PER_DAY = @as(c_int, 24);
pub const SECS_PER_YEAR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 36525, .decimal) * @as(c_int, 864);
pub const SECS_PER_DAY = @import("std").zig.c_translation.promoteIntLiteral(c_int, 86400, .decimal);
pub const SECS_PER_HOUR = @as(c_int, 3600);
pub const SECS_PER_MINUTE = @as(c_int, 60);
pub const MINS_PER_HOUR = @as(c_int, 60);
pub const USECS_PER_DAY = INT64CONST(@import("std").zig.c_translation.promoteIntLiteral(c_int, 86400000000, .decimal));
pub const USECS_PER_HOUR = INT64CONST(@import("std").zig.c_translation.promoteIntLiteral(c_int, 3600000000, .decimal));
pub const USECS_PER_MINUTE = INT64CONST(@import("std").zig.c_translation.promoteIntLiteral(c_int, 60000000, .decimal));
pub const USECS_PER_SEC = INT64CONST(@import("std").zig.c_translation.promoteIntLiteral(c_int, 1000000, .decimal));
pub const MAX_TZDISP_HOUR = @as(c_int, 15);
pub const TZDISP_LIMIT = (MAX_TZDISP_HOUR + @as(c_int, 1)) * SECS_PER_HOUR;
pub const DT_NOBEGIN = PG_INT64_MIN;
pub const DT_NOEND = PG_INT64_MAX;
pub inline fn TIMESTAMP_IS_NOBEGIN(j: anytype) @TypeOf(j == DT_NOBEGIN) {
    return j == DT_NOBEGIN;
}
pub inline fn TIMESTAMP_IS_NOEND(j: anytype) @TypeOf(j == DT_NOEND) {
    return j == DT_NOEND;
}
pub inline fn TIMESTAMP_NOT_FINITE(j: anytype) @TypeOf((TIMESTAMP_IS_NOBEGIN(j) != 0) or (TIMESTAMP_IS_NOEND(j) != 0)) {
    return (TIMESTAMP_IS_NOBEGIN(j) != 0) or (TIMESTAMP_IS_NOEND(j) != 0);
}
pub const JULIAN_MINYEAR = -@as(c_int, 4713);
pub const JULIAN_MINMONTH = @as(c_int, 11);
pub const JULIAN_MINDAY = @as(c_int, 24);
pub const JULIAN_MAXYEAR = @import("std").zig.c_translation.promoteIntLiteral(c_int, 5874898, .decimal);
pub const JULIAN_MAXMONTH = @as(c_int, 6);
pub const JULIAN_MAXDAY = @as(c_int, 3);
pub inline fn IS_VALID_JULIAN(y: anytype, m: anytype, d: anytype) @TypeOf(((y > JULIAN_MINYEAR) or ((y == JULIAN_MINYEAR) and (m >= JULIAN_MINMONTH))) and ((y < JULIAN_MAXYEAR) or ((y == JULIAN_MAXYEAR) and (m < JULIAN_MAXMONTH)))) {
    _ = @TypeOf(d);
    return ((y > JULIAN_MINYEAR) or ((y == JULIAN_MINYEAR) and (m >= JULIAN_MINMONTH))) and ((y < JULIAN_MAXYEAR) or ((y == JULIAN_MAXYEAR) and (m < JULIAN_MAXMONTH)));
}
pub const UNIX_EPOCH_JDATE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2440588, .decimal);
pub const POSTGRES_EPOCH_JDATE = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2451545, .decimal);
pub const DATETIME_MIN_JULIAN = @as(c_int, 0);
pub const DATE_END_JULIAN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483494, .decimal);
pub const TIMESTAMP_END_JULIAN = @import("std").zig.c_translation.promoteIntLiteral(c_int, 109203528, .decimal);
pub const MIN_TIMESTAMP = INT64CONST(-@import("std").zig.c_translation.promoteIntLiteral(c_int, 211813488000000000, .decimal));
pub const END_TIMESTAMP = INT64CONST(@import("std").zig.c_translation.promoteIntLiteral(c_int, 9223371331200000000, .decimal));
pub inline fn IS_VALID_DATE(d: anytype) @TypeOf(((DATETIME_MIN_JULIAN - POSTGRES_EPOCH_JDATE) <= d) and (d < (DATE_END_JULIAN - POSTGRES_EPOCH_JDATE))) {
    return ((DATETIME_MIN_JULIAN - POSTGRES_EPOCH_JDATE) <= d) and (d < (DATE_END_JULIAN - POSTGRES_EPOCH_JDATE));
}
pub inline fn IS_VALID_TIMESTAMP(t: anytype) @TypeOf((MIN_TIMESTAMP <= t) and (t < END_TIMESTAMP)) {
    return (MIN_TIMESTAMP <= t) and (t < END_TIMESTAMP);
}
pub const InvalidSnapshot = @import("std").zig.c_translation.cast(Snapshot, NULL);
pub const SORTSUPPORT_H = "";
pub const RELCACHE_H = "";
pub const RELCACHE_INIT_FILENAME = "pg_internal.init";
pub const TUPLESORT_H = "";
pub const ITUP_H = "";
pub const INDEX_SIZE_MASK = @as(c_int, 0x1FFF);
pub const INDEX_AM_RESERVED_BIT = @as(c_int, 0x2000);
pub const INDEX_VAR_MASK = @as(c_int, 0x4000);
pub const INDEX_NULL_MASK = @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x8000, .hexadecimal);
pub inline fn IndexTupleSize(itup: anytype) Size {
    return @import("std").zig.c_translation.cast(Size, itup.*.t_info & INDEX_SIZE_MASK);
}
pub inline fn IndexTupleHasNulls(itup: anytype) @TypeOf(@import("std").zig.c_translation.cast(IndexTuple, itup).*.t_info & INDEX_NULL_MASK) {
    return @import("std").zig.c_translation.cast(IndexTuple, itup).*.t_info & INDEX_NULL_MASK;
}
pub inline fn IndexTupleHasVarwidths(itup: anytype) @TypeOf(@import("std").zig.c_translation.cast(IndexTuple, itup).*.t_info & INDEX_VAR_MASK) {
    return @import("std").zig.c_translation.cast(IndexTuple, itup).*.t_info & INDEX_VAR_MASK;
}
pub inline fn IndexInfoFindDataOffset(t_info: anytype) @TypeOf(if (!((t_info & INDEX_NULL_MASK) != 0)) @import("std").zig.c_translation.cast(Size, MAXALIGN(@import("std").zig.c_translation.sizeof(IndexTupleData))) else @import("std").zig.c_translation.cast(Size, MAXALIGN(@import("std").zig.c_translation.sizeof(IndexTupleData) + @import("std").zig.c_translation.sizeof(IndexAttributeBitMapData)))) {
    return if (!((t_info & INDEX_NULL_MASK) != 0)) @import("std").zig.c_translation.cast(Size, MAXALIGN(@import("std").zig.c_translation.sizeof(IndexTupleData))) else @import("std").zig.c_translation.cast(Size, MAXALIGN(@import("std").zig.c_translation.sizeof(IndexTupleData) + @import("std").zig.c_translation.sizeof(IndexAttributeBitMapData)));
}
pub const MaxIndexTuplesPerPage = @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.MacroArithmetic.div(BLCKSZ - SizeOfPageHeaderData, MAXALIGN(@import("std").zig.c_translation.sizeof(IndexTupleData) + @as(c_int, 1)) + @import("std").zig.c_translation.sizeof(ItemIdData)));
pub const NUM_TUPLESORTMETHODS = @as(c_int, 4);
pub const TUPLESORT_NONE = @as(c_int, 0);
pub const TUPLESORT_RANDOMACCESS = @as(c_int, 1) << @as(c_int, 0);
pub const TUPLESORT_ALLOWBOUNDED = @as(c_int, 1) << @as(c_int, 1);
pub const TUPLESTORE_H = "";
pub inline fn tuplestore_donestoring(state: anytype) anyopaque {
    _ = @TypeOf(state);
    return @import("std").zig.c_translation.cast(anyopaque, @as(c_int, 0));
}
pub const EEO_FLAG_IS_QUAL = @as(c_int, 1) << @as(c_int, 0);
pub const FIELDNO_EXPRSTATE_RESNULL = @as(c_int, 2);
pub const FIELDNO_EXPRSTATE_RESVALUE = @as(c_int, 3);
pub const FIELDNO_EXPRSTATE_RESULTSLOT = @as(c_int, 4);
pub const FIELDNO_EXPRSTATE_PARENT = @as(c_int, 11);
pub const FIELDNO_EXPRCONTEXT_SCANTUPLE = @as(c_int, 1);
pub const FIELDNO_EXPRCONTEXT_INNERTUPLE = @as(c_int, 2);
pub const FIELDNO_EXPRCONTEXT_OUTERTUPLE = @as(c_int, 3);
pub const FIELDNO_EXPRCONTEXT_AGGVALUES = @as(c_int, 8);
pub const FIELDNO_EXPRCONTEXT_AGGNULLS = @as(c_int, 9);
pub const FIELDNO_EXPRCONTEXT_CASEDATUM = @as(c_int, 10);
pub const FIELDNO_EXPRCONTEXT_CASENULL = @as(c_int, 11);
pub const FIELDNO_EXPRCONTEXT_DOMAINDATUM = @as(c_int, 12);
pub const FIELDNO_EXPRCONTEXT_DOMAINNULL = @as(c_int, 13);
pub const SH_ELEMENT_TYPE = TupleHashEntryData;
pub const SH_KEY_TYPE = MinimalTuple;
pub const SH_DECLARE = "";
pub const PG_BITUTILS_H = "";
pub inline fn pg_nextpower2_size_t(num: anytype) @TypeOf(pg_nextpower2_64(num)) {
    return pg_nextpower2_64(num);
}
pub inline fn pg_prevpower2_size_t(num: anytype) @TypeOf(pg_prevpower2_64(num)) {
    return pg_prevpower2_64(num);
}
pub const TRY_POPCNT_FAST = @as(c_int, 1);
pub inline fn SH_MAKE_PREFIX(a: anytype) @TypeOf(CppConcat(a, @"_")) {
    return CppConcat(a, @"_");
}
pub inline fn SH_MAKE_NAME(name: anytype) @TypeOf(SH_MAKE_NAME_(SH_MAKE_PREFIX(SH_PREFIX), name)) {
    return SH_MAKE_NAME_(SH_MAKE_PREFIX(SH_PREFIX), name);
}
pub inline fn SH_MAKE_NAME_(a: anytype, b: anytype) @TypeOf(CppConcat(a, b)) {
    return CppConcat(a, b);
}
pub const SH_FREE = SH_MAKE_NAME(free);
pub const SH_STAT = SH_MAKE_NAME(stat);
pub inline fn InitTupleHashIterator(htable: anytype, iter: anytype) @TypeOf(tuplehash_start_iterate(htable.*.hashtab, iter)) {
    return tuplehash_start_iterate(htable.*.hashtab, iter);
}
pub inline fn TermTupleHashIterator(iter: anytype) anyopaque {
    _ = @TypeOf(iter);
    return @import("std").zig.c_translation.cast(anyopaque, @as(c_int, 0));
}
pub inline fn ResetTupleHashIterator(htable: anytype, iter: anytype) @TypeOf(InitTupleHashIterator(htable, iter)) {
    return InitTupleHashIterator(htable, iter);
}
pub inline fn ScanTupleHashTable(htable: anytype, iter: anytype) @TypeOf(tuplehash_iterate(htable.*.hashtab, iter)) {
    return tuplehash_iterate(htable.*.hashtab, iter);
}
pub inline fn innerPlanState(node: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]PlanState, node).*.righttree) {
    return @import("std").zig.c_translation.cast([*c]PlanState, node).*.righttree;
}
pub inline fn outerPlanState(node: anytype) @TypeOf(@import("std").zig.c_translation.cast([*c]PlanState, node).*.lefttree) {
    return @import("std").zig.c_translation.cast([*c]PlanState, node).*.lefttree;
}
pub const MERGE_INSERT = @as(c_int, 0x01);
pub const MERGE_UPDATE = @as(c_int, 0x02);
pub const MERGE_DELETE = @as(c_int, 0x04);
pub const FIELDNO_AGGSTATE_CURAGGCONTEXT = @as(c_int, 14);
pub const FIELDNO_AGGSTATE_CURPERTRANS = @as(c_int, 16);
pub const FIELDNO_AGGSTATE_CURRENT_SET = @as(c_int, 20);
pub const FIELDNO_AGGSTATE_ALL_PERGROUPS = @as(c_int, 53);
pub const DEST_H = "";
pub const CMDTAG_H = "";
pub const COMPLETION_TAG_BUFSIZE = @as(c_int, 64);
pub const MEMUTILS_H = "";
pub const MEMNODES_H = "";
pub const MaxAllocSize = @import("std").zig.c_translation.cast(Size, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x3fffffff, .hexadecimal));
pub inline fn AllocSizeIsValid(size: anytype) @TypeOf(@import("std").zig.c_translation.cast(Size, size) <= MaxAllocSize) {
    return @import("std").zig.c_translation.cast(Size, size) <= MaxAllocSize;
}
pub const MaxAllocHugeSize = @import("std").zig.c_translation.MacroArithmetic.div(SIZE_MAX, @as(c_int, 2));
pub inline fn AllocHugeSizeIsValid(size: anytype) @TypeOf(@import("std").zig.c_translation.cast(Size, size) <= MaxAllocHugeSize) {
    return @import("std").zig.c_translation.cast(Size, size) <= MaxAllocHugeSize;
}
pub inline fn MemoryContextResetAndDeleteChildren(ctx: anytype) @TypeOf(MemoryContextReset(ctx)) {
    return MemoryContextReset(ctx);
}
pub inline fn MemoryContextCopyAndSetIdentifier(cxt: anytype, id: anytype) @TypeOf(MemoryContextSetIdentifier(cxt, MemoryContextStrdup(cxt, id))) {
    return MemoryContextSetIdentifier(cxt, MemoryContextStrdup(cxt, id));
}
pub const ALLOCSET_DEFAULT_MINSIZE = @as(c_int, 0);
pub const ALLOCSET_DEFAULT_INITSIZE = @as(c_int, 8) * @as(c_int, 1024);
pub const ALLOCSET_DEFAULT_MAXSIZE = (@as(c_int, 8) * @as(c_int, 1024)) * @as(c_int, 1024);
pub const ALLOCSET_DEFAULT_SIZES = blk: {
    _ = @TypeOf(ALLOCSET_DEFAULT_MINSIZE);
    _ = @TypeOf(ALLOCSET_DEFAULT_INITSIZE);
    break :blk ALLOCSET_DEFAULT_MAXSIZE;
};
pub const ALLOCSET_SMALL_MINSIZE = @as(c_int, 0);
pub const ALLOCSET_SMALL_INITSIZE = @as(c_int, 1) * @as(c_int, 1024);
pub const ALLOCSET_SMALL_MAXSIZE = @as(c_int, 8) * @as(c_int, 1024);
pub const ALLOCSET_SMALL_SIZES = blk: {
    _ = @TypeOf(ALLOCSET_SMALL_MINSIZE);
    _ = @TypeOf(ALLOCSET_SMALL_INITSIZE);
    break :blk ALLOCSET_SMALL_MAXSIZE;
};
pub const ALLOCSET_START_SMALL_SIZES = blk: {
    _ = @TypeOf(ALLOCSET_SMALL_MINSIZE);
    _ = @TypeOf(ALLOCSET_SMALL_INITSIZE);
    break :blk ALLOCSET_DEFAULT_MAXSIZE;
};
pub const ALLOCSET_SEPARATE_THRESHOLD = @as(c_int, 8192);
pub const SLAB_DEFAULT_BLOCK_SIZE = @as(c_int, 8) * @as(c_int, 1024);
pub const SLAB_LARGE_BLOCK_SIZE = (@as(c_int, 8) * @as(c_int, 1024)) * @as(c_int, 1024);
pub const EXEC_FLAG_EXPLAIN_ONLY = @as(c_int, 0x0001);
pub const EXEC_FLAG_REWIND = @as(c_int, 0x0002);
pub const EXEC_FLAG_BACKWARD = @as(c_int, 0x0004);
pub const EXEC_FLAG_MARK = @as(c_int, 0x0008);
pub const EXEC_FLAG_SKIP_TRIGGERS = @as(c_int, 0x0010);
pub const EXEC_FLAG_WITH_NO_DATA = @as(c_int, 0x0020);
pub inline fn ResetExprContext(econtext: anytype) @TypeOf(MemoryContextReset(econtext.*.ecxt_per_tuple_memory)) {
    return MemoryContextReset(econtext.*.ecxt_per_tuple_memory);
}
pub inline fn GetPerTupleExprContext(estate: anytype) @TypeOf(if (estate.*.es_per_tuple_exprcontext) estate.*.es_per_tuple_exprcontext else MakePerTupleExprContext(estate)) {
    return if (estate.*.es_per_tuple_exprcontext) estate.*.es_per_tuple_exprcontext else MakePerTupleExprContext(estate);
}
pub inline fn GetPerTupleMemoryContext(estate: anytype) @TypeOf(GetPerTupleExprContext(estate).*.ecxt_per_tuple_memory) {
    return GetPerTupleExprContext(estate).*.ecxt_per_tuple_memory;
}
pub const __va_list_tag = struct___va_list_tag;
pub const _G_fpos_t = struct__G_fpos_t;
pub const _G_fpos64_t = struct__G_fpos64_t;
pub const _IO_marker = struct__IO_marker;
pub const _IO_codecvt = struct__IO_codecvt;
pub const _IO_wide_data = struct__IO_wide_data;
pub const _IO_FILE = struct__IO_FILE;
pub const timeval = struct_timeval;
pub const timespec = struct_timespec;
pub const __pthread_internal_list = struct___pthread_internal_list;
pub const __pthread_internal_slist = struct___pthread_internal_slist;
pub const __pthread_mutex_s = struct___pthread_mutex_s;
pub const __pthread_rwlock_arch_t = struct___pthread_rwlock_arch_t;
pub const __pthread_cond_s = struct___pthread_cond_s;
pub const random_data = struct_random_data;
pub const drand48_data = struct_drand48_data;
pub const __locale_data = struct___locale_data;
pub const __locale_struct = struct___locale_struct;
pub const lconv = struct_lconv;
pub const varlena = struct_varlena;
pub const nameData = struct_nameData;
pub const __jmp_buf_tag = struct___jmp_buf_tag;
pub const AttrMissing = struct_AttrMissing;
pub const flock = struct_flock;
pub const stat = struct_stat;
pub const BufferAccessStrategyData = struct_BufferAccessStrategyData;
pub const tm = struct_tm;
pub const itimerspec = struct_itimerspec;
pub const sigevent = struct_sigevent;
pub const ExprEvalStep = struct_ExprEvalStep;
pub const ParseState = struct_ParseState;
pub const GlobalVisState = struct_GlobalVisState;
pub const RelationData = struct_RelationData;
pub const FdwRoutine = struct_FdwRoutine;
pub const CopyMultiInsertBuffer = struct_CopyMultiInsertBuffer;
pub const PartitionDirectoryData = struct_PartitionDirectoryData;
pub const SharedJitInstrumentation = struct_SharedJitInstrumentation;
pub const JitContext = struct_JitContext;
pub const JitInstrumentation = struct_JitInstrumentation;
pub const PartitionBoundInfoData = struct_PartitionBoundInfoData;
pub const PartitionKeyData = struct_PartitionKeyData;
pub const PartitionDescData = struct_PartitionDescData;
pub const ValUnion = union_ValUnion;
pub const CustomScanMethods = struct_CustomScanMethods;
pub const PGShmemHeader = struct_PGShmemHeader;
pub const dirent = struct_dirent;
pub const __dirstream = struct___dirstream;
pub const iovec = struct_iovec;
pub const pg_itm = struct_pg_itm;
pub const pg_itm_in = struct_pg_itm_in;
pub const PublicationDesc = struct_PublicationDesc;
pub const ParallelHashJoinState = struct_ParallelHashJoinState;
pub const LogicalTapeSet = struct_LogicalTapeSet;
pub const PartitionTupleRouting = struct_PartitionTupleRouting;
pub const TransitionCaptureState = struct_TransitionCaptureState;
pub const WaitEventSet = struct_WaitEventSet;
pub const PartitionPruneState = struct_PartitionPruneState;
pub const binaryheap = struct_binaryheap;
pub const TableScanDescData = struct_TableScanDescData;
pub const TsmRoutine = struct_TsmRoutine;
pub const ScanKeyData = struct_ScanKeyData;
pub const IndexScanDescData = struct_IndexScanDescData;
pub const FunctionScanPerFuncState = struct_FunctionScanPerFuncState;
pub const TableFuncRoutine = struct_TableFuncRoutine;
pub const CustomExecMethods = struct_CustomExecMethods;
pub const MergeJoinClauseData = struct_MergeJoinClauseData;
pub const HashJoinTupleData = struct_HashJoinTupleData;
pub const HashJoinTableData = struct_HashJoinTableData;
pub const MemoizeEntry = struct_MemoizeEntry;
pub const MemoizeTuple = struct_MemoizeTuple;
pub const MemoizeKey = struct_MemoizeKey;
pub const memoize_hash = struct_memoize_hash;
pub const AggStatePerAggData = struct_AggStatePerAggData;
pub const AggStatePerTransData = struct_AggStatePerTransData;
pub const AggStatePerGroupData = struct_AggStatePerGroupData;
pub const AggStatePerPhaseData = struct_AggStatePerPhaseData;
pub const AggStatePerHashData = struct_AggStatePerHashData;
pub const HashAggSpill = struct_HashAggSpill;
pub const WindowStatePerFuncData = struct_WindowStatePerFuncData;
pub const WindowStatePerAggData = struct_WindowStatePerAggData;
pub const WindowObjectData = struct_WindowObjectData;
pub const ParallelExecutorInfo = struct_ParallelExecutorInfo;
pub const TupleQueueReader = struct_TupleQueueReader;
pub const GMReaderTupleBuffer = struct_GMReaderTupleBuffer;
pub const SetOpStatePerGroupData = struct_SetOpStatePerGroupData;
pub const _DestReceiver = struct__DestReceiver;
pub const Path = struct_Path;
