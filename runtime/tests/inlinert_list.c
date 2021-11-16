#include "string_utils.h"
#include "../balrt_inline.h"
#include <stdio.h>

ListDesc DESC_INT = { 0, _bal_list_get, _bal_list_set, BITSET_MEMBER_TYPE(129) };
ListDesc DESC_FLOAT = { 1, _bal_list_get, _bal_list_set, BITSET_MEMBER_TYPE(257) };
ListDesc DESC_STRING = { 2, _bal_list_get, _bal_list_set, BITSET_MEMBER_TYPE(1025) };

TaggedPtr getArr(ListDescPtr desc) {
    GC TaggedPtr *members =  _bal_alloc(sizeof(TaggedPtr));
    GC TaggedPtrArray *arr = _bal_alloc(sizeof(TaggedPtrArray));
    arr->length = 0;
    arr->capacity = 0;
    arr-> members = members;
    ListPtr ptr = _bal_alloc(sizeof(ListDescPtr) + sizeof(GenericArray) + sizeof(TaggedPtrArray));
    ptr->desc = desc;
    ptr->tpArray = *arr;
    return ptrAddShiftedTag(ptr, ((uint64_t)TAG_LIST_RO|TAG_LIST_RW) << TAG_SHIFT);
}

void testStringArr() {
    TaggedPtr a = getArr(&DESC_STRING); // ["abc", "abcd", "abb"]
    BAL_LANG_ARRAY_NAME(push)(a, makeString("abc"));
    BAL_LANG_ARRAY_NAME(push)(a, makeString("abcd"));
    BAL_LANG_ARRAY_NAME(push)(a, makeString("abb"));

    TaggedPtr b = getArr(&DESC_STRING); // ["abc", "xyz", "abb"]
    BAL_LANG_ARRAY_NAME(push)(b, makeString("abc"));
    BAL_LANG_ARRAY_NAME(push)(b, makeString("xyz"));
    BAL_LANG_ARRAY_NAME(push)(b, makeString("abb"));

    assert(_bal_array_float_compare(a, a) == COMPARE_EQ);
    assert(_bal_array_float_compare(a, b) == COMPARE_LT);
    assert(_bal_array_float_compare(b, a) == COMPARE_GT);

    TaggedPtr c = getArr(&DESC_STRING); // ["abc", "abcd", "abb", "abc"]
    BAL_LANG_ARRAY_NAME(push)(c, makeString("abc"));
    BAL_LANG_ARRAY_NAME(push)(c, makeString("abcd"));
    BAL_LANG_ARRAY_NAME(push)(c, makeString("abb"));
    BAL_LANG_ARRAY_NAME(push)(c, makeString("abc"));

    assert(_bal_array_float_compare(a, c) == COMPARE_LT);
    assert(_bal_array_float_compare(c, a) == COMPARE_GT);

    TaggedPtr d = getNil();
    assert(_bal_array_float_compare(a, d) == COMPARE_UN);
    assert(_bal_array_float_compare(d, a) == COMPARE_UN);

    TaggedPtr e = getArr(&DESC_STRING); // ["abc", (), "abb"]
    BAL_LANG_ARRAY_NAME(push)(e, makeString("abc"));
    BAL_LANG_ARRAY_NAME(push)(e, getNil());
    BAL_LANG_ARRAY_NAME(push)(e, makeString("abb"));
    assert(_bal_array_float_compare(a, e) == COMPARE_UN);
    assert(_bal_array_float_compare(e, a) == COMPARE_UN);
}

void testFloatArr() {
    TaggedPtr a = getArr(&DESC_FLOAT); // [0.1, 2.0, 0.33]
    BAL_LANG_ARRAY_NAME(push)(a, _bal_float_to_tagged(0.1));
    BAL_LANG_ARRAY_NAME(push)(a, _bal_float_to_tagged(2.0));
    BAL_LANG_ARRAY_NAME(push)(a, _bal_float_to_tagged(0.33));

    TaggedPtr b = getArr(&DESC_FLOAT); // [0.1, 4, 0.33]
    BAL_LANG_ARRAY_NAME(push)(b, _bal_float_to_tagged(0.1));
    BAL_LANG_ARRAY_NAME(push)(b, _bal_float_to_tagged(4));
    BAL_LANG_ARRAY_NAME(push)(b, _bal_float_to_tagged(0.33));

    assert(_bal_array_float_compare(a, a) == COMPARE_EQ);
    assert(_bal_array_float_compare(a, b) == COMPARE_LT);
    assert(_bal_array_float_compare(b, a) == COMPARE_GT);

    TaggedPtr c = getArr(&DESC_FLOAT); // [0.1, 2.0, 0.33, 0.1]
    BAL_LANG_ARRAY_NAME(push)(c, _bal_float_to_tagged(0.1));
    BAL_LANG_ARRAY_NAME(push)(c, _bal_float_to_tagged(2.0));
    BAL_LANG_ARRAY_NAME(push)(c, _bal_float_to_tagged(0.33));
    BAL_LANG_ARRAY_NAME(push)(c, _bal_float_to_tagged(0.1));

    assert(_bal_array_float_compare(a, c) == COMPARE_LT);
    assert(_bal_array_float_compare(c, a) == COMPARE_GT);

    TaggedPtr d = getNil();
    assert(_bal_array_float_compare(a, d) == COMPARE_UN);
    assert(_bal_array_float_compare(d, a) == COMPARE_UN);

    TaggedPtr e = getArr(&DESC_FLOAT); // [0.1, (), 0.33]
    BAL_LANG_ARRAY_NAME(push)(e, _bal_float_to_tagged(0.1));
    BAL_LANG_ARRAY_NAME(push)(e, getNil());
    BAL_LANG_ARRAY_NAME(push)(e, _bal_float_to_tagged(0.33));
    assert(_bal_array_float_compare(a, e) == COMPARE_UN);
    assert(_bal_array_float_compare(e, a) == COMPARE_UN);
}

void testIntArr() {
    TaggedPtr a = getArr(&DESC_INT); // [1, 2, 3]
    BAL_LANG_ARRAY_NAME(push)(a, _bal_int_to_tagged(1));
    BAL_LANG_ARRAY_NAME(push)(a, _bal_int_to_tagged(2));
    BAL_LANG_ARRAY_NAME(push)(a, _bal_int_to_tagged(3));

    TaggedPtr b = getArr(&DESC_INT); // [1, 4, 3]
    BAL_LANG_ARRAY_NAME(push)(b, _bal_int_to_tagged(1));
    BAL_LANG_ARRAY_NAME(push)(b, _bal_int_to_tagged(4));
    BAL_LANG_ARRAY_NAME(push)(b, _bal_int_to_tagged(3));

    assert(_bal_array_int_compare(a, a) == COMPARE_EQ);
    assert(_bal_array_int_compare(a, b) == COMPARE_LT);
    assert(_bal_array_int_compare(b, a) == COMPARE_GT);

    TaggedPtr c = getArr(&DESC_INT); // [1, 2, 3, 1]
    BAL_LANG_ARRAY_NAME(push)(c, _bal_int_to_tagged(1));
    BAL_LANG_ARRAY_NAME(push)(c, _bal_int_to_tagged(2));
    BAL_LANG_ARRAY_NAME(push)(c, _bal_int_to_tagged(3));
    BAL_LANG_ARRAY_NAME(push)(c, _bal_int_to_tagged(1));

    assert(_bal_array_int_compare(a, c) == COMPARE_LT);
    assert(_bal_array_int_compare(c, a) == COMPARE_GT);

    TaggedPtr d = getNil();
    assert(_bal_array_int_compare(a, d) == COMPARE_UN);
    assert(_bal_array_int_compare(d, a) == COMPARE_UN);

    TaggedPtr e = getArr(&DESC_INT); // [1, (), 3]
    BAL_LANG_ARRAY_NAME(push)(e, _bal_int_to_tagged(1));
    BAL_LANG_ARRAY_NAME(push)(e, getNil());
    BAL_LANG_ARRAY_NAME(push)(e, _bal_int_to_tagged(3));
    assert(_bal_array_int_compare(a, e) == COMPARE_UN);
    assert(_bal_array_int_compare(e, a) == COMPARE_UN);
}

HASH_DEFINE_KEY;

int main() {
    testIntArr();
    testFloatArr();
    return 0;
}
