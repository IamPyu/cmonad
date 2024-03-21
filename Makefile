CC=cc
DC=ldc2
LOGFILE=log.txt

build:
	$(CC) -fPIC -shared -lc lib.c -o libhello.so > $(LOGFILE)
	$(DC) lib2.d --shared --of libhello2.so >> $(LOGFILE)
	rustc lib3.rs --crate-type=dylib -o libhello3.so >> $(LOGFILE)
	ghc --make main.hs ffi.hs -L. -lhello -lhello2 -lhello3 >> $(LOGFILE)

run: build
	clear
	@./main
