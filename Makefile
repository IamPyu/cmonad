CC=cc
DC=ldc2

build:
	$(CC) -fPIC -shared lib.c -o libhello.so
	$(DC) lib2.d --shared --of libhello2.so
	rustc lib3.rs --crate-type=dylib -o libhello3.so
	ghc --make main.hs ffi.hs -L. -lhello -lhello2 -lhello3
