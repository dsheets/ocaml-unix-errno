.PHONY: build install uninstall reinstall clean

FINDLIB_NAME=unix-errno
BUILD=_build/lib

build:
	mkdir -p $(BUILD)
	cc -c -o $(BUILD)/unix_errno_stubs.o lib/unix_errno_stubs.c
	ocamlfind ocamlc -o $(BUILD)/unix_errno.cmi -c lib/unix_errno.mli
	ocamlfind ocamlmklib -o $(BUILD)/unix_errno -I $(BUILD) \
		lib/unix_errno.ml $(BUILD)/unix_errno_stubs.o

install:
	ocamlfind install $(FINDLIB_NAME) META \
		lib/unix_errno.mli \
		$(BUILD)/unix_errno.cmi \
		$(BUILD)/unix_errno.cma \
		$(BUILD)/unix_errno.cmxa \
		-dll $(BUILD)/dllunix_errno.so \
		-nodll $(BUILD)/libunix_errno.a

uninstall:
	ocamlfind remove $(FINDLIB_NAME)

reinstall: uninstall install

clean:
	rm -rf _build
	rm -f lib/unix_errno.cm? lib/unix_errno.o
