#include <stdbool.h>
#include <stdio.h>

bool _bal_float_eq1(double, double);
bool _bal_float_eq2(double, double);

static int indexOf(double *v, int n, double x);

#define N 100000
int main() {
  double v[N];
  for (int i = 0; i < N; i++)
    v[i] = (double)i;
  int n = 0;
  for (int i = 0; i < 1000000; i++)
    for (int j = N/2; j < N; j += 17)
      n += indexOf(v, n, (double)j);
  printf("%d\n", n);
}


static int indexOf(double *v, int n, double x) {
   for (int i = 0; i < n; i++)
    if (_bal_float_eq1(v[i], x)) {
      return i;
    }
    return -1;
}
