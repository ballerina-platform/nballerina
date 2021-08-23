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

void testFloatToIntNoOverflow(double d, long l) {
    struct FloatToIntResult r = _bal_float_to_int(d);
    assert(!r.overflowed);
    assert(r.value == l);
}

void testFloatToIntOverflow(double d) {
    struct FloatToIntResult r = _bal_float_to_int(d);
    assert(r.overflowed);
}

void testFloatsToIntConvert() {
    testFloatToIntNoOverflow(42.42, 42);
    testFloatToIntNoOverflow(1.5, 2);
    testFloatToIntNoOverflow(2.5, 2);
    testFloatToIntNoOverflow(-1.5, -2);
    testFloatToIntNoOverflow(-2.5, -2);
    testFloatToIntNoOverflow(9223372036854774784.0, 9223372036854774784);
    testFloatToIntNoOverflow(-9223372036854775808.0, -9223372036854775807 - 1);

    testFloatToIntOverflow(9223372036854775808.0);
    testFloatToIntOverflow(-9223372036854777856.0);
    testFloatToIntOverflow(INF);
    testFloatToIntOverflow(-INF);
    testFloatToIntOverflow(NAN);

    for (int i = 0; i < NTESTS / 8; i++) {
        testFloatToIntOverflow(randDouble(true));
    }
}

int main() {
    testFloatEq();
    testFloatExactEq();
    testFloatsToIntConvert();
    return 0;
}
