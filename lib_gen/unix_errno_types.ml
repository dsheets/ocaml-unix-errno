(*
 * Copyright (c) 2015 David Sheets <sheets@alum.mit.edu>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 *)

module C(F: Cstubs.Types.TYPE) = struct

  let e2big = F.(constant "E2BIG" int)
  let eacces = F.(constant "EACCES" int)
  let eaddrinuse = F.(constant "EADDRINUSE" int)
  let eaddrnotavail = F.(constant "EADDRNOTAVAIL" int)
  let eafnosupport = F.(constant "EAFNOSUPPORT" int)
  let eagain = F.(constant "EAGAIN" int)
  let ealready = F.(constant "EALREADY" int)
  let ebadf = F.(constant "EBADF" int)
  let ebadmsg = F.(constant "EBADMSG" int)
  let ebusy = F.(constant "EBUSY" int)
  let ecanceled = F.(constant "ECANCELED" int)
  let echild = F.(constant "ECHILD" int)
  let econnaborted = F.(constant "ECONNABORTED" int)
  let econnrefused = F.(constant "ECONNREFUSED" int)
  let econnreset = F.(constant "ECONNRESET" int)
  let edeadlk = F.(constant "EDEADLK" int)
  let edestaddrreq = F.(constant "EDESTADDRREQ" int)
  let edom = F.(constant "EDOM" int)
  let edquot = F.(constant "EDQUOT" int)
  let eexist = F.(constant "EEXIST" int)
  let efault = F.(constant "EFAULT" int)
  let efbig = F.(constant "EFBIG" int)
  let ehostdown = F.(constant "EHOSTDOWN" int)
  let ehostunreach = F.(constant "EHOSTUNREACH" int)
  let eidrm = F.(constant "EIDRM" int)
  let eilseq = F.(constant "EILSEQ" int)
  let einprogress = F.(constant "EINPROGRESS" int)
  let eintr = F.(constant "EINTR" int)
  let einval = F.(constant "EINVAL" int)
  let eio = F.(constant "EIO" int)
  let eisconn = F.(constant "EISCONN" int)
  let eisdir = F.(constant "EISDIR" int)
  let eloop = F.(constant "ELOOP" int)
  let emfile = F.(constant "EMFILE" int)
  let emlink = F.(constant "EMLINK" int)
  let emsgsize = F.(constant "EMSGSIZE" int)
  let emultihop = F.(constant "EMULTIHOP" int)
  let enametoolong = F.(constant "ENAMETOOLONG" int)
  let enetdown = F.(constant "ENETDOWN" int)
  let enetreset = F.(constant "ENETRESET" int)
  let enetunreach = F.(constant "ENETUNREACH" int)
  let enfile = F.(constant "ENFILE" int)
  let enobufs = F.(constant "ENOBUFS" int)
  let enodev = F.(constant "ENODEV" int)
  let enoent = F.(constant "ENOENT" int)
  let enoexec = F.(constant "ENOEXEC" int)
  let enolck = F.(constant "ENOLCK" int)
  let enolink = F.(constant "ENOLINK" int)
  let enomem = F.(constant "ENOMEM" int)
  let enomsg = F.(constant "ENOMSG" int)
  let enoprotoopt = F.(constant "ENOPROTOOPT" int)
  let enospc = F.(constant "ENOSPC" int)
  let enosys = F.(constant "ENOSYS" int)
  let enotconn = F.(constant "ENOTCONN" int)
  let enotdir = F.(constant "ENOTDIR" int)
  let enotempty = F.(constant "ENOTEMPTY" int)
  let enotrecoverable = F.(constant "ENOTRECOVERABLE" int)
  let enotsock = F.(constant "ENOTSOCK" int)
  let enotsup = F.(constant "ENOTSUP" int)
  let enotty = F.(constant "ENOTTY" int)
  let enxio = F.(constant "ENXIO" int)
  let eopnotsupp = F.(constant "EOPNOTSUPP" int)
  let eoverflow = F.(constant "EOVERFLOW" int)
  let eownerdead = F.(constant "EOWNERDEAD" int)
  let eperm = F.(constant "EPERM" int)
  let epfnosupport = F.(constant "EPFNOSUPPORT" int)
  let epipe = F.(constant "EPIPE" int)
  let eproto = F.(constant "EPROTO" int)
  let eprotonosupport = F.(constant "EPROTONOSUPPORT" int)
  let eprototype = F.(constant "EPROTOTYPE" int)
  let erange = F.(constant "ERANGE" int)
  let erofs = F.(constant "EROFS" int)
  let eshutdown = F.(constant "ESHUTDOWN" int)
  let esocktnosupport = F.(constant "ESOCKTNOSUPPORT" int)
  let espipe = F.(constant "ESPIPE" int)
  let esrch = F.(constant "ESRCH" int)
  let estale = F.(constant "ESTALE" int)
  let etimedout = F.(constant "ETIMEDOUT" int)
  let etoomanyrefs = F.(constant "ETOOMANYREFS" int)
  let etxtbsy = F.(constant "ETXTBSY" int)
  let ewouldblock = F.(constant "EWOULDBLOCK" int)
  let exdev = F.(constant "EXDEV" int)

end
