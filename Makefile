CC=cc
DC=ldc2

build:
	$(CC) -fPIC -shared lib.c -o libhello.so
	ldc2 lib2.d --shared --of libhello2.so
	ghc --make main.hs ffi.hs -L. -lhello -lhello2
