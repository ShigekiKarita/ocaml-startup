%.native: %.ml
	ocamlbuild -use-ocamlfind $@

.PHONY: all clean

all: main.native

clean:
	rm -rf _build *.native
