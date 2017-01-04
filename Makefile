%.native: %.ml
	ocamlbuild -use-ocamlfind $@

.PHONY: all check clean

all: main.native

check: main.native
	./main.native

clean:
	rm -rf _build *.native
