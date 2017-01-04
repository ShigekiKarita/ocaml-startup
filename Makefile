%.native: %.ml
	ocamlbuild -use-ocamlfind $@

.PHONY: all clean

all: main.native

run: main.native
	./main.native

clean:
	rm -rf _build *.native
