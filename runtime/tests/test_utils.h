#include "../balrt.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <math.h>
#include "../hash.h"

#define NRANDOM 2
#define NTESTS 2*1024

static int min(int n1, int n2) {
    return (n1 > n2 ) ? n2 : n1;
}

static int sign(int64_t n) {
    return n == 0 ? 0 : (n < 0 ? -1 : 1);
}

double randDouble(bool isNan) {
    // assumeing two rands are enough to make mantissa and sign, ie: popcount(RAND_MAX) * 2 >= 52 + 1
    uint64_t largeRand = ((uint64_t)rand() << __builtin_popcount(RAND_MAX)) + rand();
    uint64_t mantissa = largeRand & ((1L << 52) - 1);
    uint64_t sign = (largeRand & (1L << 52))  << (63 - 52);
    uint64_t exp;
    if (isNan) {
        exp = (1L << 11) - 1;
        if (mantissa == 0) {
            mantissa = 1;
        }
    }
    else {
        exp = rand() & ((1L << 11) - 1);
        if (exp == (1L << 11) - 1) {
            exp = exp - 1;
        }
    }
    uint64_t randDoubleBits = sign + (exp << 52) + mantissa;
    double result = *((double*)&randDoubleBits);
    assert(isnan(result) == isNan);
    return result;
}

int nextStrLocationFrom(int idx, char *str) {
    while (*(str + idx) != 0) {
        idx = idx + 1;
    }
    return idx + 1;
}
