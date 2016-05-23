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

open Ctypes

module C(F: Cstubs.FOREIGN) = struct

  let reset_errno = F.(foreign "unix_errno_reset" (void @-> returning void))

  let get_errno = F.(foreign "unix_errno_get" (void @-> returning int))

  (* OS X and FreeBSD don't have these *)
  let echrng       = F.(foreign "unix_errno_echrng" (void @-> returning int))
  let el2nsync     = F.(foreign "unix_errno_el2nsync" (void @-> returning int))
  let el3hlt       = F.(foreign "unix_errno_el3hlt" (void @-> returning int))
  let el3rst       = F.(foreign "unix_errno_el3rst" (void @-> returning int))
  let elnrng       = F.(foreign "unix_errno_elnrng" (void @-> returning int))
  let eunatch      = F.(foreign "unix_errno_eunatch" (void @-> returning int))
  let enocsi       = F.(foreign "unix_errno_enocsi" (void @-> returning int))
  let el2hlt       = F.(foreign "unix_errno_el2hlt" (void @-> returning int))
  let ebade        = F.(foreign "unix_errno_ebade" (void @-> returning int))
  let ebadr        = F.(foreign "unix_errno_ebadr" (void @-> returning int))
  let exfull       = F.(foreign "unix_errno_exfull" (void @-> returning int))
  let enoano       = F.(foreign "unix_errno_enoano" (void @-> returning int))
  let ebadrqc      = F.(foreign "unix_errno_ebadrqc" (void @-> returning int))
  let ebadslt      = F.(foreign "unix_errno_ebadslt" (void @-> returning int))
  let ebfont       = F.(foreign "unix_errno_ebfont" (void @-> returning int))
  let enonet       = F.(foreign "unix_errno_enonet" (void @-> returning int))
  let enopkg       = F.(foreign "unix_errno_enopkg" (void @-> returning int))
  let eadv         = F.(foreign "unix_errno_eadv" (void @-> returning int))
  let esrmnt       = F.(foreign "unix_errno_esrmnt" (void @-> returning int))
  let ecomm        = F.(foreign "unix_errno_ecomm" (void @-> returning int))
  let edotdot      = F.(foreign "unix_errno_edotdot" (void @-> returning int))
  let enotuniq     = F.(foreign "unix_errno_enotuniq" (void @-> returning int))
  let ebadfd       = F.(foreign "unix_errno_ebadfd" (void @-> returning int))
  let eremchg      = F.(foreign "unix_errno_eremchg" (void @-> returning int))
  let elibacc      = F.(foreign "unix_errno_elibacc" (void @-> returning int))
  let elibbad      = F.(foreign "unix_errno_elibbad" (void @-> returning int))
  let elibscn      = F.(foreign "unix_errno_elibscn" (void @-> returning int))
  let elibmax      = F.(foreign "unix_errno_elibmax" (void @-> returning int))
  let elibexec     = F.(foreign "unix_errno_elibexec" (void @-> returning int))
  let erestart     = F.(foreign "unix_errno_erestart" (void @-> returning int))
  let estrpipe     = F.(foreign "unix_errno_estrpipe" (void @-> returning int))
  let euclean      = F.(foreign "unix_errno_euclean" (void @-> returning int))
  let enotnam      = F.(foreign "unix_errno_enotnam" (void @-> returning int))
  let enavail      = F.(foreign "unix_errno_enavail" (void @-> returning int))
  let eisnam       = F.(foreign "unix_errno_eisnam" (void @-> returning int))
  let eremoteio    = F.(foreign "unix_errno_eremoteio" (void @-> returning int))
  let enomedium    = F.(foreign "unix_errno_enomedium" (void @-> returning int))
  let emediumtype  = F.(foreign "unix_errno_emediumtype" (void @-> returning int))
  let enokey       = F.(foreign "unix_errno_enokey" (void @-> returning int))
  let ekeyexpired  = F.(foreign "unix_errno_ekeyexpired" (void @-> returning int))
  let ekeyrevoked  = F.(foreign "unix_errno_ekeyrevoked" (void @-> returning int))
  let ekeyrejected = F.(foreign "unix_errno_ekeyrejected" (void @-> returning int))
  let erfkill      = F.(foreign "unix_errno_erfkill" (void @-> returning int))
  let ehwpoison    = F.(foreign "unix_errno_ehwpoison" (void @-> returning int))

  (* Linux and FreeBSD don't have these *)
  let epwroff    = F.(foreign "unix_errno_epwroff" (void @-> returning int))
  let edeverr    = F.(foreign "unix_errno_edeverr" (void @-> returning int))
  let ebadexec   = F.(foreign "unix_errno_ebadexec" (void @-> returning int))
  let ebadarch   = F.(foreign "unix_errno_ebadarch" (void @-> returning int))
  let eshlibvers = F.(foreign "unix_errno_eshlibvers" (void @-> returning int))
  let ebadmacho  = F.(foreign "unix_errno_ebadmacho" (void @-> returning int))
  let enopolicy  = F.(foreign "unix_errno_enopolicy" (void @-> returning int))
  let eqfull     = F.(foreign "unix_errno_eqfull" (void @-> returning int))

  (* Linux and OS X don't have these *)
  let edoofus     = F.(foreign "unix_errno_edoofus" (void @-> returning int))
  let enotcapable = F.(foreign "unix_errno_enotcapable" (void @-> returning int))
  let ecapmode    = F.(foreign "unix_errno_ecapmode" (void @-> returning int))

  (* Linux doesn't have these *)
  let eproclim      = F.(foreign "unix_errno_eproclim" (void @-> returning int))
  let ebadrpc       = F.(foreign "unix_errno_ebadrpc" (void @-> returning int))
  let erpcmismatch  = F.(foreign "unix_errno_erpcmismatch" (void @-> returning int))
  let eprogunavail  = F.(foreign "unix_errno_eprogunavail" (void @-> returning int))
  let eprogmismatch = F.(foreign "unix_errno_eprogmismatch" (void @-> returning int))
  let eprocunavail  = F.(foreign "unix_errno_eprocunavail" (void @-> returning int))
  let eftype        = F.(foreign "unix_errno_eftype" (void @-> returning int))
  let eauth         = F.(foreign "unix_errno_eauth" (void @-> returning int))
  let eneedauth     = F.(foreign "unix_errno_eneedauth" (void @-> returning int))
  let enoattr       = F.(foreign "unix_errno_enoattr" (void @-> returning int))

  (* FreeBSD doesn't have these *)
  let enostr = F.(foreign "unix_errno_enostr" (void @-> returning int))
  let enodata = F.(foreign "unix_errno_enodata" (void @-> returning int))
  let etime = F.(foreign "unix_errno_etime" (void @-> returning int))
  let enosr = F.(foreign "unix_errno_enosr" (void @-> returning int))

end
