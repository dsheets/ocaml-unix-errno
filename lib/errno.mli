(*
 * Copyright (c) 2014-2015 David Sheets <sheets@alum.mit.edu>
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

type t =
  | E2BIG
  | EACCES
  | EADDRINUSE
  | EADDRNOTAVAIL
  | EAFNOSUPPORT
  | EAGAIN
  | EALREADY
  | EBADF
  | EBADMSG
  | EBUSY
  | ECANCELED
  | ECHILD
  | ECONNABORTED
  | ECONNREFUSED
  | ECONNRESET
  | EDEADLK
  | EDESTADDRREQ
  | EDOM
  | EDQUOT
  | EEXIST
  | EFAULT
  | EFBIG
  | EHOSTDOWN
  | EHOSTUNREACH
  | EIDRM
  | EILSEQ
  | EINPROGRESS
  | EINTR
  | EINVAL
  | EIO
  | EISCONN
  | EISDIR
  | ELOOP
  | EMFILE
  | EMLINK
  | EMSGSIZE
  | EMULTIHOP
  | ENAMETOOLONG
  | ENETDOWN
  | ENETRESET
  | ENETUNREACH
  | ENFILE
  | ENOBUFS
  | ENODEV
  | ENOENT
  | ENOEXEC
  | ENOLCK
  | ENOLINK
  | ENOMEM
  | ENOMSG
  | ENOPROTOOPT
  | ENOSPC
  | ENOSYS
  | ENOTCONN
  | ENOTDIR
  | ENOTEMPTY
  | ENOTRECOVERABLE
  | ENOTSOCK
  | ENOTSUP
  | ENOTTY
  | ENXIO
  | EOPNOTSUPP
  | EOVERFLOW
  | EOWNERDEAD
  | EPERM
  | EPFNOSUPPORT
  | EPIPE
  | EPROTO
  | EPROTONOSUPPORT
  | EPROTOTYPE
  | ERANGE
  | EROFS
  | ESHUTDOWN
  | ESOCKTNOSUPPORT
  | ESPIPE
  | ESRCH
  | ESTALE
  | ETIMEDOUT
  | ETOOMANYREFS
  | ETXTBSY
  | EWOULDBLOCK
  | EXDEV
  | EUNKNOWNERR of int

type error = {
  errno : t list;
  call  : string;
  label : string;
}

exception Error of error

type defns = {
  e2big : int option;
  eacces : int option;
  eaddrinuse : int option;
  eaddrnotavail : int option;
  eafnosupport : int option;
  eagain : int option;
  ealready : int option;
  ebadf : int option;
  ebadmsg : int option;
  ebusy : int option;
  ecanceled : int option;
  echild : int option;
  econnaborted : int option;
  econnrefused : int option;
  econnreset : int option;
  edeadlk : int option;
  edestaddrreq : int option;
  edom : int option;
  edquot : int option;
  eexist : int option;
  efault : int option;
  efbig : int option;
  ehostdown : int option;
  ehostunreach : int option;
  eidrm : int option;
  eilseq : int option;
  einprogress : int option;
  eintr : int option;
  einval : int option;
  eio : int option;
  eisconn : int option;
  eisdir : int option;
  eloop : int option;
  emfile : int option;
  emlink : int option;
  emsgsize : int option;
  emultihop : int option;
  enametoolong : int option;
  enetdown : int option;
  enetreset : int option;
  enetunreach : int option;
  enfile : int option;
  enobufs : int option;
  enodev : int option;
  enoent : int option;
  enoexec : int option;
  enolck : int option;
  enolink : int option;
  enomem : int option;
  enomsg : int option;
  enoprotoopt : int option;
  enospc : int option;
  enosys : int option;
  enotconn : int option;
  enotdir : int option;
  enotempty : int option;
  enotrecoverable : int option;
  enotsock : int option;
  enotsup : int option;
  enotty : int option;
  enxio : int option;
  eopnotsupp : int option;
  eoverflow : int option;
  eownerdead : int option;
  eperm : int option;
  epfnosupport : int option;
  epipe : int option;
  eproto : int option;
  eprotonosupport : int option;
  eprototype : int option;
  erange : int option;
  erofs : int option;
  eshutdown : int option;
  esocktnosupport : int option;
  espipe : int option;
  esrch : int option;
  estale : int option;
  etimedout : int option;
  etoomanyrefs : int option;
  etxtbsy : int option;
  ewouldblock : int option;
  exdev : int option;
}

type host

val to_code : host:host -> t -> int option

val of_code : host:host -> int -> t list

val to_string : t -> string

val host_of_defns : defns -> host

val defns_of_host : host -> defns

val string_of_defns : defns -> string

val defns_of_string : string -> defns

val check_errno : (unit -> 'a) -> ('a, error) Result.result
