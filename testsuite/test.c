#include <stdint.h>
#include <stdio.h>

extern int64_t test(int64_t, int64_t);

int main() {
  int64_t ret = test(17, 42);
  printf("test(17,42) = %ld\n", (long)ret);
  return 0;
}
