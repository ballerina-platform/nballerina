#include "test_utils.h"
#include "../balrt_inline.h"
#include <math.h>

HASH_DEFINE_KEY;

#define INF (1.0l/0.0l)

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
    uint64_t randNanBits = sign + (exp << 52) + mantissa;
    double result = *((double*)&randNanBits);
    assert(isnan(result) == isNan);
    return result;
}


void testFloatEq() {
    for (int i = 0; i < NTESTS / 2; i++) {
        bool eq = _bal_float_eq(randDouble(true), randDouble(true));
        assert(eq);
    }
    for (int i = 0; i < NTESTS / 2; i++) {
        double d = randDouble(false);
        bool eq = _bal_float_eq(d, d);
        assert(eq);
    }
    for (int i = 0; i < NTESTS / 2; i++) {
        bool eq = _bal_float_eq(randDouble(true), randDouble(false));
        assert(!eq);
    }
    for (int i = 0; i < NTESTS / 2; i++) {
        bool eq = _bal_float_eq(randDouble(false), randDouble(true));
        assert(!eq);
    }
    assert(_bal_float_eq(0.0, -0.0));
    assert(_bal_float_eq(INF, INF));
    assert(_bal_float_eq(-INF, -INF));

    assert(!_bal_float_eq(INF, -INF));
    assert(!_bal_float_eq(NAN, 0.0));
    assert(!_bal_float_eq(-0.0, NAN));
}

void testFloatExactEq() {
    for (int i = 0; i < NTESTS / 2; i++) {
        bool eq = _bal_float_exact_eq(randDouble(true), randDouble(true));
        assert(eq);
    }
    for (int i = 0; i < NTESTS / 2; i++) {
        double d = randDouble(false);
        bool eq = _bal_float_exact_eq(d, d);
        assert(eq);
    }
    for (int i = 0; i < NTESTS / 2; i++) {
        bool eq = _bal_float_exact_eq(randDouble(true), randDouble(false));
        assert(!eq);
    }
    for (int i = 0; i < NTESTS / 2; i++) {
        bool eq = _bal_float_exact_eq(randDouble(false), randDouble(true));
        assert(!eq);
    }
    assert(_bal_float_exact_eq(INF, INF));
    assert(_bal_float_exact_eq(-INF, -INF));

    assert(!_bal_float_exact_eq(0.0, -0.0));
    assert(!_bal_float_exact_eq(INF, -INF));
    assert(!_bal_float_exact_eq(NAN, -0.0));
    assert(!_bal_float_exact_eq(0.0, NAN));
}

int main() {
    testFloatEq();
    testFloatExactEq();
    return 0;
}
