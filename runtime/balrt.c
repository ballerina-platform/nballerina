#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

extern void _B_main();

void _Bio__println(int64_t n) {
  printf("%ld\n", (long)n);
}

const char *panicMessages[] = {
  0,
  "arithmetic overflow",
  "divide by zero"
};

void _bal_panic(int64_t code) {
    fprintf(stderr, "panic: %s\n", panicMessages[code]);
    fflush(stderr);
    abort();
}

int main() {
  _B_main();
  return 0;
}
