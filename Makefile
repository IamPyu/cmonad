build:
	gcc -fPIC -shared lib.c -o libhello.so
	ghc --make main.hs ffi.hs -L. -lhello
