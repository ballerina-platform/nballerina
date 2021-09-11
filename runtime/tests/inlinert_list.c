#include "string_utils.h"
#include "../balrt_inline.h"
#include <stdio.h>

#define DESC_INT 129
#define DESC_FLOAT 257
#define DESC_STRING 1025

TaggedPtr getArr(uint64_t desc) {
    GC TaggedPtr *members =  _bal_alloc(sizeof(TaggedPtr));
    GC TaggedPtrArray *arr = _bal_alloc(sizeof(TaggedPtrArray));
    arr->length = 0;
    arr->capacity = 0;
    arr-> members = members;
    ListPtr ptr = _bal_alloc(sizeof(ListDesc) + sizeof(GenericArray) + sizeof(TaggedPtrArray));
    ptr->desc = desc;
    ptr->tpArray = *arr;
    return ptrAddShiftedTag(ptr, ((uint64_t)TAG_LIST_RO|TAG_LIST_RW) << TAG_SHIFT);
}

void testStringArr() {
    TaggedPtr a = getArr(DESC_STRING); // ["abc", "abcd", "abb"]
    _Barray__push(a, makeString("abc"));
    _Barray__push(a, makeString("abcd"));
    _Barray__push(a, makeString("abb"));

    TaggedPtr b = getArr(DESC_STRING); // ["abc", "xyz", "abb"]
    _Barray__push(b, makeString("abc"));
    _Barray__push(b, makeString("xyz"));
    _Barray__push(b, makeString("abb"));

    assert(_bal_array_float_compare(a, a) == EQ);
    assert(_bal_array_float_compare(a, b) == LT);
    assert(_bal_array_float_compare(b, a) == GT);

    TaggedPtr c = getArr(DESC_STRING); // ["abc", "abcd", "abb", "abc"]
    _Barray__push(c, makeString("abc"));
    _Barray__push(c, makeString("abcd"));
    _Barray__push(c, makeString("abb"));
    _Barray__push(c, makeString("abc"));

    assert(_bal_array_float_compare(a, c) == LT);
    assert(_bal_array_float_compare(c, a) == GT);

    TaggedPtr d = getNil();
    assert(_bal_array_float_compare(a, d) == UN);
    assert(_bal_array_float_compare(d, a) == UN);

    TaggedPtr e = getArr(DESC_STRING); // ["abc", (), "abb"]
    _Barray__push(e, makeString("abc"));
    _Barray__push(e, getNil());
    _Barray__push(e, makeString("abb"));
    assert(_bal_array_float_compare(a, e) == UN);
    assert(_bal_array_float_compare(e, a) == UN);
}

void testFloatArr() {
    TaggedPtr a = getArr(DESC_FLOAT); // [0.1, 2.0, 0.33]
    _Barray__push(a, _bal_float_to_tagged(0.1));
    _Barray__push(a, _bal_float_to_tagged(2.0));
    _Barray__push(a, _bal_float_to_tagged(0.33));

    TaggedPtr b = getArr(DESC_FLOAT); // [0.1, 4, 0.33]
    _Barray__push(b, _bal_float_to_tagged(0.1));
    _Barray__push(b, _bal_float_to_tagged(4));
    _Barray__push(b, _bal_float_to_tagged(0.33));

    assert(_bal_array_float_compare(a, a) == EQ);
    assert(_bal_array_float_compare(a, b) == LT);
    assert(_bal_array_float_compare(b, a) == GT);

    TaggedPtr c = getArr(DESC_FLOAT); // [0.1, 2.0, 0.33, 0.1]
    _Barray__push(c, _bal_float_to_tagged(0.1));
    _Barray__push(c, _bal_float_to_tagged(2.0));
    _Barray__push(c, _bal_float_to_tagged(0.33));
    _Barray__push(c, _bal_float_to_tagged(0.1));

    assert(_bal_array_float_compare(a, c) == LT);
    assert(_bal_array_float_compare(c, a) == GT);

    TaggedPtr d = getNil();
    assert(_bal_array_float_compare(a, d) == UN);
    assert(_bal_array_float_compare(d, a) == UN);

    TaggedPtr e = getArr(DESC_FLOAT); // [0.1, (), 0.33]
    _Barray__push(e, _bal_float_to_tagged(0.1));
    _Barray__push(e, getNil());
    _Barray__push(e, _bal_float_to_tagged(0.33));
    assert(_bal_array_float_compare(a, e) == UN);
    assert(_bal_array_float_compare(e, a) == UN);
}

void testIntArr() {
    TaggedPtr a = getArr(DESC_INT); // [1, 2, 3]
    _Barray__push(a, _bal_int_to_tagged(1));
    _Barray__push(a, _bal_int_to_tagged(2));
    _Barray__push(a, _bal_int_to_tagged(3));

    TaggedPtr b = getArr(DESC_INT); // [1, 4, 3]
    _Barray__push(b, _bal_int_to_tagged(1));
    _Barray__push(b, _bal_int_to_tagged(4));
    _Barray__push(b, _bal_int_to_tagged(3));

    assert(_bal_array_int_compare(a, a) == EQ);
    assert(_bal_array_int_compare(a, b) == LT);
    assert(_bal_array_int_compare(b, a) == GT);

    TaggedPtr c = getArr(DESC_INT); // [1, 2, 3, 1]
    _Barray__push(c, _bal_int_to_tagged(1));
    _Barray__push(c, _bal_int_to_tagged(2));
    _Barray__push(c, _bal_int_to_tagged(3));
    _Barray__push(c, _bal_int_to_tagged(1));

    assert(_bal_array_int_compare(a, c) == LT);
    assert(_bal_array_int_compare(c, a) == GT);

    TaggedPtr d = getNil();
    assert(_bal_array_int_compare(a, d) == UN);
    assert(_bal_array_int_compare(d, a) == UN);

    TaggedPtr e = getArr(DESC_INT); // [1, (), 3]
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
