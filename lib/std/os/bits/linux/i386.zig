pub const SYS_read = 3;
pub const SYS_write = 4;
pub const SYS_close = 6;
pub const SYS_getpid = 20;
pub const SYS_ioctl = 54;
pub const SYS_mmap = 90;
pub const SYS_munmap = 91;
pub const SYS_fstat = 108;
pub const SYS_uname = 122;
pub const SYS_mprotect = 125;
pub const SYS__llseek = 140;
pub const SYS_writev = 146;
pub const SYS_nanosleep = 162;
pub const SYS_arch_prctl = 172;
pub const SYS_rt_sigreturn = 173;
pub const SYS_rt_sigaction = 174;
pub const SYS_rt_sigprocmask = 175;
pub const SYS_getcwd = 183;
pub const SYS_sigaltstack = 186;
pub const SYS_mmap2 = 192;
pub const SYS_getdents64 = 220;
pub const SYS_gettid = 224;
pub const SYS_tkill = 238;
pub const SYS_futex = 240;
pub const SYS_sched_getaffinity = 242;
pub const SYS_set_thread_area = 243;
pub const SYS_exit_group = 252;
pub const SYS_epoll_ctl = 255;
pub const SYS_timer_create = 259;
pub const SYS_clock_getres = SYS_timer_create + 7;
pub const SYS_openat = 295;
pub const SYS_mkdirat = 296;
pub const SYS_unlinkat = 301;
pub const SYS_renameat = 302;
pub const SYS_readlinkat = 305;
pub const SYS_faccessat = 307;
pub const SYS_epoll_pwait = 319;
pub const SYS_timerfd_create = 322;
pub const SYS_timerfd_settime = 325;
pub const SYS_eventfd2 = 328;
pub const SYS_epoll_create1 = 329;
pub const SYS_pipe2 = 331;
pub const SYS_preadv = 333;
pub const SYS_pwritev = 334;
pub const SYS_renameat2 = 353;
pub const SYS_getrandom = 355;
pub const SYS_clock_gettime = 403;

pub const MMAP2_UNIT = 4096;

pub const O_LARGEFILE = 0x8000;

pub const UserDesc = struct {
    entry_num: u32,
    base_addr: u32,
    limit: u32,
    seg_32bit: u1,
    contents: u2,
    read_exec_only: u1,
    limit_in_pages: u1,
    seg_not_present: u1,
    useable: u1,
};

pub const time = c_long;
pub const mode = c_uint;
pub const nlink = c_uint;
pub const off = c_longlong;
pub const ino = c_ulonglong;
pub const dev = c_ulonglong;
pub const blksize = c_long;
pub const blkcnt = c_longlong;
pub const timespec = struct {
    tv_sec: time,
    tv_nsec: c_long,
};
pub const uid = c_uint;
pub const gid = c_uint;
pub const Stat = struct {
    dev: dev,
    __dev_padding: c_int,
    __ino_truncated: c_long,
    mode: mode,
    nlink: nlink,
    uid: uid,
    gid: gid,
    rdev: dev,
    __rdev_padding: c_int,
    size: off,
    blksize: blksize,
    blocks: blkcnt,
    atim: timespec,
    mtim: timespec,
    ctim: timespec,
    ino: ino,

    pub fn atime(self: Stat) timespec {
        return self.atim;
    }

    pub fn mtime(self: Stat) timespec {
        return self.mtim;
    }

    pub fn ctime(self: Stat) timespec {
        return self.ctim;
    }
};
