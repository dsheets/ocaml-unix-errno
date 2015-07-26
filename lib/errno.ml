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
  | ENODATA
  | ENODEV
  | ENOENT
  | ENOEXEC
  | ENOLCK
  | ENOLINK
  | ENOMEM
  | ENOMSG
  | ENOPROTOOPT
  | ENOSPC
  | ENOSR
  | ENOSTR
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
  | ETIME
  | ETIMEDOUT
  | ETOOMANYREFS (* Linux: Too many references: cannot splice *)
  | ETXTBSY
  | EWOULDBLOCK
  | EXDEV
  | EUNKNOWNERR of int

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
  enodata : int option;
  enodev : int option;
  enoent : int option;
  enoexec : int option;
  enolck : int option;
  enolink : int option;
  enomem : int option;
  enomsg : int option;
  enoprotoopt : int option;
  enospc : int option;
  enosr : int option;
  enostr : int option;
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
  etime : int option;
  etimedout : int option;
  etoomanyrefs : int option;
  etxtbsy : int option;
  ewouldblock : int option;
  exdev : int option;
}

type index = (int, t) Hashtbl.t
type host = defns * index

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
  | ENODATA -> defns.enodata
  | ENODEV -> defns.enodev
  | ENOENT -> defns.enoent
  | ENOEXEC -> defns.enoexec
  | ENOLCK -> defns.enolck
  | ENOLINK -> defns.enolink
  | ENOMEM -> defns.enomem
  | ENOMSG -> defns.enomsg
  | ENOPROTOOPT -> defns.enoprotoopt
  | ENOSPC -> defns.enospc
  | ENOSR -> defns.enosr
  | ENOSTR -> defns.enostr
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
  | ETIME -> defns.etime
  | ETIMEDOUT -> defns.etimedout
  | ETOOMANYREFS -> defns.etoomanyrefs
  | ETXTBSY -> defns.etxtbsy
  | EWOULDBLOCK -> defns.ewouldblock
  | EXDEV -> defns.exdev
  | EUNKNOWNERR x   -> Some x

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
  | ENODATA -> "ENODATA"
  | ENODEV -> "ENODEV"
  | ENOENT -> "ENOENT"
  | ENOEXEC -> "ENOEXEC"
  | ENOLCK -> "ENOLCK"
  | ENOLINK -> "ENOLINK"
  | ENOMEM -> "ENOMEM"
  | ENOMSG -> "ENOMSG"
  | ENOPROTOOPT -> "ENOPROTOOPT"
  | ENOSPC -> "ENOSPC"
  | ENOSR -> "ENOSR"
  | ENOSTR -> "ENOSTR"
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
  | ETIME -> "ETIME"
  | ETIMEDOUT -> "ETIMEDOUT"
  | ETOOMANYREFS -> "ETOOMANYREFS"
  | ETXTBSY -> "ETXTBSY"
  | EWOULDBLOCK -> "EWOULDBLOCK"
  | EXDEV -> "EXDEV"
  | EUNKNOWNERR x   -> "EUNKNOWNERR_"^(string_of_int x)

let index_of_defns defns =
  let open Hashtbl in
  let h = create 100 in
  (match defns.e2big with
  | Some x -> add h x E2BIG | None -> ());
  (match defns.e2big with
   | Some x -> add h x E2BIG | None -> ());
  (match defns.eacces with
   | Some x -> add h x EACCES | None -> ());
  (match defns.eaddrinuse with
   | Some x -> add h x EADDRINUSE | None -> ());
  (match defns.eaddrnotavail with
   | Some x -> add h x EADDRNOTAVAIL | None -> ());
  (match defns.eafnosupport with
   | Some x -> add h x EAFNOSUPPORT | None -> ());
  (match defns.eagain with
   | Some x -> add h x EAGAIN | None -> ());
  (match defns.ealready with
   | Some x -> add h x EALREADY | None -> ());
  (match defns.ebadf with
   | Some x -> add h x EBADF | None -> ());
  (match defns.ebadmsg with
   | Some x -> add h x EBADMSG | None -> ());
  (match defns.ebusy with
   | Some x -> add h x EBUSY | None -> ());
  (match defns.ecanceled with
   | Some x -> add h x ECANCELED | None -> ());
  (match defns.echild with
   | Some x -> add h x ECHILD | None -> ());
  (match defns.econnaborted with
   | Some x -> add h x ECONNABORTED | None -> ());
  (match defns.econnrefused with
   | Some x -> add h x ECONNREFUSED | None -> ());
  (match defns.econnreset with
   | Some x -> add h x ECONNRESET | None -> ());
  (match defns.edeadlk with
   | Some x -> add h x EDEADLK | None -> ());
  (match defns.edestaddrreq with
   | Some x -> add h x EDESTADDRREQ | None -> ());
  (match defns.edom with
   | Some x -> add h x EDOM | None -> ());
  (match defns.edquot with
   | Some x -> add h x EDQUOT | None -> ());
  (match defns.eexist with
   | Some x -> add h x EEXIST | None -> ());
  (match defns.efault with
   | Some x -> add h x EFAULT | None -> ());
  (match defns.efbig with
   | Some x -> add h x EFBIG | None -> ());
  (match defns.ehostdown with
   | Some x -> add h x EHOSTDOWN | None -> ());
  (match defns.ehostunreach with
   | Some x -> add h x EHOSTUNREACH | None -> ());
  (match defns.eidrm with
   | Some x -> add h x EIDRM | None -> ());
  (match defns.eilseq with
   | Some x -> add h x EILSEQ | None -> ());
  (match defns.einprogress with
   | Some x -> add h x EINPROGRESS | None -> ());
  (match defns.eintr with
   | Some x -> add h x EINTR | None -> ());
  (match defns.einval with
   | Some x -> add h x EINVAL | None -> ());
  (match defns.eio with
   | Some x -> add h x EIO | None -> ());
  (match defns.eisconn with
   | Some x -> add h x EISCONN | None -> ());
  (match defns.eisdir with
   | Some x -> add h x EISDIR | None -> ());
  (match defns.eloop with
   | Some x -> add h x ELOOP | None -> ());
  (match defns.emfile with
   | Some x -> add h x EMFILE | None -> ());
  (match defns.emlink with
   | Some x -> add h x EMLINK | None -> ());
  (match defns.emsgsize with
   | Some x -> add h x EMSGSIZE | None -> ());
  (match defns.emultihop with
   | Some x -> add h x EMULTIHOP | None -> ());
  (match defns.enametoolong with
   | Some x -> add h x ENAMETOOLONG | None -> ());
  (match defns.enetdown with
   | Some x -> add h x ENETDOWN | None -> ());
  (match defns.enetreset with
   | Some x -> add h x ENETRESET | None -> ());
  (match defns.enetunreach with
   | Some x -> add h x ENETUNREACH | None -> ());
  (match defns.enfile with
   | Some x -> add h x ENFILE | None -> ());
  (match defns.enobufs with
   | Some x -> add h x ENOBUFS | None -> ());
  (match defns.enodata with
   | Some x -> add h x ENODATA | None -> ());
  (match defns.enodev with
   | Some x -> add h x ENODEV | None -> ());
  (match defns.enoent with
   | Some x -> add h x ENOENT | None -> ());
  (match defns.enoexec with
   | Some x -> add h x ENOEXEC | None -> ());
  (match defns.enolck with
   | Some x -> add h x ENOLCK | None -> ());
  (match defns.enolink with
   | Some x -> add h x ENOLINK | None -> ());
  (match defns.enomem with
   | Some x -> add h x ENOMEM | None -> ());
  (match defns.enomsg with
   | Some x -> add h x ENOMSG | None -> ());
  (match defns.enoprotoopt with
   | Some x -> add h x ENOPROTOOPT | None -> ());
  (match defns.enospc with
   | Some x -> add h x ENOSPC | None -> ());
  (match defns.enosr with
   | Some x -> add h x ENOSR | None -> ());
  (match defns.enostr with
   | Some x -> add h x ENOSTR | None -> ());
  (match defns.enosys with
   | Some x -> add h x ENOSYS | None -> ());
  (match defns.enotconn with
   | Some x -> add h x ENOTCONN | None -> ());
  (match defns.enotdir with
   | Some x -> add h x ENOTDIR | None -> ());
  (match defns.enotempty with
   | Some x -> add h x ENOTEMPTY | None -> ());
  (match defns.enotrecoverable with
   | Some x -> add h x ENOTRECOVERABLE | None -> ());
  (match defns.enotsock with
   | Some x -> add h x ENOTSOCK | None -> ());
  (match defns.enotsup with
   | Some x -> add h x ENOTSUP | None -> ());
  (match defns.enotty with
   | Some x -> add h x ENOTTY | None -> ());
  (match defns.enxio with
   | Some x -> add h x ENXIO | None -> ());
  (match defns.eopnotsupp with
   | Some x -> add h x EOPNOTSUPP | None -> ());
  (match defns.eoverflow with
   | Some x -> add h x EOVERFLOW | None -> ());
  (match defns.eownerdead with
   | Some x -> add h x EOWNERDEAD | None -> ());
  (match defns.eperm with
   | Some x -> add h x EPERM | None -> ());
  (match defns.epfnosupport with
   | Some x -> add h x EPFNOSUPPORT | None -> ());
  (match defns.epipe with
   | Some x -> add h x EPIPE | None -> ());
  (match defns.eproto with
   | Some x -> add h x EPROTO | None -> ());
  (match defns.eprotonosupport with
   | Some x -> add h x EPROTONOSUPPORT | None -> ());
  (match defns.eprototype with
   | Some x -> add h x EPROTOTYPE | None -> ());
  (match defns.erange with
   | Some x -> add h x ERANGE | None -> ());
  (match defns.erofs with
   | Some x -> add h x EROFS | None -> ());
  (match defns.eshutdown with
   | Some x -> add h x ESHUTDOWN | None -> ());
  (match defns.esocktnosupport with
   | Some x -> add h x ESOCKTNOSUPPORT | None -> ());
  (match defns.espipe with
   | Some x -> add h x ESPIPE | None -> ());
  (match defns.esrch with
   | Some x -> add h x ESRCH | None -> ());
  (match defns.estale with
   | Some x -> add h x ESTALE | None -> ());
  (match defns.etime with
   | Some x -> add h x ETIME | None -> ());
  (match defns.etimedout with
   | Some x -> add h x ETIMEDOUT | None -> ());
  (match defns.etoomanyrefs with
   | Some x -> add h x ETOOMANYREFS | None -> ());
  (match defns.etxtbsy with
   | Some x -> add h x ETXTBSY | None -> ());
  (match defns.ewouldblock with
   | Some x -> add h x EWOULDBLOCK | None -> ());
  (match defns.exdev with
   | Some x -> add h x EXDEV | None -> ());
  h

let host_of_defns defns = (defns, index_of_defns defns)
