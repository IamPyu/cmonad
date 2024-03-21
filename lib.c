#include <stdio.h>
#include <string.h>

#define SIZE 256

float doubleIt(float x) {
  return x * 2;
}

void greet(char *name) {
  printf("Hello, %s!\n", name);
  printf("How are you %s?\n", name);
}

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
