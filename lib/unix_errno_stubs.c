#include <errno.h>
#include <caml/mlvalues.h>

#ifndef E2BIG
#define E2BIG (-1)
#endif
#ifndef EACCES
#define EACCES (-1)
#endif
#ifndef EAGAIN
#define EAGAIN (-1)
#endif
#ifndef EBADF
#define EBADF (-1)
#endif
#ifndef EBUSY
#define EBUSY (-1)
#endif
#ifndef ECHILD
#define ECHILD (-1)
#endif
#ifndef EDEADLK
#define EDEADLK (-1)
#endif
#ifndef EDOM
#define EDOM (-1)
#endif
#ifndef EEXIST
#define EEXIST (-1)
#endif

#ifndef EFAULT
#define EFAULT (-1)
#endif
#ifndef EFBIG
#define EFBIG (-1)
#endif
#ifndef EINTR
#define EINTR (-1)
#endif
#ifndef EINVAL
#define EINVAL (-1)
#endif
#ifndef EIO
#define EIO (-1)
#endif
#ifndef EISDIR
#define EISDIR (-1)
#endif
#ifndef EMFILE
#define EMFILE (-1)
#endif
#ifndef EMLINK
#define EMLINK (-1)
#endif
#ifndef ENAMETOOLONG
#define ENAMETOOLONG (-1)
#endif
#ifndef ENFILE
#define ENFILE (-1)
#endif
#ifndef ENODEV
#define ENODEV (-1)
#endif
#ifndef ENOENT
#define ENOENT (-1)
#endif
#ifndef ENOEXEC
#define ENOEXEC (-1)
#endif
#ifndef ENOLCK
#define ENOLCK (-1)
#endif
#ifndef ENOMEM
#define ENOMEM (-1)
#endif
#ifndef ENOSPC
#define ENOSPC (-1)
#endif
#ifndef ENOSYS
#define ENOSYS (-1)
#endif
#ifndef ENOTDIR
#define ENOTDIR (-1)
#endif
#ifndef ENOTEMPTY
#define ENOTEMPTY (-1)
#endif
#ifndef ENOTTY
#define ENOTTY (-1)
#endif
#ifndef ENXIO
#define ENXIO (-1)
#endif
#ifndef EPERM
#define EPERM (-1)
#endif
#ifndef EPIPE
#define EPIPE (-1)
#endif
#ifndef ERANGE
#define ERANGE (-1)
#endif
#ifndef EROFS
#define EROFS (-1)
#endif
#ifndef ESPIPE
#define ESPIPE (-1)
#endif
#ifndef ESRCH
#define ESRCH (-1)
#endif
#ifndef EXDEV
#define EXDEV (-1)
#endif
#ifndef EWOULDBLOCK
#define EWOULDBLOCK (-1)
#endif
#ifndef EINPROGRESS
#define EINPROGRESS (-1)
#endif
#ifndef EALREADY
#define EALREADY (-1)
#endif
#ifndef ENOTSOCK
#define ENOTSOCK (-1)
#endif
#ifndef EDESTADDRREQ
#define EDESTADDRREQ (-1)
#endif
#ifndef EMSGSIZE
#define EMSGSIZE (-1)
#endif
#ifndef EPROTOTYPE
#define EPROTOTYPE (-1)
#endif
#ifndef ENOPROTOOPT
#define ENOPROTOOPT (-1)
#endif
#ifndef EPROTONOSUPPORT
#define EPROTONOSUPPORT (-1)
#endif
#ifndef ESOCKTNOSUPPORT
#define ESOCKTNOSUPPORT (-1)
#endif
#ifndef EOPNOTSUPP
#  ifdef ENOTSUP
#    define EOPNOTSUPP ENOTSUP
#  else
#    define EOPNOTSUPP (-1)
#  endif
#endif
#ifndef EPFNOSUPPORT
#define EPFNOSUPPORT (-1)
#endif
#ifndef EAFNOSUPPORT
#define EAFNOSUPPORT (-1)
#endif
#ifndef EADDRINUSE
#define EADDRINUSE (-1)
#endif
#ifndef EADDRNOTAVAIL
#define EADDRNOTAVAIL (-1)
#endif
#ifndef ENETDOWN
#define ENETDOWN (-1)
#endif
#ifndef ENETUNREACH
#define ENETUNREACH (-1)
#endif
#ifndef ENETRESET
#define ENETRESET (-1)
#endif
#ifndef ECONNABORTED
#define ECONNABORTED (-1)
#endif
#ifndef ECONNRESET
#define ECONNRESET (-1)
#endif
#ifndef ENOBUFS
#define ENOBUFS (-1)
#endif
#ifndef EISCONN
#define EISCONN (-1)
#endif
#ifndef ENOTCONN
#define ENOTCONN (-1)
#endif
#ifndef ESHUTDOWN
#define ESHUTDOWN (-1)
#endif
#ifndef ETOOMANYREFS
#define ETOOMANYREFS (-1)
#endif
#ifndef ETIMEDOUT
#define ETIMEDOUT (-1)
#endif
#ifndef ECONNREFUSED
#define ECONNREFUSED (-1)
#endif
#ifndef EHOSTDOWN
#define EHOSTDOWN (-1)
#endif
#ifndef EHOSTUNREACH
#define EHOSTUNREACH (-1)
#endif
#ifndef ENOTEMPTY
#define ENOTEMPTY (-1)
#endif
#ifndef ELOOP
#define ELOOP (-1)
#endif
#ifndef EOVERFLOW
#define EOVERFLOW (-1)
#endif

CAMLprim value unix_errno_e2big() { return Val_int(E2BIG); }
CAMLprim value unix_errno_eacces() { return Val_int(EACCES); }
CAMLprim value unix_errno_eagain() { return Val_int(EAGAIN); }
CAMLprim value unix_errno_ebadf() { return Val_int(EBADF); }
CAMLprim value unix_errno_ebusy() { return Val_int(EBUSY); }
CAMLprim value unix_errno_echild() { return Val_int(ECHILD); }
CAMLprim value unix_errno_edeadlk() { return Val_int(EDEADLK); }
CAMLprim value unix_errno_edom() { return Val_int(EDOM); }
CAMLprim value unix_errno_eexist() { return Val_int(EEXIST); }
CAMLprim value unix_errno_efault() { return Val_int(EFAULT); }
CAMLprim value unix_errno_efbig() { return Val_int(EFBIG); }
CAMLprim value unix_errno_eintr() { return Val_int(EINTR); }
CAMLprim value unix_errno_einval() { return Val_int(EINVAL); }
CAMLprim value unix_errno_eio() { return Val_int(EIO); }
CAMLprim value unix_errno_eisdir() { return Val_int(EISDIR); }
CAMLprim value unix_errno_emfile() { return Val_int(EMFILE); }
CAMLprim value unix_errno_emlink() { return Val_int(EMLINK); }
CAMLprim value unix_errno_enametoolong() { return Val_int(ENAMETOOLONG); }
CAMLprim value unix_errno_enfile() { return Val_int(ENFILE); }
CAMLprim value unix_errno_enodev() { return Val_int(ENODEV); }
CAMLprim value unix_errno_enoent() { return Val_int(ENOENT); }
CAMLprim value unix_errno_enoexec() { return Val_int(ENOEXEC); }
CAMLprim value unix_errno_enolck() { return Val_int(ENOLCK); }
CAMLprim value unix_errno_enomem() { return Val_int(ENOMEM); }
CAMLprim value unix_errno_enospc() { return Val_int(ENOSPC); }
CAMLprim value unix_errno_enosys() { return Val_int(ENOSYS); }
CAMLprim value unix_errno_enotdir() { return Val_int(ENOTDIR); }
CAMLprim value unix_errno_enotempty() { return Val_int(ENOTEMPTY); }
CAMLprim value unix_errno_enotty() { return Val_int(ENOTTY); }
CAMLprim value unix_errno_enxio() { return Val_int(ENXIO); }
CAMLprim value unix_errno_eperm() { return Val_int(EPERM); }
CAMLprim value unix_errno_epipe() { return Val_int(EPIPE); }
CAMLprim value unix_errno_erange() { return Val_int(ERANGE); }
CAMLprim value unix_errno_erofs() { return Val_int(EROFS); }
CAMLprim value unix_errno_espipe() { return Val_int(ESPIPE); }
CAMLprim value unix_errno_esrch() { return Val_int(ESRCH); }
CAMLprim value unix_errno_exdev() { return Val_int(EXDEV); }
CAMLprim value unix_errno_ewouldblock() { return Val_int(EWOULDBLOCK); }
CAMLprim value unix_errno_einprogress() { return Val_int(EINPROGRESS); }
CAMLprim value unix_errno_ealready() { return Val_int(EALREADY); }
CAMLprim value unix_errno_enotsock() { return Val_int(ENOTSOCK); }
CAMLprim value unix_errno_edestaddrreq() { return Val_int(EDESTADDRREQ); }
CAMLprim value unix_errno_emsgsize() { return Val_int(EMSGSIZE); }
CAMLprim value unix_errno_eprototype() { return Val_int(EPROTOTYPE); }
CAMLprim value unix_errno_enoprotoopt() { return Val_int(ENOPROTOOPT); }
CAMLprim value unix_errno_eprotonosupport() { return Val_int(EPROTONOSUPPORT); }
CAMLprim value unix_errno_esocktnosupport() { return Val_int(ESOCKTNOSUPPORT); }
CAMLprim value unix_errno_eopnotsupp() { return Val_int(EOPNOTSUPP); }
CAMLprim value unix_errno_epfnosupport() { return Val_int(EPFNOSUPPORT); }
CAMLprim value unix_errno_eafnosupport() { return Val_int(EAFNOSUPPORT); }
CAMLprim value unix_errno_eaddrinuse() { return Val_int(EADDRINUSE); }
CAMLprim value unix_errno_eaddrnotavail() { return Val_int(EADDRNOTAVAIL); }
CAMLprim value unix_errno_enetdown() { return Val_int(ENETDOWN); }
CAMLprim value unix_errno_enetunreach() { return Val_int(ENETUNREACH); }
CAMLprim value unix_errno_enetreset() { return Val_int(ENETRESET); }
CAMLprim value unix_errno_econnaborted() { return Val_int(ECONNABORTED); }
CAMLprim value unix_errno_econnreset() { return Val_int(ECONNRESET); }
CAMLprim value unix_errno_enobufs() { return Val_int(ENOBUFS); }
CAMLprim value unix_errno_eisconn() { return Val_int(EISCONN); }
CAMLprim value unix_errno_enotconn() { return Val_int(ENOTCONN); }
CAMLprim value unix_errno_eshutdown() { return Val_int(ESHUTDOWN); }
CAMLprim value unix_errno_etoomanyrefs() { return Val_int(ETOOMANYREFS); }
CAMLprim value unix_errno_etimedout() { return Val_int(ETIMEDOUT); }
CAMLprim value unix_errno_econnrefused() { return Val_int(ECONNREFUSED); }
CAMLprim value unix_errno_ehostdown() { return Val_int(EHOSTDOWN); }
CAMLprim value unix_errno_ehostunreach() { return Val_int(EHOSTUNREACH); }
CAMLprim value unix_errno_eloop() { return Val_int(ELOOP); }
CAMLprim value unix_errno_eoverflow() { return Val_int(EOVERFLOW); }

