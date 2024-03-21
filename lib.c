#include <stdio.h>
#include <string.h>

#define SIZE 256

void hello(void) {
  printf("Hello, world! From C!\n");
}

void greet(char *name) {
  printf("Hello, %s!\n", name);
}
