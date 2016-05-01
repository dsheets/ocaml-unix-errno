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
  | ENOTBLK
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
  | EREMOTE
  | EROFS
  | ESHUTDOWN
  | ESOCKTNOSUPPORT
  | ESPIPE
  | ESRCH
  | ESTALE
  | ETIMEDOUT
  | ETOOMANYREFS
  | ETXTBSY
  | EUSERS
  | EWOULDBLOCK
  | EXDEV
  | ECHRNG
  | EL2NSYNC
  | EL3HLT
  | EL3RST
  | ELNRNG
  | EUNATCH
  | ENOCSI
  | EL2HLT
  | EBADE
  | EBADR
  | EXFULL
  | ENOANO
  | EBADRQC
  | EBADSLT
  | EBFONT
  | ENONET
  | ENOPKG
  | EADV
  | ESRMNT
  | ECOMM
  | EDOTDOT
  | ENOTUNIQ
  | EBADFD
  | EREMCHG
  | ELIBACC
  | ELIBBAD
  | ELIBSCN
  | ELIBMAX
  | ELIBEXEC
  | ERESTART
  | ESTRPIPE
  | EUCLEAN
  | ENOTNAM
  | ENAVAIL
  | EISNAM
  | EREMOTEIO
  | ENOMEDIUM
  | EMEDIUMTYPE
  | ENOKEY
  | EKEYEXPIRED
  | EKEYREVOKED
  | EKEYREJECTED
  | ERFKILL
  | EHWPOISON
  | EPWROFF
  | EDEVERR
  | EBADEXEC
  | EBADARCH
  | ESHLIBVERS
  | EBADMACHO
  | ENOPOLICY
  | EQFULL
  | EDOOFUS
  | ENOTCAPABLE
  | ECAPMODE
  | EPROCLIM
  | EBADRPC
  | ERPCMISMATCH
  | EPROGUNAVAIL
  | EPROGMISMATCH
  | EPROCUNAVAIL
  | EFTYPE
  | EAUTH
  | ENEEDAUTH
  | ENOATTR
  | ENOSTR
  | ENODATA
  | ETIME
  | ENOSR
  | EUNKNOWNERR of int

type error = {
  errno : t list;
  call  : string;
  label : string;
}

exception Error of error

(** NB: This module registers a printer for the [Error] exception. *)

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
  enotblk : int option;
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
  eremote : int option;
  erofs : int option;
  eshutdown : int option;
  esocktnosupport : int option;
  espipe : int option;
  esrch : int option;
  estale : int option;
  etimedout : int option;
  etoomanyrefs : int option;
  etxtbsy : int option;
  eusers : int option;
  ewouldblock : int option;
  exdev : int option;
  echrng : int option;
  el2nsync : int option;
  el3hlt : int option;
  el3rst : int option;
  elnrng : int option;
  eunatch : int option;
  enocsi : int option;
  el2hlt : int option;
  ebade : int option;
  ebadr : int option;
  exfull : int option;
  enoano : int option;
  ebadrqc : int option;
  ebadslt : int option;
  ebfont : int option;
  enonet : int option;
  enopkg : int option;
  eadv : int option;
  esrmnt : int option;
  ecomm : int option;
  edotdot : int option;
  enotuniq : int option;
  ebadfd : int option;
  eremchg : int option;
  elibacc : int option;
  elibbad : int option;
  elibscn : int option;
  elibmax : int option;
  elibexec : int option;
  erestart : int option;
  estrpipe : int option;
  euclean : int option;
  enotnam : int option;
  enavail : int option;
  eisnam : int option;
  eremoteio : int option;
  enomedium : int option;
  emediumtype : int option;
  enokey : int option;
  ekeyexpired : int option;
  ekeyrevoked : int option;
  ekeyrejected : int option;
  erfkill : int option;
  ehwpoison : int option;
  epwroff : int option;
  edeverr : int option;
  ebadexec : int option;
  ebadarch : int option;
  eshlibvers : int option;
  ebadmacho : int option;
  enopolicy : int option;
  eqfull : int option;
  edoofus : int option;
  enotcapable : int option;
  ecapmode : int option;
  eproclim : int option;
  ebadrpc : int option;
  erpcmismatch : int option;
  eprogunavail : int option;
  eprogmismatch : int option;
  eprocunavail : int option;
  eftype : int option;
  eauth : int option;
  eneedauth : int option;
  enoattr : int option;
  enostr : int option;
  enodata : int option;
  etime : int option;
  enosr : int option;
}

module Host : sig
  type t

  val of_defns : defns -> t

  val to_defns : t -> defns

end

val to_code : host:Host.t -> t -> int option

val of_code : host:Host.t -> int -> t list

val to_string : t -> string

val iter_defns : defns -> (int -> t -> unit) -> (t -> unit) -> unit

val string_of_defns : defns -> string

val defns_of_string : string -> defns

val check_errno : (unit -> 'a) -> ('a, error) Result.result

val string_of_error : error -> string
