.PHONY: build test install uninstall reinstall clean

FINDLIB_NAME=unix-errno
MOD_NAME=unix_errno

OCAML_LIB_DIR=$(shell ocamlc -where)

CTYPES_LIB_DIR=$(shell ocamlfind query ctypes)

OCAMLBUILD=CTYPES_LIB_DIR=$(CTYPES_LIB_DIR) OCAML_LIB_DIR=$(OCAML_LIB_DIR) \
	ocamlbuild -use-ocamlfind -classic-display

WITH_CTYPES=$(shell ocamlfind query ctypes unix > /dev/null 2>&1 ; echo $$?)

TARGETS=.cma .cmxa

PRODUCTS=$(addprefix errno_,$(TARGETS))

ifeq ($(WITH_CTYPES), 0)
PRODUCTS+=$(addprefix $(MOD_NAME),$(TARGETS)) \
          lib$(MOD_NAME)_stubs.a dll$(MOD_NAME)_stubs.so \
          errno_map.byte
endif

TYPES=.mli .cmi .cmti

INSTALL:=$(addprefix errno,$(TYPES)) \
	 $(addprefix errno_host,$(TYPES)) \
         $(addprefix errno_,$(TARGETS))

INSTALL:=$(addprefix _build/lib/,$(INSTALL))

ifeq ($(WITH_CTYPES), 0)
INSTALL_CTYPES:=$(addprefix errno_unix,$(TYPES)) \
                $(addprefix $(MOD_NAME),$(TARGETS))

INSTALL_CTYPES:=$(addprefix _build/unix/,$(INSTALL_CTYPES))

INSTALL+=$(INSTALL_CTYPES)
endif

ARCHIVES:=_build/lib/errno_.a

ifeq ($(WITH_CTYPES), 0)
ARCHIVES+=-dll _build/unix/dll$(MOD_NAME)_stubs.so \
          -nodll _build/unix/lib$(MOD_NAME)_stubs.a \
          _build/unix/$(MOD_NAME).a
endif

build:
	$(OCAMLBUILD) $(PRODUCTS)

test: build
	$(OCAMLBUILD) unix_test/test.native
	./test.native

install:
	ocamlfind install $(FINDLIB_NAME) META $(INSTALL) $(ARCHIVES)

uninstall:
	ocamlfind remove $(FINDLIB_NAME)

reinstall: uninstall install

clean:
	ocamlbuild -clean
