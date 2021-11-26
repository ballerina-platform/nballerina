#include "test_utils.h"
#include "../balrt_inline.h"

void testIntNilCmp() {
    TaggedPtr a = _bal_int_to_tagged(5);
    TaggedPtr b = _bal_int_to_tagged(IMMEDIATE_INT_MAX + 1);
    TaggedPtr c = _bal_int_to_tagged(IMMEDIATE_INT_MIN - 1);
    TaggedPtr nil = getNil();
    assert(_bal_int_compare(a, nil) == COMPARE_UN);
    assert(_bal_int_compare(b, nil) == COMPARE_UN);
    assert(_bal_int_compare(c, nil) == COMPARE_UN);
    assert(_bal_int_compare(nil, a) == COMPARE_UN);
    assert(_bal_int_compare(nil, b) == COMPARE_UN);
    assert(_bal_int_compare(nil, c) == COMPARE_UN);
    assert(_bal_int_compare(nil, nil) == COMPARE_EQ);
}

void testIntIntCmp() {
    TaggedPtr a = _bal_int_to_tagged(5);
    TaggedPtr b = _bal_int_to_tagged(-5);
    TaggedPtr c = _bal_int_to_tagged(IMMEDIATE_INT_MAX + 1);
    TaggedPtr d = _bal_int_to_tagged(IMMEDIATE_INT_MIN - 1);
    assert(_bal_int_compare(a, a) == COMPARE_EQ);
    assert(_bal_int_compare(a, b) == COMPARE_GT);
    assert(_bal_int_compare(a, c) == COMPARE_LT);
    assert(_bal_int_compare(a, d) == COMPARE_GT);

    assert(_bal_int_compare(b, a) == COMPARE_LT);
    assert(_bal_int_compare(b, b) == COMPARE_EQ);
    assert(_bal_int_compare(b, c) == COMPARE_LT);
    assert(_bal_int_compare(b, d) == COMPARE_GT);

    assert(_bal_int_compare(c, a) == COMPARE_GT);
    assert(_bal_int_compare(c, b) == COMPARE_GT);
    assert(_bal_int_compare(c, c) == COMPARE_EQ);
    assert(_bal_int_compare(c, d) == COMPARE_GT);

    assert(_bal_int_compare(d, a) == COMPARE_LT);
    assert(_bal_int_compare(d, b) == COMPARE_LT);
    assert(_bal_int_compare(d, c) == COMPARE_LT);
    assert(_bal_int_compare(d, d) == COMPARE_EQ);
}

int main() {
    testIntNilCmp();
    testIntIntCmp();
    return 0;
}
