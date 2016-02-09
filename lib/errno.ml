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
  | EHOSTDOWN (* Linux: Host is down *)
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
  | EPFNOSUPPORT (* Linux: Protocol family not supported *)
  | EPIPE
  | EPROTO
  | EPROTONOSUPPORT
  | EPROTOTYPE
  | ERANGE
  | EROFS
  | ESHUTDOWN (* Linux: Cannot send after transport endpoint shutdown *)
  | ESOCKTNOSUPPORT (* Linux: Socket type not supported *)
  | ESPIPE
  | ESRCH
  | ESTALE
  | ETIMEDOUT
  | ETOOMANYREFS (* Linux: Too many references: cannot splice *)
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

type index = (int, t) Hashtbl.t

let empty_defns = {
  e2big = None;
  eacces = None;
  eaddrinuse = None;
  eaddrnotavail = None;
  eafnosupport = None;
  eagain = None;
  ealready = None;
  ebadf = None;
  ebadmsg = None;
  ebusy = None;
  ecanceled = None;
  echild = None;
  econnaborted = None;
  econnrefused = None;
  econnreset = None;
  edeadlk = None;
  edestaddrreq = None;
  edom = None;
  edquot = None;
  eexist = None;
  efault = None;
  efbig = None;
  ehostdown = None;
  ehostunreach = None;
  eidrm = None;
  eilseq = None;
  einprogress = None;
  eintr = None;
  einval = None;
  eio = None;
  eisconn = None;
  eisdir = None;
  eloop = None;
  emfile = None;
  emlink = None;
  emsgsize = None;
  emultihop = None;
  enametoolong = None;
  enetdown = None;
  enetreset = None;
  enetunreach = None;
  enfile = None;
  enobufs = None;
  enodev = None;
  enoent = None;
  enoexec = None;
  enolck = None;
  enolink = None;
  enomem = None;
  enomsg = None;
  enoprotoopt = None;
  enospc = None;
  enosys = None;
  enotconn = None;
  enotdir = None;
  enotempty = None;
  enotrecoverable = None;
  enotsock = None;
  enotsup = None;
  enotty = None;
  enxio = None;
  eopnotsupp = None;
  eoverflow = None;
  eownerdead = None;
  eperm = None;
  epfnosupport = None;
  epipe = None;
  eproto = None;
  eprotonosupport = None;
  eprototype = None;
  erange = None;
  erofs = None;
  eshutdown = None;
  esocktnosupport = None;
  espipe = None;
  esrch = None;
  estale = None;
  etimedout = None;
  etoomanyrefs = None;
  etxtbsy = None;
  ewouldblock = None;
  exdev = None;
}

let to_code ~host = let (defns,_) = host in function
  | E2BIG -> defns.e2big
  | EACCES -> defns.eacces
  | EADDRINUSE -> defns.eaddrinuse
  | EADDRNOTAVAIL -> defns.eaddrnotavail
  | EAFNOSUPPORT -> defns.eafnosupport
  | EAGAIN -> defns.eagain
  | EALREADY -> defns.ealready
  | EBADF -> defns.ebadf
  | EBADMSG -> defns.ebadmsg
  | EBUSY -> defns.ebusy
  | ECANCELED -> defns.ecanceled
  | ECHILD -> defns.echild
  | ECONNABORTED -> defns.econnaborted
  | ECONNREFUSED -> defns.econnrefused
  | ECONNRESET -> defns.econnreset
  | EDEADLK -> defns.edeadlk
  | EDESTADDRREQ -> defns.edestaddrreq
  | EDOM -> defns.edom
  | EDQUOT -> defns.edquot
  | EEXIST -> defns.eexist
  | EFAULT -> defns.efault
  | EFBIG -> defns.efbig
  | EHOSTDOWN -> defns.ehostdown
  | EHOSTUNREACH -> defns.ehostunreach
  | EIDRM -> defns.eidrm
  | EILSEQ -> defns.eilseq
  | EINPROGRESS -> defns.einprogress
  | EINTR -> defns.eintr
  | EINVAL -> defns.einval
  | EIO -> defns.eio
  | EISCONN -> defns.eisconn
  | EISDIR -> defns.eisdir
  | ELOOP -> defns.eloop
  | EMFILE -> defns.emfile
  | EMLINK -> defns.emlink
  | EMSGSIZE -> defns.emsgsize
  | EMULTIHOP -> defns.emultihop
  | ENAMETOOLONG -> defns.enametoolong
  | ENETDOWN -> defns.enetdown
  | ENETRESET -> defns.enetreset
  | ENETUNREACH -> defns.enetunreach
  | ENFILE -> defns.enfile
  | ENOBUFS -> defns.enobufs
  | ENODEV -> defns.enodev
  | ENOENT -> defns.enoent
  | ENOEXEC -> defns.enoexec
  | ENOLCK -> defns.enolck
  | ENOLINK -> defns.enolink
  | ENOMEM -> defns.enomem
  | ENOMSG -> defns.enomsg
  | ENOPROTOOPT -> defns.enoprotoopt
  | ENOSPC -> defns.enospc
  | ENOSYS -> defns.enosys
  | ENOTCONN -> defns.enotconn
  | ENOTDIR -> defns.enotdir
  | ENOTEMPTY -> defns.enotempty
  | ENOTRECOVERABLE -> defns.enotrecoverable
  | ENOTSOCK -> defns.enotsock
  | ENOTSUP -> defns.enotsup
  | ENOTTY -> defns.enotty
  | ENXIO -> defns.enxio
  | EOPNOTSUPP -> defns.eopnotsupp
  | EOVERFLOW -> defns.eoverflow
  | EOWNERDEAD -> defns.eownerdead
  | EPERM -> defns.eperm
  | EPFNOSUPPORT -> defns.epfnosupport
  | EPIPE -> defns.epipe
  | EPROTO -> defns.eproto
  | EPROTONOSUPPORT -> defns.eprotonosupport
  | EPROTOTYPE -> defns.eprototype
  | ERANGE -> defns.erange
  | EROFS -> defns.erofs
  | ESHUTDOWN -> defns.eshutdown
  | ESOCKTNOSUPPORT -> defns.esocktnosupport
  | ESPIPE -> defns.espipe
  | ESRCH -> defns.esrch
  | ESTALE -> defns.estale
  | ETIMEDOUT -> defns.etimedout
  | ETOOMANYREFS -> defns.etoomanyrefs
  | ETXTBSY -> defns.etxtbsy
  | EWOULDBLOCK -> defns.ewouldblock
  | EXDEV -> defns.exdev
  | EUNKNOWNERR x   -> Some x

let with_code defns symbol code = match symbol with
  | E2BIG -> { defns with e2big = code }
  | EACCES -> { defns with eacces = code }
  | EADDRINUSE -> { defns with eaddrinuse = code }
  | EADDRNOTAVAIL -> { defns with eaddrnotavail = code }
  | EAFNOSUPPORT -> { defns with eafnosupport = code }
  | EAGAIN -> { defns with eagain = code }
  | EALREADY -> { defns with ealready = code }
  | EBADF -> { defns with ebadf = code }
  | EBADMSG -> { defns with ebadmsg = code }
  | EBUSY -> { defns with ebusy = code }
  | ECANCELED -> { defns with ecanceled = code }
  | ECHILD -> { defns with echild = code }
  | ECONNABORTED -> { defns with econnaborted = code }
  | ECONNREFUSED -> { defns with econnrefused = code }
  | ECONNRESET -> { defns with econnreset = code }
  | EDEADLK -> { defns with edeadlk = code }
  | EDESTADDRREQ -> { defns with edestaddrreq = code }
  | EDOM -> { defns with edom = code }
  | EDQUOT -> { defns with edquot = code }
  | EEXIST -> { defns with eexist = code }
  | EFAULT -> { defns with efault = code }
  | EFBIG -> { defns with efbig = code }
  | EHOSTDOWN -> { defns with ehostdown = code }
  | EHOSTUNREACH -> { defns with ehostunreach = code }
  | EIDRM -> { defns with eidrm = code }
  | EILSEQ -> { defns with eilseq = code }
  | EINPROGRESS -> { defns with einprogress = code }
  | EINTR -> { defns with eintr = code }
  | EINVAL -> { defns with einval = code }
  | EIO -> { defns with eio = code }
  | EISCONN -> { defns with eisconn = code }
  | EISDIR -> { defns with eisdir = code }
  | ELOOP -> { defns with eloop = code }
  | EMFILE -> { defns with emfile = code }
  | EMLINK -> { defns with emlink = code }
  | EMSGSIZE -> { defns with emsgsize = code }
  | EMULTIHOP -> { defns with emultihop = code }
  | ENAMETOOLONG -> { defns with enametoolong = code }
  | ENETDOWN -> { defns with enetdown = code }
  | ENETRESET -> { defns with enetreset = code }
  | ENETUNREACH -> { defns with enetunreach = code }
  | ENFILE -> { defns with enfile = code }
  | ENOBUFS -> { defns with enobufs = code }
  | ENODEV -> { defns with enodev = code }
  | ENOENT -> { defns with enoent = code }
  | ENOEXEC -> { defns with enoexec = code }
  | ENOLCK -> { defns with enolck = code }
  | ENOLINK -> { defns with enolink = code }
  | ENOMEM -> { defns with enomem = code }
  | ENOMSG -> { defns with enomsg = code }
  | ENOPROTOOPT -> { defns with enoprotoopt = code }
  | ENOSPC -> { defns with enospc = code }
  | ENOSYS -> { defns with enosys = code }
  | ENOTCONN -> { defns with enotconn = code }
  | ENOTDIR -> { defns with enotdir = code }
  | ENOTEMPTY -> { defns with enotempty = code }
  | ENOTRECOVERABLE -> { defns with enotrecoverable = code }
  | ENOTSOCK -> { defns with enotsock = code }
  | ENOTSUP -> { defns with enotsup = code }
  | ENOTTY -> { defns with enotty = code }
  | ENXIO -> { defns with enxio = code }
  | EOPNOTSUPP -> { defns with eopnotsupp = code }
  | EOVERFLOW -> { defns with eoverflow = code }
  | EOWNERDEAD -> { defns with eownerdead = code }
  | EPERM -> { defns with eperm = code }
  | EPFNOSUPPORT -> { defns with epfnosupport = code }
  | EPIPE -> { defns with epipe = code }
  | EPROTO -> { defns with eproto = code }
  | EPROTONOSUPPORT -> { defns with eprotonosupport = code }
  | EPROTOTYPE -> { defns with eprototype = code }
  | ERANGE -> { defns with erange = code }
  | EROFS -> { defns with erofs = code }
  | ESHUTDOWN -> { defns with eshutdown = code }
  | ESOCKTNOSUPPORT -> { defns with esocktnosupport = code }
  | ESPIPE -> { defns with espipe = code }
  | ESRCH -> { defns with esrch = code }
  | ESTALE -> { defns with estale = code }
  | ETIMEDOUT -> { defns with etimedout = code }
  | ETOOMANYREFS -> { defns with etoomanyrefs = code }
  | ETXTBSY -> { defns with etxtbsy = code }
  | EWOULDBLOCK -> { defns with ewouldblock = code }
  | EXDEV -> { defns with exdev = code }
  | EUNKNOWNERR _ -> defns

let of_code ~host code =
  let (_,index) = host in
  try Hashtbl.find_all index code
  with Not_found -> [] (* [EUNKNOWNERR code] ? *)

let to_string = function
  | E2BIG -> "E2BIG"
  | EACCES -> "EACCES"
  | EADDRINUSE -> "EADDRINUSE"
  | EADDRNOTAVAIL -> "EADDRNOTAVAIL"
  | EAFNOSUPPORT -> "EAFNOSUPPORT"
  | EAGAIN -> "EAGAIN"
  | EALREADY -> "EALREADY"
  | EBADF -> "EBADF"
  | EBADMSG -> "EBADMSG"
  | EBUSY -> "EBUSY"
  | ECANCELED -> "ECANCELED"
  | ECHILD -> "ECHILD"
  | ECONNABORTED -> "ECONNABORTED"
  | ECONNREFUSED -> "ECONNREFUSED"
  | ECONNRESET -> "ECONNRESET"
  | EDEADLK -> "EDEADLK"
  | EDESTADDRREQ -> "EDESTADDRREQ"
  | EDOM -> "EDOM"
  | EDQUOT -> "EDQUOT"
  | EEXIST -> "EEXIST"
  | EFAULT -> "EFAULT"
  | EFBIG -> "EFBIG"
  | EHOSTDOWN -> "EHOSTDOWN"
  | EHOSTUNREACH -> "EHOSTUNREACH"
  | EIDRM -> "EIDRM"
  | EILSEQ -> "EILSEQ"
  | EINPROGRESS -> "EINPROGRESS"
  | EINTR -> "EINTR"
  | EINVAL -> "EINVAL"
  | EIO -> "EIO"
  | EISCONN -> "EISCONN"
  | EISDIR -> "EISDIR"
  | ELOOP -> "ELOOP"
  | EMFILE -> "EMFILE"
  | EMLINK -> "EMLINK"
  | EMSGSIZE -> "EMSGSIZE"
  | EMULTIHOP -> "EMULTIHOP"
  | ENAMETOOLONG -> "ENAMETOOLONG"
  | ENETDOWN -> "ENETDOWN"
  | ENETRESET -> "ENETRESET"
  | ENETUNREACH -> "ENETUNREACH"
  | ENFILE -> "ENFILE"
  | ENOBUFS -> "ENOBUFS"
  | ENODEV -> "ENODEV"
  | ENOENT -> "ENOENT"
  | ENOEXEC -> "ENOEXEC"
  | ENOLCK -> "ENOLCK"
  | ENOLINK -> "ENOLINK"
  | ENOMEM -> "ENOMEM"
  | ENOMSG -> "ENOMSG"
  | ENOPROTOOPT -> "ENOPROTOOPT"
  | ENOSPC -> "ENOSPC"
  | ENOSYS -> "ENOSYS"
  | ENOTCONN -> "ENOTCONN"
  | ENOTDIR -> "ENOTDIR"
  | ENOTEMPTY -> "ENOTEMPTY"
  | ENOTRECOVERABLE -> "ENOTRECOVERABLE"
  | ENOTSOCK -> "ENOTSOCK"
  | ENOTSUP -> "ENOTSUP"
  | ENOTTY -> "ENOTTY"
  | ENXIO -> "ENXIO"
  | EOPNOTSUPP -> "EOPNOTSUPP"
  | EOVERFLOW -> "EOVERFLOW"
  | EOWNERDEAD -> "EOWNERDEAD"
  | EPERM -> "EPERM"
  | EPFNOSUPPORT -> "EPFNOSUPPORT"
  | EPIPE -> "EPIPE"
  | EPROTO -> "EPROTO"
  | EPROTONOSUPPORT -> "EPROTONOSUPPORT"
  | EPROTOTYPE -> "EPROTOTYPE"
  | ERANGE -> "ERANGE"
  | EROFS -> "EROFS"
  | ESHUTDOWN -> "ESHUTDOWN"
  | ESOCKTNOSUPPORT -> "ESOCKTNOSUPPORT"
  | ESPIPE -> "ESPIPE"
  | ESRCH -> "ESRCH"
  | ESTALE -> "ESTALE"
  | ETIMEDOUT -> "ETIMEDOUT"
  | ETOOMANYREFS -> "ETOOMANYREFS"
  | ETXTBSY -> "ETXTBSY"
  | EWOULDBLOCK -> "EWOULDBLOCK"
  | EXDEV -> "EXDEV"
  | EUNKNOWNERR x   -> "EUNKNOWNERR_"^(string_of_int x)

let of_string = function
  | "E2BIG" -> Some E2BIG
  | "EACCES" -> Some EACCES
  | "EADDRINUSE" -> Some EADDRINUSE
  | "EADDRNOTAVAIL" -> Some EADDRNOTAVAIL
  | "EAFNOSUPPORT" -> Some EAFNOSUPPORT
  | "EAGAIN" -> Some EAGAIN
  | "EALREADY" -> Some EALREADY
  | "EBADF" -> Some EBADF
  | "EBADMSG" -> Some EBADMSG
  | "EBUSY" -> Some EBUSY
  | "ECANCELED" -> Some ECANCELED
  | "ECHILD" -> Some ECHILD
  | "ECONNABORTED" -> Some ECONNABORTED
  | "ECONNREFUSED" -> Some ECONNREFUSED
  | "ECONNRESET" -> Some ECONNRESET
  | "EDEADLK" -> Some EDEADLK
  | "EDESTADDRREQ" -> Some EDESTADDRREQ
  | "EDOM" -> Some EDOM
  | "EDQUOT" -> Some EDQUOT
  | "EEXIST" -> Some EEXIST
  | "EFAULT" -> Some EFAULT
  | "EFBIG" -> Some EFBIG
  | "EHOSTDOWN" -> Some EHOSTDOWN
  | "EHOSTUNREACH" -> Some EHOSTUNREACH
  | "EIDRM" -> Some EIDRM
  | "EILSEQ" -> Some EILSEQ
  | "EINPROGRESS" -> Some EINPROGRESS
  | "EINTR" -> Some EINTR
  | "EINVAL" -> Some EINVAL
  | "EIO" -> Some EIO
  | "EISCONN" -> Some EISCONN
  | "EISDIR" -> Some EISDIR
  | "ELOOP" -> Some ELOOP
  | "EMFILE" -> Some EMFILE
  | "EMLINK" -> Some EMLINK
  | "EMSGSIZE" -> Some EMSGSIZE
  | "EMULTIHOP" -> Some EMULTIHOP
  | "ENAMETOOLONG" -> Some ENAMETOOLONG
  | "ENETDOWN" -> Some ENETDOWN
  | "ENETRESET" -> Some ENETRESET
  | "ENETUNREACH" -> Some ENETUNREACH
  | "ENFILE" -> Some ENFILE
  | "ENOBUFS" -> Some ENOBUFS
  | "ENODEV" -> Some ENODEV
  | "ENOENT" -> Some ENOENT
  | "ENOEXEC" -> Some ENOEXEC
  | "ENOLCK" -> Some ENOLCK
  | "ENOLINK" -> Some ENOLINK
  | "ENOMEM" -> Some ENOMEM
  | "ENOMSG" -> Some ENOMSG
  | "ENOPROTOOPT" -> Some ENOPROTOOPT
  | "ENOSPC" -> Some ENOSPC
  | "ENOSYS" -> Some ENOSYS
  | "ENOTCONN" -> Some ENOTCONN
  | "ENOTDIR" -> Some ENOTDIR
  | "ENOTEMPTY" -> Some ENOTEMPTY
  | "ENOTRECOVERABLE" -> Some ENOTRECOVERABLE
  | "ENOTSOCK" -> Some ENOTSOCK
  | "ENOTSUP" -> Some ENOTSUP
  | "ENOTTY" -> Some ENOTTY
  | "ENXIO" -> Some ENXIO
  | "EOPNOTSUPP" -> Some EOPNOTSUPP
  | "EOVERFLOW" -> Some EOVERFLOW
  | "EOWNERDEAD" -> Some EOWNERDEAD
  | "EPERM" -> Some EPERM
  | "EPFNOSUPPORT" -> Some EPFNOSUPPORT
  | "EPIPE" -> Some EPIPE
  | "EPROTO" -> Some EPROTO
  | "EPROTONOSUPPORT" -> Some EPROTONOSUPPORT
  | "EPROTOTYPE" -> Some EPROTOTYPE
  | "ERANGE" -> Some ERANGE
  | "EROFS" -> Some EROFS
  | "ESHUTDOWN" -> Some ESHUTDOWN
  | "ESOCKTNOSUPPORT" -> Some ESOCKTNOSUPPORT
  | "ESPIPE" -> Some ESPIPE
  | "ESRCH" -> Some ESRCH
  | "ESTALE" -> Some ESTALE
  | "ETIMEDOUT" -> Some ETIMEDOUT
  | "ETOOMANYREFS" -> Some ETOOMANYREFS
  | "ETXTBSY" -> Some ETXTBSY
  | "EWOULDBLOCK" -> Some EWOULDBLOCK
  | "EXDEV" -> Some EXDEV
  | _ -> None

let iter_defns defns f_exist f_missing =
  (match defns.e2big with
   | Some x -> f_exist x E2BIG | None -> f_missing E2BIG);
  (match defns.eacces with
   | Some x -> f_exist x EACCES | None -> f_missing EACCES);
  (match defns.eaddrinuse with
   | Some x -> f_exist x EADDRINUSE | None -> f_missing EADDRINUSE);
  (match defns.eaddrnotavail with
   | Some x -> f_exist x EADDRNOTAVAIL | None -> f_missing EADDRNOTAVAIL);
  (match defns.eafnosupport with
   | Some x -> f_exist x EAFNOSUPPORT | None -> f_missing EAFNOSUPPORT);
  (match defns.eagain with
   | Some x -> f_exist x EAGAIN | None -> f_missing EAGAIN);
  (match defns.ealready with
   | Some x -> f_exist x EALREADY | None -> f_missing EALREADY);
  (match defns.ebadf with
   | Some x -> f_exist x EBADF | None -> f_missing EBADF);
  (match defns.ebadmsg with
   | Some x -> f_exist x EBADMSG | None -> f_missing EBADMSG);
  (match defns.ebusy with
   | Some x -> f_exist x EBUSY | None -> f_missing EBUSY);
  (match defns.ecanceled with
   | Some x -> f_exist x ECANCELED | None -> f_missing ECANCELED);
  (match defns.echild with
   | Some x -> f_exist x ECHILD | None -> f_missing ECHILD);
  (match defns.econnaborted with
   | Some x -> f_exist x ECONNABORTED | None -> f_missing ECONNABORTED);
  (match defns.econnrefused with
   | Some x -> f_exist x ECONNREFUSED | None -> f_missing ECONNREFUSED);
  (match defns.econnreset with
   | Some x -> f_exist x ECONNRESET | None -> f_missing ECONNRESET);
  (match defns.edeadlk with
   | Some x -> f_exist x EDEADLK | None -> f_missing EDEADLK);
  (match defns.edestaddrreq with
   | Some x -> f_exist x EDESTADDRREQ | None -> f_missing EDESTADDRREQ);
  (match defns.edom with
   | Some x -> f_exist x EDOM | None -> f_missing EDOM);
  (match defns.edquot with
   | Some x -> f_exist x EDQUOT | None -> f_missing EDQUOT);
  (match defns.eexist with
   | Some x -> f_exist x EEXIST | None -> f_missing EEXIST);
  (match defns.efault with
   | Some x -> f_exist x EFAULT | None -> f_missing EFAULT);
  (match defns.efbig with
   | Some x -> f_exist x EFBIG | None -> f_missing EFBIG);
  (match defns.ehostdown with
   | Some x -> f_exist x EHOSTDOWN | None -> f_missing EHOSTDOWN);
  (match defns.ehostunreach with
   | Some x -> f_exist x EHOSTUNREACH | None -> f_missing EHOSTUNREACH);
  (match defns.eidrm with
   | Some x -> f_exist x EIDRM | None -> f_missing EIDRM);
  (match defns.eilseq with
   | Some x -> f_exist x EILSEQ | None -> f_missing EILSEQ);
  (match defns.einprogress with
   | Some x -> f_exist x EINPROGRESS | None -> f_missing EINPROGRESS);
  (match defns.eintr with
   | Some x -> f_exist x EINTR | None -> f_missing EINTR);
  (match defns.einval with
   | Some x -> f_exist x EINVAL | None -> f_missing EINVAL);
  (match defns.eio with
   | Some x -> f_exist x EIO | None -> f_missing EIO);
  (match defns.eisconn with
   | Some x -> f_exist x EISCONN | None -> f_missing EISCONN);
  (match defns.eisdir with
   | Some x -> f_exist x EISDIR | None -> f_missing EISDIR);
  (match defns.eloop with
   | Some x -> f_exist x ELOOP | None -> f_missing ELOOP);
  (match defns.emfile with
   | Some x -> f_exist x EMFILE | None -> f_missing EMFILE);
  (match defns.emlink with
   | Some x -> f_exist x EMLINK | None -> f_missing EMLINK);
  (match defns.emsgsize with
   | Some x -> f_exist x EMSGSIZE | None -> f_missing EMSGSIZE);
  (match defns.emultihop with
   | Some x -> f_exist x EMULTIHOP | None -> f_missing EMULTIHOP);
  (match defns.enametoolong with
   | Some x -> f_exist x ENAMETOOLONG | None -> f_missing ENAMETOOLONG);
  (match defns.enetdown with
   | Some x -> f_exist x ENETDOWN | None -> f_missing ENETDOWN);
  (match defns.enetreset with
   | Some x -> f_exist x ENETRESET | None -> f_missing ENETRESET);
  (match defns.enetunreach with
   | Some x -> f_exist x ENETUNREACH | None -> f_missing ENETUNREACH);
  (match defns.enfile with
   | Some x -> f_exist x ENFILE | None -> f_missing ENFILE);
  (match defns.enobufs with
   | Some x -> f_exist x ENOBUFS | None -> f_missing ENOBUFS);
  (match defns.enodev with
   | Some x -> f_exist x ENODEV | None -> f_missing ENODEV);
  (match defns.enoent with
   | Some x -> f_exist x ENOENT | None -> f_missing ENOENT);
  (match defns.enoexec with
   | Some x -> f_exist x ENOEXEC | None -> f_missing ENOEXEC);
  (match defns.enolck with
   | Some x -> f_exist x ENOLCK | None -> f_missing ENOLCK);
  (match defns.enolink with
   | Some x -> f_exist x ENOLINK | None -> f_missing ENOLINK);
  (match defns.enomem with
   | Some x -> f_exist x ENOMEM | None -> f_missing ENOMEM);
  (match defns.enomsg with
   | Some x -> f_exist x ENOMSG | None -> f_missing ENOMSG);
  (match defns.enoprotoopt with
   | Some x -> f_exist x ENOPROTOOPT | None -> f_missing ENOPROTOOPT);
  (match defns.enospc with
   | Some x -> f_exist x ENOSPC | None -> f_missing ENOSPC);
  (match defns.enosys with
   | Some x -> f_exist x ENOSYS | None -> f_missing ENOSYS);
  (match defns.enotconn with
   | Some x -> f_exist x ENOTCONN | None -> f_missing ENOTCONN);
  (match defns.enotdir with
   | Some x -> f_exist x ENOTDIR | None -> f_missing ENOTDIR);
  (match defns.enotempty with
   | Some x -> f_exist x ENOTEMPTY | None -> f_missing ENOTEMPTY);
  (match defns.enotrecoverable with
   | Some x -> f_exist x ENOTRECOVERABLE | None -> f_missing ENOTRECOVERABLE);
  (match defns.enotsock with
   | Some x -> f_exist x ENOTSOCK | None -> f_missing ENOTSOCK);
  (match defns.enotsup with
   | Some x -> f_exist x ENOTSUP | None -> f_missing ENOTSUP);
  (match defns.enotty with
   | Some x -> f_exist x ENOTTY | None -> f_missing ENOTTY);
  (match defns.enxio with
   | Some x -> f_exist x ENXIO | None -> f_missing ENXIO);
  (match defns.eopnotsupp with
   | Some x -> f_exist x EOPNOTSUPP | None -> f_missing EOPNOTSUPP);
  (match defns.eoverflow with
   | Some x -> f_exist x EOVERFLOW | None -> f_missing EOVERFLOW);
  (match defns.eownerdead with
   | Some x -> f_exist x EOWNERDEAD | None -> f_missing EOWNERDEAD);
  (match defns.eperm with
   | Some x -> f_exist x EPERM | None -> f_missing EPERM);
  (match defns.epfnosupport with
   | Some x -> f_exist x EPFNOSUPPORT | None -> f_missing EPFNOSUPPORT);
  (match defns.epipe with
   | Some x -> f_exist x EPIPE | None -> f_missing EPIPE);
  (match defns.eproto with
   | Some x -> f_exist x EPROTO | None -> f_missing EPROTO);
  (match defns.eprotonosupport with
   | Some x -> f_exist x EPROTONOSUPPORT | None -> f_missing EPROTONOSUPPORT);
  (match defns.eprototype with
   | Some x -> f_exist x EPROTOTYPE | None -> f_missing EPROTOTYPE);
  (match defns.erange with
   | Some x -> f_exist x ERANGE | None -> f_missing ERANGE);
  (match defns.erofs with
   | Some x -> f_exist x EROFS | None -> f_missing EROFS);
  (match defns.eshutdown with
   | Some x -> f_exist x ESHUTDOWN | None -> f_missing ESHUTDOWN);
  (match defns.esocktnosupport with
   | Some x -> f_exist x ESOCKTNOSUPPORT | None -> f_missing ESOCKTNOSUPPORT);
  (match defns.espipe with
   | Some x -> f_exist x ESPIPE | None -> f_missing ESPIPE);
  (match defns.esrch with
   | Some x -> f_exist x ESRCH | None -> f_missing ESRCH);
  (match defns.estale with
   | Some x -> f_exist x ESTALE | None -> f_missing ESTALE);
  (match defns.etimedout with
   | Some x -> f_exist x ETIMEDOUT | None -> f_missing ETIMEDOUT);
  (match defns.etoomanyrefs with
   | Some x -> f_exist x ETOOMANYREFS | None -> f_missing ETOOMANYREFS);
  (match defns.etxtbsy with
   | Some x -> f_exist x ETXTBSY | None -> f_missing ETXTBSY);
  (match defns.ewouldblock with
   | Some x -> f_exist x EWOULDBLOCK | None -> f_missing EWOULDBLOCK);
  (match defns.exdev with
   | Some x -> f_exist x EXDEV | None -> f_missing EXDEV)

module Host = struct
  type t = defns * index

  let index_of_defns defns =
    let h = Hashtbl.create 100 in
    iter_defns defns (Hashtbl.add h) (fun _ -> ());
    h

  let of_defns defns = (defns, index_of_defns defns)

  let to_defns (defns, _) = defns

end

let string_of_defns defns =
  let buf = Buffer.create 1024 in
  iter_defns defns
    (fun code symbol ->
       Buffer.add_string buf (Printf.sprintf "%s\t%d\n" (to_string symbol) code)
    )
    (fun symbol ->
       Buffer.add_string buf (Printf.sprintf "%s\t\n" (to_string symbol))
    );
  Buffer.contents buf

let defns_of_string s =
  let rec read_lines defns s =
    try
      let symbol, code, off = Scanf.sscanf s "%s\t%s\n" (fun symbol_s code_s ->
        of_string symbol_s,
        (if code_s = "" then None else Some (int_of_string code_s)),
        String.(length symbol_s + 1 + length code_s + 1)
      ) in
      let defns = match symbol with
        | Some symbol -> with_code defns symbol code
        | None -> defns
      in
      read_lines defns String.(sub s off (length s - off))
    with End_of_file -> defns
  in
  read_lines empty_defns s

let check_errno fn =
  try Result.Ok (fn ())
  with Error e -> Result.Error e

let string_of_error = function
 | Error { errno; call; label } ->
   Some (Printf.sprintf "{ errno = [%s]; call = %s; label = %s }"
           (String.concat "; " (List.map to_string errno))
           call label)
 | _ -> None

let () = Printexc.register_printer string_of_error
