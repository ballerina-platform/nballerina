#include "../balrt.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include <math.h>
#include "../hash.h"

#define NRANDOM 2
#define NTESTS 2*1024

typedef struct {
    const char *function;
    const char *filename;
} ExpectedTrace;

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

TaggedPtr getNil() {
    GC char *ptr = NULL;
    return ptr;
}

bool cmpTrace(FILE *actualTrace, const ExpectedTrace expectedTrace[]) {
    int nChars = 0;
    int nLines = 0;
    while (true) {
        char c = fgetc(actualTrace);
        if (c == EOF) {
            break;
        }
        const char *expectedFunction = expectedTrace[nLines].function;
        if (nChars < strlen(expectedFunction)) {
            if (c != expectedFunction[nChars]) {
                return false;
            }
        }
        if (c == '\n') {
            // Compare filename
            const char *expectedFilename = expectedTrace[nLines].filename;
            int expectedFileNameLength = strlen(expectedFilename);
            if (fseek(actualTrace, -1 - expectedFileNameLength, SEEK_CUR) != 0) {
                return false;
            }
            for (int i = 0; i < expectedFileNameLength; i++) {
                if (expectedFilename[i] != fgetc(actualTrace)) {
                    return false;
                }
            }
            fgetc(actualTrace);
            nLines++;
            nChars = 0;
            continue;
        }
        nChars++;
    }
    return true;
}
