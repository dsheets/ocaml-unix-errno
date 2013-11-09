type t = Unix.error

external e2big           : unit -> int = "unix_errno_e2big" "noalloc"
external eacces          : unit -> int = "unix_errno_eacces" "noalloc"
external eagain          : unit -> int = "unix_errno_eagain" "noalloc"
external ebadf           : unit -> int = "unix_errno_ebadf" "noalloc"
external ebusy           : unit -> int = "unix_errno_ebusy" "noalloc"
external echild          : unit -> int = "unix_errno_echild" "noalloc"
external edeadlk         : unit -> int = "unix_errno_edeadlk" "noalloc"
external edom            : unit -> int = "unix_errno_edom" "noalloc"
external eexist          : unit -> int = "unix_errno_eexist" "noalloc"
external efault          : unit -> int = "unix_errno_efault" "noalloc"
external efbig           : unit -> int = "unix_errno_efbig" "noalloc"
external eintr           : unit -> int = "unix_errno_eintr" "noalloc"
external einval          : unit -> int = "unix_errno_einval" "noalloc"
external eio             : unit -> int = "unix_errno_eio" "noalloc"
external eisdir          : unit -> int = "unix_errno_eisdir" "noalloc"
external emfile          : unit -> int = "unix_errno_emfile" "noalloc"
external emlink          : unit -> int = "unix_errno_emlink" "noalloc"
external enametoolong    : unit -> int = "unix_errno_enametoolong" "noalloc"
external enfile          : unit -> int = "unix_errno_enfile" "noalloc"
external enodev          : unit -> int = "unix_errno_enodev" "noalloc"
external enoent          : unit -> int = "unix_errno_enoent" "noalloc"
external enoexec         : unit -> int = "unix_errno_enoexec" "noalloc"
external enolck          : unit -> int = "unix_errno_enolck" "noalloc"
external enomem          : unit -> int = "unix_errno_enomem" "noalloc"
external enospc          : unit -> int = "unix_errno_enospc" "noalloc"
external enosys          : unit -> int = "unix_errno_enosys" "noalloc"
external enotdir         : unit -> int = "unix_errno_enotdir" "noalloc"
external enotempty       : unit -> int = "unix_errno_enotempty" "noalloc"
external enotty          : unit -> int = "unix_errno_enotty" "noalloc"
external enxio           : unit -> int = "unix_errno_enxio" "noalloc"
external eperm           : unit -> int = "unix_errno_eperm" "noalloc"
external epipe           : unit -> int = "unix_errno_epipe" "noalloc"
external erange          : unit -> int = "unix_errno_erange" "noalloc"
external erofs           : unit -> int = "unix_errno_erofs" "noalloc"
external espipe          : unit -> int = "unix_errno_espipe" "noalloc"
external esrch           : unit -> int = "unix_errno_esrch" "noalloc"
external exdev           : unit -> int = "unix_errno_exdev" "noalloc"
external ewouldblock     : unit -> int = "unix_errno_ewouldblock" "noalloc"
external einprogress     : unit -> int = "unix_errno_einprogress" "noalloc"
external ealready        : unit -> int = "unix_errno_ealready" "noalloc"
external enotsock        : unit -> int = "unix_errno_enotsock" "noalloc"
external edestaddrreq    : unit -> int = "unix_errno_edestaddrreq" "noalloc"
external emsgsize        : unit -> int = "unix_errno_emsgsize" "noalloc"
external eprototype      : unit -> int = "unix_errno_eprototype" "noalloc"
external enoprotoopt     : unit -> int = "unix_errno_enoprotoopt" "noalloc"
external eprotonosupport : unit -> int = "unix_errno_eprotonosupport" "noalloc"
external esocktnosupport : unit -> int = "unix_errno_esocktnosupport" "noalloc"
external eopnotsupp      : unit -> int = "unix_errno_eopnotsupp" "noalloc"
external epfnosupport    : unit -> int = "unix_errno_epfnosupport" "noalloc"
external eafnosupport    : unit -> int = "unix_errno_eafnosupport" "noalloc"
external eaddrinuse      : unit -> int = "unix_errno_eaddrinuse" "noalloc"
external eaddrnotavail   : unit -> int = "unix_errno_eaddrnotavail" "noalloc"
external enetdown        : unit -> int = "unix_errno_enetdown" "noalloc"
external enetunreach     : unit -> int = "unix_errno_enetunreach" "noalloc"
external enetreset       : unit -> int = "unix_errno_enetreset" "noalloc"
external econnaborted    : unit -> int = "unix_errno_econnaborted" "noalloc"
external econnreset      : unit -> int = "unix_errno_econnreset" "noalloc"
external enobufs         : unit -> int = "unix_errno_enobufs" "noalloc"
external eisconn         : unit -> int = "unix_errno_eisconn" "noalloc"
external enotconn        : unit -> int = "unix_errno_enotconn" "noalloc"
external eshutdown       : unit -> int = "unix_errno_eshutdown" "noalloc"
external etoomanyrefs    : unit -> int = "unix_errno_etoomanyrefs" "noalloc"
external etimedout       : unit -> int = "unix_errno_etimedout" "noalloc"
external econnrefused    : unit -> int = "unix_errno_econnrefused" "noalloc"
external ehostdown       : unit -> int = "unix_errno_ehostdown" "noalloc"
external ehostunreach    : unit -> int = "unix_errno_ehostunreach" "noalloc"
external eloop           : unit -> int = "unix_errno_eloop" "noalloc"
external eoverflow       : unit -> int = "unix_errno_eoverflow" "noalloc"

type defns = {
  e2big           : int option;
  eacces          : int option;
  eagain          : int option;
  ebadf           : int option;
  ebusy           : int option;
  echild          : int option;
  edeadlk         : int option;
  edom            : int option;
  eexist          : int option;
  efault          : int option;
  efbig           : int option;
  eintr           : int option;
  einval          : int option;
  eio             : int option;
  eisdir          : int option;
  emfile          : int option;
  emlink          : int option;
  enametoolong    : int option;
  enfile          : int option;
  enodev          : int option;
  enoent          : int option;
  enoexec         : int option;
  enolck          : int option;
  enomem          : int option;
  enospc          : int option;
  enosys          : int option;
  enotdir         : int option;
  enotempty       : int option;
  enotty          : int option;
  enxio           : int option;
  eperm           : int option;
  epipe           : int option;
  erange          : int option;
  erofs           : int option;
  espipe          : int option;
  esrch           : int option;
  exdev           : int option;
  ewouldblock     : int option;
  einprogress     : int option;
  ealready        : int option;
  enotsock        : int option;
  edestaddrreq    : int option;
  emsgsize        : int option;
  eprototype      : int option;
  enoprotoopt     : int option;
  eprotonosupport : int option;
  esocktnosupport : int option;
  eopnotsupp      : int option;
  epfnosupport    : int option;
  eafnosupport    : int option;
  eaddrinuse      : int option;
  eaddrnotavail   : int option;
  enetdown        : int option;
  enetunreach     : int option;
  enetreset       : int option;
  econnaborted    : int option;
  econnreset      : int option;
  enobufs         : int option;
  eisconn         : int option;
  enotconn        : int option;
  eshutdown       : int option;
  etoomanyrefs    : int option;
  etimedout       : int option;
  econnrefused    : int option;
  ehostdown       : int option;
  ehostunreach    : int option;
  eloop           : int option;
  eoverflow       : int option;
}
type index = (int, t) Hashtbl.t
type host = defns * index

let to_code ~host = let (defns,_) = host in Unix.(function
  | E2BIG           -> defns.e2big
  | EACCES          -> defns.eacces
  | EAGAIN          -> defns.eagain
  | EBADF           -> defns.ebadf
  | EBUSY           -> defns.ebusy
  | ECHILD          -> defns.echild
  | EDEADLK         -> defns.edeadlk
  | EDOM            -> defns.edom
  | EEXIST          -> defns.eexist
  | EFAULT          -> defns.efault
  | EFBIG           -> defns.efbig
  | EINTR           -> defns.eintr
  | EINVAL          -> defns.einval
  | EIO             -> defns.eio
  | EISDIR          -> defns.eisdir
  | EMFILE          -> defns.emfile
  | EMLINK          -> defns.emlink
  | ENAMETOOLONG    -> defns.enametoolong
  | ENFILE          -> defns.enfile
  | ENODEV          -> defns.enodev
  | ENOENT          -> defns.enoent
  | ENOEXEC         -> defns.enoexec
  | ENOLCK          -> defns.enolck
  | ENOMEM          -> defns.enomem
  | ENOSPC          -> defns.enospc
  | ENOSYS          -> defns.enosys
  | ENOTDIR         -> defns.enotdir
  | ENOTEMPTY       -> defns.enotempty
  | ENOTTY          -> defns.enotty
  | ENXIO           -> defns.enxio
  | EPERM           -> defns.eperm
  | EPIPE           -> defns.epipe
  | ERANGE          -> defns.erange
  | EROFS           -> defns.erofs
  | ESPIPE          -> defns.espipe
  | ESRCH           -> defns.esrch
  | EXDEV           -> defns.exdev
  | EWOULDBLOCK     -> defns.ewouldblock
  | EINPROGRESS     -> defns.einprogress
  | EALREADY        -> defns.ealready
  | ENOTSOCK        -> defns.enotsock
  | EDESTADDRREQ    -> defns.edestaddrreq
  | EMSGSIZE        -> defns.emsgsize
  | EPROTOTYPE      -> defns.eprototype
  | ENOPROTOOPT     -> defns.enoprotoopt
  | EPROTONOSUPPORT -> defns.eprotonosupport
  | ESOCKTNOSUPPORT -> defns.esocktnosupport
  | EOPNOTSUPP      -> defns.eopnotsupp
  | EPFNOSUPPORT    -> defns.epfnosupport
  | EAFNOSUPPORT    -> defns.eafnosupport
  | EADDRINUSE      -> defns.eaddrinuse
  | EADDRNOTAVAIL   -> defns.eaddrnotavail
  | ENETDOWN        -> defns.enetdown
  | ENETUNREACH     -> defns.enetunreach
  | ENETRESET       -> defns.enetreset
  | ECONNABORTED    -> defns.econnaborted
  | ECONNRESET      -> defns.econnreset
  | ENOBUFS         -> defns.enobufs
  | EISCONN         -> defns.eisconn
  | ENOTCONN        -> defns.enotconn
  | ESHUTDOWN       -> defns.eshutdown
  | ETOOMANYREFS    -> defns.etoomanyrefs
  | ETIMEDOUT       -> defns.etimedout
  | ECONNREFUSED    -> defns.econnrefused
  | EHOSTDOWN       -> defns.ehostdown
  | EHOSTUNREACH    -> defns.ehostunreach
  | ELOOP           -> defns.eloop
  | EOVERFLOW       -> defns.eoverflow
  | EUNKNOWNERR x   -> Some x
)

let index_of_defns defns =
  let open Unix in
  let open Hashtbl in
  let h = create 100 in
  (match defns.e2big with
  | Some x -> add h x E2BIG | None -> ());
  (match defns.eacces with
  | Some x -> add h x EACCES | None -> ());
  (match defns.eagain with
  | Some x -> add h x EAGAIN | None -> ());
  (match defns.ebadf with
  | Some x -> add h x EBADF | None -> ());
  (match defns.ebusy with
  | Some x -> add h x EBUSY | None -> ());
  (match defns.echild with
  | Some x -> add h x ECHILD | None -> ());
  (match defns.edeadlk with
  | Some x -> add h x EDEADLK | None -> ());
  (match defns.edom with
  | Some x -> add h x EDOM | None -> ());
  (match defns.eexist with
  | Some x -> add h x EEXIST | None -> ());
  (match defns.efault with
  | Some x -> add h x EFAULT | None -> ());
  (match defns.efbig with
  | Some x -> add h x EFBIG | None -> ());
  (match defns.eintr with
  | Some x -> add h x EINTR | None -> ());
  (match defns.einval with
  | Some x -> add h x EINVAL | None -> ());
  (match defns.eio with
  | Some x -> add h x EIO | None -> ());
  (match defns.eisdir with
  | Some x -> add h x EISDIR | None -> ());
  (match defns.emfile with
  | Some x -> add h x EMFILE | None -> ());
  (match defns.emlink with
  | Some x -> add h x EMLINK | None -> ());
  (match defns.enametoolong with
  | Some x -> add h x ENAMETOOLONG | None -> ());
  (match defns.enfile with
  | Some x -> add h x ENFILE | None -> ());
  (match defns.enodev with
  | Some x -> add h x ENODEV | None -> ());
  (match defns.enoent with
  | Some x -> add h x ENOENT | None -> ());
  (match defns.enoexec with
  | Some x -> add h x ENOEXEC | None -> ());
  (match defns.enolck with
  | Some x -> add h x ENOLCK | None -> ());
  (match defns.enomem with
  | Some x -> add h x ENOMEM | None -> ());
  (match defns.enospc with
  | Some x -> add h x ENOSPC | None -> ());
  (match defns.enosys with
  | Some x -> add h x ENOSYS | None -> ());
  (match defns.enotdir with
  | Some x -> add h x ENOTDIR | None -> ());
  (match defns.enotempty with
  | Some x -> add h x ENOTEMPTY | None -> ());
  (match defns.enotty with
  | Some x -> add h x ENOTTY | None -> ());
  (match defns.enxio with
  | Some x -> add h x ENXIO | None -> ());
  (match defns.eperm with
  | Some x -> add h x EPERM | None -> ());
  (match defns.epipe with
  | Some x -> add h x EPIPE | None -> ());
  (match defns.erange with
  | Some x -> add h x ERANGE | None -> ());
  (match defns.erofs with
  | Some x -> add h x EROFS | None -> ());
  (match defns.espipe with
  | Some x -> add h x ESPIPE | None -> ());
  (match defns.esrch with
  | Some x -> add h x ESRCH | None -> ());
  (match defns.exdev with
  | Some x -> add h x EXDEV | None -> ());
  (match defns.ewouldblock with
  | Some x -> add h x EWOULDBLOCK | None -> ());
  (match defns.einprogress with
  | Some x -> add h x EINPROGRESS | None -> ());
  (match defns.ealready with
  | Some x -> add h x EALREADY | None -> ());
  (match defns.enotsock with
  | Some x -> add h x ENOTSOCK | None -> ());
  (match defns.edestaddrreq with
  | Some x -> add h x EDESTADDRREQ | None -> ());
  (match defns.emsgsize with
  | Some x -> add h x EMSGSIZE | None -> ());
  (match defns.eprototype with
  | Some x -> add h x EPROTOTYPE | None -> ());
  (match defns.enoprotoopt with
  | Some x -> add h x ENOPROTOOPT | None -> ());
  (match defns.eprotonosupport with
  | Some x -> add h x EPROTONOSUPPORT | None -> ());
  (match defns.esocktnosupport with
  | Some x -> add h x ESOCKTNOSUPPORT | None -> ());
  (match defns.eopnotsupp with
  | Some x -> add h x EOPNOTSUPP | None -> ());
  (match defns.epfnosupport with
  | Some x -> add h x EPFNOSUPPORT | None -> ());
  (match defns.eafnosupport with
  | Some x -> add h x EAFNOSUPPORT | None -> ());
  (match defns.eaddrinuse with
  | Some x -> add h x EADDRINUSE | None -> ());
  (match defns.eaddrnotavail with
  | Some x -> add h x EADDRNOTAVAIL | None -> ());
  (match defns.enetdown with
  | Some x -> add h x ENETDOWN | None -> ());
  (match defns.enetunreach with
  | Some x -> add h x ENETUNREACH | None -> ());
  (match defns.enetreset with
  | Some x -> add h x ENETRESET | None -> ());
  (match defns.econnaborted with
  | Some x -> add h x ECONNABORTED | None -> ());
  (match defns.econnreset with
  | Some x -> add h x ECONNRESET | None -> ());
  (match defns.enobufs with
  | Some x -> add h x ENOBUFS | None -> ());
  (match defns.eisconn with
  | Some x -> add h x EISCONN | None -> ());
  (match defns.enotconn with
  | Some x -> add h x ENOTCONN | None -> ());
  (match defns.eshutdown with
  | Some x -> add h x ESHUTDOWN | None -> ());
  (match defns.etoomanyrefs with
  | Some x -> add h x ETOOMANYREFS | None -> ());
  (match defns.etimedout with
  | Some x -> add h x ETIMEDOUT | None -> ());
  (match defns.econnrefused with
  | Some x -> add h x ECONNREFUSED | None -> ());
  (match defns.ehostdown with
  | Some x -> add h x EHOSTDOWN | None -> ());
  (match defns.ehostunreach with
  | Some x -> add h x EHOSTUNREACH | None -> ());
  (match defns.eloop with
  | Some x -> add h x ELOOP | None -> ());
  (match defns.eoverflow with
  | Some x -> add h x EOVERFLOW | None -> ());
  h

let host =
  let option f = match f () with -1 -> None | x -> Some x in
  let defns = {
    e2big           = option e2big;
    eacces          = option eacces;
    eagain          = option eagain;
    ebadf           = option ebadf;
    ebusy           = option ebusy;
    echild          = option echild;
    edeadlk         = option edeadlk;
    edom            = option edom;
    eexist          = option eexist;
    efault          = option efault;
    efbig           = option efbig;
    eintr           = option eintr;
    einval          = option einval;
    eio             = option eio;
    eisdir          = option eisdir;
    emfile          = option emfile;
    emlink          = option emlink;
    enametoolong    = option enametoolong;
    enfile          = option enfile;
    enodev          = option enodev;
    enoent          = option enoent;
    enoexec         = option enoexec;
    enolck          = option enolck;
    enomem          = option enomem;
    enospc          = option enospc;
    enosys          = option enosys;
    enotdir         = option enotdir;
    enotempty       = option enotempty;
    enotty          = option enotty;
    enxio           = option enxio;
    eperm           = option eperm;
    epipe           = option epipe;
    erange          = option erange;
    erofs           = option erofs;
    espipe          = option espipe;
    esrch           = option esrch;
    exdev           = option exdev;
    ewouldblock     = option ewouldblock;
    einprogress     = option einprogress;
    ealready        = option ealready;
    enotsock        = option enotsock;
    edestaddrreq    = option edestaddrreq;
    emsgsize        = option emsgsize;
    eprototype      = option eprototype;
    enoprotoopt     = option enoprotoopt;
    eprotonosupport = option eprotonosupport;
    esocktnosupport = option esocktnosupport;
    eopnotsupp      = option eopnotsupp;
    epfnosupport    = option epfnosupport;
    eafnosupport    = option eafnosupport;
    eaddrinuse      = option eaddrinuse;
    eaddrnotavail   = option eaddrnotavail;
    enetdown        = option enetdown;
    enetunreach     = option enetunreach;
    enetreset       = option enetreset;
    econnaborted    = option econnaborted;
    econnreset      = option econnreset;
    enobufs         = option enobufs;
    eisconn         = option eisconn;
    enotconn        = option enotconn;
    eshutdown       = option eshutdown;
    etoomanyrefs    = option etoomanyrefs;
    etimedout       = option etimedout;
    econnrefused    = option econnrefused;
    ehostdown       = option ehostdown;
    ehostunreach    = option ehostunreach;
    eloop           = option eloop;
    eoverflow       = option eoverflow;
  } in
  let index = index_of_defns defns in
  (defns,index)

let of_code ~host code =
  let (_,index) = host in
  try Hashtbl.find_all index code
  with Not_found -> [] (* [EUNKNOWNERR code] ? *)
