.PHONY: build install uninstall reinstall clean

FINDLIB_NAME=unix-errno
MOD_NAME=unix_errno
BUILD=_build/lib

build:
	mkdir -p $(BUILD)
	cc -c -o $(BUILD)/$(MOD_NAME)_stubs.o lib/$(MOD_NAME)_stubs.c
	ocamlfind ocamlc -o $(BUILD)/$(MOD_NAME).cmi -c lib/$(MOD_NAME).mli
	ocamlfind ocamlmklib -o $(BUILD)/$(MOD_NAME) -I $(BUILD) \
		lib/$(MOD_NAME).ml $(BUILD)/$(MOD_NAME)_stubs.o

install:
	ocamlfind install $(FINDLIB_NAME) META \
		lib/$(MOD_NAME).mli \
		$(BUILD)/$(MOD_NAME).cmi \
		$(BUILD)/$(MOD_NAME).cma \
		$(BUILD)/$(MOD_NAME).cmxa \
		-dll $(BUILD)/dll$(MOD_NAME).so \
		-nodll $(BUILD)/lib$(MOD_NAME).a $(BUILD)/$(MOD_NAME).a

uninstall:
	ocamlfind remove $(FINDLIB_NAME)

reinstall: uninstall install

clean:
	rm -rf _build
	rm -f lib/$(MOD_NAME).cm? lib/$(MOD_NAME).o
