#include "test_utils.h"
#include "../balrt_inline.h"

#define IMMEDIATE_INT_MIN -(1L << (TAG_SHIFT - 1))
#define IMMEDIATE_INT_MAX  ((1L << (TAG_SHIFT - 1)) - 1)

void testIntNilCmp() {
    TaggedPtr a = _bal_int_to_tagged(5);
    TaggedPtr b = _bal_int_to_tagged(IMMEDIATE_INT_MAX + 1);
    TaggedPtr c = _bal_int_to_tagged(IMMEDIATE_INT_MIN - 1);
    TaggedPtr nil = getNil();
    assert(_bal_int_compare(a, nil) == UN);
    assert(_bal_int_compare(b, nil) == UN);
    assert(_bal_int_compare(c, nil) == UN);
    assert(_bal_int_compare(nil, a) == UN);
    assert(_bal_int_compare(nil, b) == UN);
    assert(_bal_int_compare(nil, c) == UN);
    assert(_bal_int_compare(nil, nil) == EQ);
}

void testIntIntCmp() {
    TaggedPtr a = _bal_int_to_tagged(5);
    TaggedPtr b = _bal_int_to_tagged(-5);
    TaggedPtr c = _bal_int_to_tagged(IMMEDIATE_INT_MAX + 1);
    TaggedPtr d = _bal_int_to_tagged(IMMEDIATE_INT_MIN - 1);
    assert(_bal_int_compare(a, a) == EQ);
    assert(_bal_int_compare(a, b) == GT);
    assert(_bal_int_compare(a, c) == LT);
    assert(_bal_int_compare(a, d) == GT);

    assert(_bal_int_compare(b, a) == LT);
    assert(_bal_int_compare(b, b) == EQ);
    assert(_bal_int_compare(b, c) == LT);
    assert(_bal_int_compare(b, d) == GT);

    assert(_bal_int_compare(c, a) == GT);
    assert(_bal_int_compare(c, b) == GT);
    assert(_bal_int_compare(c, c) == EQ);
    assert(_bal_int_compare(c, d) == GT);

    assert(_bal_int_compare(d, a) == LT);
    assert(_bal_int_compare(d, b) == LT);
    assert(_bal_int_compare(d, c) == LT);
    assert(_bal_int_compare(d, d) == EQ);
}

int main() {
    testIntNilCmp();
    testIntIntCmp();
    return 0;
}
