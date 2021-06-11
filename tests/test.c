#include <stdint.h>
#include <stdio.h>

extern void _B_main();

void _Bio__println(int64_t n) {
  printf("%ld\n", (long)n);
}

int main() {
  _B_main();
  return 0;
}
