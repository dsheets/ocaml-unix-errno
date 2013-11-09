type t = Unix.error
type host

val host : host

val to_code : host:host -> t -> int option
val of_code : host:host -> int -> t list
