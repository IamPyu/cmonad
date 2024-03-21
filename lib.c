#include <stdio.h>
#include <string.h>

#define SIZE 256

void hello(void) {
  printf("Hello, world! From C!\n");
}

char *myRead() {
  char input[SIZE];
  fgets(input, SIZE, stdin);
  input[strlen(input)-1] = '\0';
  char *p = input;
  return p;
}
