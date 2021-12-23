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
    IntWithOverflow r = _bal_float_to_int(d);
    assert(!r.overflow);
    assert(r.value == l);
}

void testFloatToIntOverflow(double d) {
    IntWithOverflow r = _bal_float_to_int(d);
    assert(r.overflow);
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

void testFloatNilCmp() {
    TaggedPtr a = _bal_float_to_tagged(5.0);
    TaggedPtr b = _bal_float_to_tagged(100000.0);
    TaggedPtr c = _bal_float_to_tagged(-123455.2);
    TaggedPtr nil = getNil();
    assert(_bal_float_compare(a, nil) == COMPARE_UN);
    assert(_bal_float_compare(b, nil) == COMPARE_UN);
    assert(_bal_float_compare(c, nil) == COMPARE_UN);
    assert(_bal_float_compare(nil, a) == COMPARE_UN);
    assert(_bal_float_compare(nil, b) == COMPARE_UN);
    assert(_bal_float_compare(nil, c) == COMPARE_UN);
    assert(_bal_float_compare(nil, nil) == COMPARE_EQ);
}

void testFloatFloatCmp() {
    TaggedPtr a = _bal_float_to_tagged(0.33);
    TaggedPtr b = _bal_float_to_tagged(-0.33);
    TaggedPtr c = _bal_float_to_tagged(50000.0);
    TaggedPtr d = _bal_float_to_tagged(-50000.0);
    assert(_bal_float_compare(a, a) == COMPARE_EQ);
    assert(_bal_float_compare(a, b) == COMPARE_GT);
    assert(_bal_float_compare(a, c) == COMPARE_LT);
    assert(_bal_float_compare(a, d) == COMPARE_GT);

    assert(_bal_float_compare(b, a) == COMPARE_LT);
    assert(_bal_float_compare(b, b) == COMPARE_EQ);
    assert(_bal_float_compare(b, c) == COMPARE_LT);
    assert(_bal_float_compare(b, d) == COMPARE_GT);

    assert(_bal_float_compare(c, a) == COMPARE_GT);
    assert(_bal_float_compare(c, b) == COMPARE_GT);
    assert(_bal_float_compare(c, c) == COMPARE_EQ);
    assert(_bal_float_compare(c, d) == COMPARE_GT);

    assert(_bal_float_compare(d, a) == COMPARE_LT);
    assert(_bal_float_compare(d, b) == COMPARE_LT);
    assert(_bal_float_compare(d, c) == COMPARE_LT);
    assert(_bal_float_compare(d, d) == COMPARE_EQ);
}

int main() {
    testFloatEq();
    testFloatExactEq();
    testFloatsToIntConvert();
    testFloatNilCmp();
    testFloatFloatCmp();
    return 0;
}
