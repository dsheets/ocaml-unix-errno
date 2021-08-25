(lang dune 2.8)

(name unix-errno)
(version 0.5.3)
(source (github savonet/ocaml-unix-errno))
(license ISC)
(authors "David Sheets")
(maintainers "sheets@alum.mit.edu")

(generate_opam_files true)
(use_standard_c_and_cxx_flags false)

(package
 (name unix-errno)
 (synopsis "Unix errno types, maps, and support")
 (depends
  base-bytes
  base-unix
  integers
  result
  ctypes
  (alcotest :with-test)))
