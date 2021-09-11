#include "string_utils.h"
#include "../balrt_inline.h"
#include <stdio.h>

void testStringArr() {
    TaggedPtr a = getArr(); // ["abc", "abcd", "abb"]
    _Barray__push(a, makeString("abc"));
    _Barray__push(a, makeString("abcd"));
    _Barray__push(a, makeString("abb"));

    TaggedPtr b = getArr(); // ["abc", "xyz", "abb"]
    _Barray__push(b, makeString("abc"));
    _Barray__push(b, makeString("xyz"));
    _Barray__push(b, makeString("abb"));

    assert(_bal_array_float_compare(a, a) == EQ);
    assert(_bal_array_float_compare(a, b) == LT);
    assert(_bal_array_float_compare(b, a) == GT);

    TaggedPtr c = getArr(); // ["abc", "abcd", "abb", "abc"]
    _Barray__push(c, makeString("abc"));
    _Barray__push(c, makeString("abcd"));
    _Barray__push(c, makeString("abb"));
    _Barray__push(c, makeString("abc"));

    assert(_bal_array_float_compare(a, c) == LT);
    assert(_bal_array_float_compare(c, a) == GT);

    TaggedPtr d = getNil();
    assert(_bal_array_float_compare(a, d) == UN);
    assert(_bal_array_float_compare(d, a) == UN);

    TaggedPtr e = getArr(); // ["abc", (), "abb"]
    _Barray__push(e, makeString("abc"));
    _Barray__push(e, getNil());
    _Barray__push(e, makeString("abb"));
    assert(_bal_array_float_compare(a, e) == UN);
    assert(_bal_array_float_compare(e, a) == UN);
}

void testFloatArr() {
    TaggedPtr a = getArr(); // [0.1, 2.0, 0.33]
    _Barray__push(a, _bal_float_to_tagged(0.1));
    _Barray__push(a, _bal_float_to_tagged(2.0));
    _Barray__push(a, _bal_float_to_tagged(0.33));

    TaggedPtr b = getArr(); // [0.1, 4, 0.33]
    _Barray__push(b, _bal_float_to_tagged(0.1));
    _Barray__push(b, _bal_float_to_tagged(4));
    _Barray__push(b, _bal_float_to_tagged(0.33));

    assert(_bal_array_float_compare(a, a) == EQ);
    assert(_bal_array_float_compare(a, b) == LT);
    assert(_bal_array_float_compare(b, a) == GT);

    TaggedPtr c = getArr(); // [0.1, 2.0, 0.33, 0.1]
    _Barray__push(c, _bal_float_to_tagged(0.1));
    _Barray__push(c, _bal_float_to_tagged(2.0));
    _Barray__push(c, _bal_float_to_tagged(0.33));
    _Barray__push(c, _bal_float_to_tagged(0.1));

    assert(_bal_array_float_compare(a, c) == LT);
    assert(_bal_array_float_compare(c, a) == GT);

    TaggedPtr d = getNil();
    assert(_bal_array_float_compare(a, d) == UN);
    assert(_bal_array_float_compare(d, a) == UN);

    TaggedPtr e = getArr(); // [0.1, (), 0.33]
    _Barray__push(e, _bal_float_to_tagged(0.1));
    _Barray__push(e, getNil());
    _Barray__push(e, _bal_float_to_tagged(0.33));
    assert(_bal_array_float_compare(a, e) == UN);
    assert(_bal_array_float_compare(e, a) == UN);
}

void testIntArr() {
    TaggedPtr a = getArr(); // [1, 2, 3]
    _Barray__push(a, _bal_int_to_tagged(1));
    _Barray__push(a, _bal_int_to_tagged(2));
    _Barray__push(a, _bal_int_to_tagged(3));

    TaggedPtr b = getArr(); // [1, 4, 3]
    _Barray__push(b, _bal_int_to_tagged(1));
    _Barray__push(b, _bal_int_to_tagged(4));
    _Barray__push(b, _bal_int_to_tagged(3));

    assert(_bal_array_int_compare(a, a) == EQ);
    assert(_bal_array_int_compare(a, b) == LT);
    assert(_bal_array_int_compare(b, a) == GT);

    TaggedPtr c = getArr(); // [1, 2, 3, 1]
    _Barray__push(c, _bal_int_to_tagged(1));
    _Barray__push(c, _bal_int_to_tagged(2));
    _Barray__push(c, _bal_int_to_tagged(3));
    _Barray__push(c, _bal_int_to_tagged(1));

    assert(_bal_array_int_compare(a, c) == LT);
    assert(_bal_array_int_compare(c, a) == GT);

    TaggedPtr d = getNil();
    assert(_bal_array_int_compare(a, d) == UN);
    assert(_bal_array_int_compare(d, a) == UN);

    TaggedPtr e = getArr(); // [1, (), 3]
    _Barray__push(e, _bal_int_to_tagged(1));
    _Barray__push(e, getNil());
    _Barray__push(e, _bal_int_to_tagged(3));
    assert(_bal_array_int_compare(a, e) == UN);
    assert(_bal_array_int_compare(e, a) == UN);
}

HASH_DEFINE_KEY;

int main() {
    testIntArr();
    testFloatArr();
    return 0;
}
