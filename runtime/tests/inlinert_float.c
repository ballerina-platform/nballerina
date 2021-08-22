#include "test_utils.h"
#include "../balrt_inline.h"

HASH_DEFINE_KEY;

#define INF (1.0l/0.0l)

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
