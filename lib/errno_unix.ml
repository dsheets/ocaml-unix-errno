(*
 * Copyright (c) 2014 David Sheets <sheets@alum.mit.edu>
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

type error = {
  errno : Errno.t list;
  call  : string;
  label : string;
}

exception Error of error

module Type = Unix_errno_types.C(Unix_errno_types_detected)
module C = Unix_errno_bindings.C(Unix_errno_generated)

let host =
  let option i = Some i in
  let defns = Errno.(Type.({
    e2big = option e2big;
    eacces = option eacces;
    eaddrinuse = option eaddrinuse;
    eaddrnotavail = option eaddrnotavail;
    eafnosupport = option eafnosupport;
    eagain = option eagain;
    ealready = option ealready;
    ebadf = option ebadf;
    ebadmsg = option ebadmsg;
    ebusy = option ebusy;
    ecanceled = option ecanceled;
    echild = option echild;
    econnaborted = option econnaborted;
    econnrefused = option econnrefused;
    econnreset = option econnreset;
    edeadlk = option edeadlk;
    edestaddrreq = option edestaddrreq;
    edom = option edom;
    edquot = option edquot;
    eexist = option eexist;
    efault = option efault;
    efbig = option efbig;
    ehostdown = option ehostdown;
    ehostunreach = option ehostunreach;
    eidrm = option eidrm;
    eilseq = option eilseq;
    einprogress = option einprogress;
    eintr = option eintr;
    einval = option einval;
    eio = option eio;
    eisconn = option eisconn;
    eisdir = option eisdir;
    eloop = option eloop;
    emfile = option emfile;
    emlink = option emlink;
    emsgsize = option emsgsize;
    emultihop = option emultihop;
    enametoolong = option enametoolong;
    enetdown = option enetdown;
    enetreset = option enetreset;
    enetunreach = option enetunreach;
    enfile = option enfile;
    enobufs = option enobufs;
    enodata = option enodata;
    enodev = option enodev;
    enoent = option enoent;
    enoexec = option enoexec;
    enolck = option enolck;
    enolink = option enolink;
    enomem = option enomem;
    enomsg = option enomsg;
    enoprotoopt = option enoprotoopt;
    enospc = option enospc;
    enosr = option enosr;
    enostr = option enostr;
    enosys = option enosys;
    enotconn = option enotconn;
    enotdir = option enotdir;
    enotempty = option enotempty;
    enotrecoverable = option enotrecoverable;
    enotsock = option enotsock;
    enotsup = option enotsup;
    enotty = option enotty;
    enxio = option enxio;
    eopnotsupp = option eopnotsupp;
    eoverflow = option eoverflow;
    eownerdead = option eownerdead;
    eperm = option eperm;
    epfnosupport = option epfnosupport;
    epipe = option epipe;
    eproto = option eproto;
    eprotonosupport = option eprotonosupport;
    eprototype = option eprototype;
    erange = option erange;
    erofs = option erofs;
    eshutdown = option eshutdown;
    esocktnosupport = option esocktnosupport;
    espipe = option espipe;
    esrch = option esrch;
    estale = option estale;
    etime = option etime;
    etimedout = option etimedout;
    etoomanyrefs = option etoomanyrefs;
    etxtbsy = option etxtbsy;
    ewouldblock = option ewouldblock;
    exdev = option exdev;
  })) in
  Errno.host_of_defns defns

let optional_unknown ~host errno = match Errno.to_code ~host errno with
  | Some i -> Some (Unix.EUNKNOWNERR i)
  | None -> None

let to_unix ~host = Errno.(function
  | E2BIG -> Some Unix.E2BIG
  | EACCES -> Some Unix.EACCES
  | EADDRINUSE -> Some Unix.EADDRINUSE
  | EADDRNOTAVAIL -> Some Unix.EADDRNOTAVAIL
  | EAFNOSUPPORT -> Some Unix.EAFNOSUPPORT
  | EAGAIN -> Some Unix.EAGAIN
  | EALREADY -> Some Unix.EALREADY
  | EBADF -> Some Unix.EBADF
  | EBADMSG -> optional_unknown ~host EBADMSG
  | EBUSY -> Some Unix.EBUSY
  | ECANCELED -> optional_unknown ~host ECANCELED
  | ECHILD -> Some Unix.ECHILD
  | ECONNABORTED -> Some Unix.ECONNABORTED
  | ECONNREFUSED -> Some Unix.ECONNREFUSED
  | ECONNRESET -> Some Unix.ECONNRESET
  | EDEADLK -> Some Unix.EDEADLK
  | EDESTADDRREQ -> Some Unix.EDESTADDRREQ
  | EDOM -> Some Unix.EDOM
  | EDQUOT -> optional_unknown ~host EDQUOT
  | EEXIST -> Some Unix.EEXIST
  | EFAULT -> Some Unix.EFAULT
  | EFBIG -> Some Unix.EFBIG
  | EHOSTDOWN -> Some Unix.EHOSTDOWN
  | EHOSTUNREACH -> Some Unix.EHOSTUNREACH
  | EIDRM -> optional_unknown ~host EIDRM
  | EILSEQ -> optional_unknown ~host EILSEQ
  | EINPROGRESS -> Some Unix.EINPROGRESS
  | EINTR -> Some Unix.EINTR
  | EINVAL -> Some Unix.EINVAL
  | EIO -> Some Unix.EIO
  | EISCONN -> Some Unix.EISCONN
  | EISDIR -> Some Unix.EISDIR
  | ELOOP -> Some Unix.ELOOP
  | EMFILE -> Some Unix.EMFILE
  | EMLINK -> Some Unix.EMLINK
  | EMSGSIZE -> Some Unix.EMSGSIZE
  | EMULTIHOP -> optional_unknown ~host EMULTIHOP
  | ENAMETOOLONG -> Some Unix.ENAMETOOLONG
  | ENETDOWN -> Some Unix.ENETDOWN
  | ENETRESET -> Some Unix.ENETRESET
  | ENETUNREACH -> Some Unix.ENETUNREACH
  | ENFILE -> Some Unix.ENFILE
  | ENOBUFS -> Some Unix.ENOBUFS
  | ENODATA -> optional_unknown ~host ENODATA
  | ENODEV -> Some Unix.ENODEV
  | ENOENT -> Some Unix.ENOENT
  | ENOEXEC -> Some Unix.ENOEXEC
  | ENOLCK -> Some Unix.ENOLCK
  | ENOLINK -> optional_unknown ~host ENOLINK
  | ENOMEM -> Some Unix.ENOMEM
  | ENOMSG -> optional_unknown ~host ENOMSG
  | ENOPROTOOPT -> Some Unix.ENOPROTOOPT
  | ENOSPC -> Some Unix.ENOSPC
  | ENOSR -> optional_unknown ~host ENOSR
  | ENOSTR -> optional_unknown ~host ENOSTR
  | ENOSYS -> Some Unix.ENOSYS
  | ENOTCONN -> Some Unix.ENOTCONN
  | ENOTDIR -> Some Unix.ENOTDIR
  | ENOTEMPTY -> Some Unix.ENOTEMPTY
  | ENOTRECOVERABLE -> optional_unknown ~host ENOTRECOVERABLE
  | ENOTSOCK -> Some Unix.ENOTSOCK
  | ENOTSUP -> optional_unknown ~host ENOTSUP
  | ENOTTY -> Some Unix.ENOTTY
  | ENXIO -> Some Unix.ENXIO
  | EOPNOTSUPP -> Some Unix.EOPNOTSUPP
  | EOVERFLOW -> Some Unix.EOVERFLOW
  | EOWNERDEAD -> optional_unknown ~host EOWNERDEAD
  | EPERM -> Some Unix.EPERM
  | EPFNOSUPPORT -> Some Unix.EPFNOSUPPORT
  | EPIPE -> Some Unix.EPIPE
  | EPROTO -> optional_unknown ~host EPROTO
  | EPROTONOSUPPORT -> Some Unix.EPROTONOSUPPORT
  | EPROTOTYPE -> Some Unix.EPROTOTYPE
  | ERANGE -> Some Unix.ERANGE
  | EROFS -> Some Unix.EROFS
  | ESHUTDOWN -> Some Unix.ESHUTDOWN
  | ESOCKTNOSUPPORT -> Some Unix.ESOCKTNOSUPPORT
  | ESPIPE -> Some Unix.ESPIPE
  | ESRCH -> Some Unix.ESRCH
  | ESTALE -> optional_unknown ~host ESTALE
  | ETIME -> optional_unknown ~host ETIME
  | ETIMEDOUT -> Some Unix.ETIMEDOUT
  | ETOOMANYREFS -> Some Unix.ETOOMANYREFS
  | ETXTBSY -> optional_unknown ~host ETXTBSY
  | EWOULDBLOCK -> Some Unix.EWOULDBLOCK
  | EXDEV -> Some Unix.EXDEV
  | EUNKNOWNERR x -> Some (Unix.EUNKNOWNERR x)
)

let raise_on_errno ?(call="") ?(label="") fn =
  C.reset_errno ();
  let r = fn () in
  match C.get_errno () with
  | 0 -> r
  | code -> raise (Error { errno = Errno.of_code ~host code; call; label; })

let check_errno fn =
  try Rresult.Ok (fn ())
  with Error e -> Rresult.Error e
