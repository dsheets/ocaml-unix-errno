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

val host : Errno.Host.t

val to_unix : ?host:Errno.Host.t -> Errno.t -> Unix.error option
(** [to_unix ?host errno] is the {!Unix.error} corresponding to
    [errno] if one exists. If [host] is not supplied, {!host} will be
    used. *)

val of_unix : ?host:Errno.Host.t -> Unix.error -> Errno.t list
(** [of_unix ?host error] is the list of symbolic error numbers
    corresponding to the {!Unix.error}, [error]. If [host] is not
    supplied, {!host} will be used. *)

val raise_on_errno : ?call:string -> ?label:string -> (unit -> 'a) -> 'a

val with_unix_exn : (unit -> 'a) -> 'a
