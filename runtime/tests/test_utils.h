#include "../balrt.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "../hash.h"

#define NRANDOM 2
#define NTESTS 2*1024

static int min(int n1, int n2) {
    return (n1 > n2 ) ? n2 : n1;
}

static int sign(int64_t n) {
    return n == 0 ? 0 : (n < 0 ? -1 : 1);
}
