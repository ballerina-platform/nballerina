#include "string_utils.h"
#include "list_utils.h"
#include "../balrt_inline.h"
#include <stdio.h>

ListDesc DESC_INT = LIST_DESC_INIT_INT_ARRAY(0);
ListDesc DESC_INT_NIL = LIST_DESC_INIT_GENERIC(0, 1 << TAG_INT | 1 << TAG_NIL);
ListDesc DESC_FLOAT = LIST_DESC_INIT_FLOAT_ARRAY(4);
ListDesc DESC_FLOAT_NIL = LIST_DESC_INIT_GENERIC(12, 1 << TAG_FLOAT | 1 << TAG_NIL);
ListDesc DESC_STRING = LIST_DESC_INIT_GENERIC(100, 1 << TAG_STRING);
ListDesc DESC_STRING_NIL = LIST_DESC_INIT_GENERIC(150, 1 << TAG_STRING | 1 << TAG_NIL);

TaggedPtr constructListWithDesc(ListDescPtr desc) {
    GC TaggedPtr *members =  _bal_alloc(sizeof(TaggedPtr));
    GC TaggedPtrArray *arr = _bal_alloc(sizeof(TaggedPtrArray));
    arr->length = 0;
    arr->capacity = 0;
    arr-> members = members;
    ListPtr ptr = _bal_alloc(sizeof(ListDescPtr) + sizeof(GenericArray) + sizeof(TaggedPtrArray));
    ptr->desc = desc;
    ptr->tpArray = *arr;
    return ptrAddShiftedTag(ptr, ((uint64_t)TAG_LIST) << TAG_SHIFT);
}

TaggedPtr constructIntList() {
    return constructListWithDesc(&DESC_INT);
}

TaggedPtr constructIntNilList() {
    return constructListWithDesc(&DESC_INT_NIL);
}

TaggedPtr constructFloatList() {
    return constructListWithDesc(&DESC_FLOAT);
}

TaggedPtr constructFloatNilList() {
    return constructListWithDesc(&DESC_FLOAT_NIL);
}

TaggedPtr constructStringList() {
    return constructListWithDesc(&DESC_STRING);
}

TaggedPtr constructStringNilList() {
    return constructListWithDesc(&DESC_STRING_NIL);
}

void pushString(TaggedPtr l, const char* str) {
    BAL_LANG_ARRAY_NAME(push)(l, makeString(str));
}

void pushInt(TaggedPtr l, int64_t i) {
    BAL_LANG_ARRAY_NAME(push)(l, _bal_int_to_tagged(i));
}

void pushFloat(TaggedPtr l, double f) {
    BAL_LANG_ARRAY_NAME(push)(l, _bal_float_to_tagged(f));
}

void pushNil(TaggedPtr l) {
    BAL_LANG_ARRAY_NAME(push)(l, getNil());
}

void testStringArr(TaggedPtr (*constructList)()) {
    TaggedPtr a = constructList(); // ["abc", "abcd", "abb"]
    pushString(a, "abc");
    pushString(a, "abcd");
    pushString(a, "abb");

    TaggedPtr b = constructList(); // ["abc", "xyz", "abb"]
    pushString(b, "abc");
    pushString(b, "xyz");
    pushString(b, "abb");

    assert(_bal_array_string_compare(a, a) == COMPARE_EQ);
    assert(_bal_array_string_compare(a, b) == COMPARE_LT);
    assert(_bal_array_string_compare(b, a) == COMPARE_GT);

    TaggedPtr c = constructList(); // ["abc", "abcd", "abb", "abc"]
    pushString(c, "abc");
    pushString(c, "abcd");
    pushString(c, "abb");
    pushString(c, "abc");

    assert(_bal_array_string_compare(a, c) == COMPARE_LT);
    assert(_bal_array_string_compare(c, a) == COMPARE_GT);

    TaggedPtr d = getNil();
    assert(_bal_array_string_compare(a, d) == COMPARE_UN);
    assert(_bal_array_string_compare(d, a) == COMPARE_UN);
}

void testStringNilArr(TaggedPtr (*constructList)()) {
    TaggedPtr a = constructList(); // ["abc", "abcd", "abb"]
    pushString(a, "abc");
    pushString(a, "abcd");
    pushString(a, "abb");

    TaggedPtr e = constructList(); // ["abc", "abcd", "abb"]
    pushString(e, "abc");
    pushNil(e);
    pushString(e, "abb");
    assert(_bal_array_string_compare(a, e) == COMPARE_UN);
    assert(_bal_array_string_compare(e, a) == COMPARE_UN);
}

void testFloatArr(TaggedPtr (*constructList)()) {
    TaggedPtr a = constructList(); // [0.1, 2.0, 0.33]
    pushFloat(a, 0.1);
    pushFloat(a, 2.0);
    pushFloat(a, 0.33);

    TaggedPtr b = constructList(); // [0.1, 4, 0.33]
    pushFloat(b, 0.1);
    pushFloat(b, 4);
    pushFloat(b, 0.33);

    assert(_bal_array_float_compare(a, a) == COMPARE_EQ);
    assert(_bal_array_float_compare(a, b) == COMPARE_LT);
    assert(_bal_array_float_compare(b, a) == COMPARE_GT);

    TaggedPtr c = constructList(); // [0.1, 2.0, 0.33, 0.1]
    pushFloat(c, 0.1);
    pushFloat(c, 2.0);
    pushFloat(c, 0.33);
    pushFloat(c, 0.1);

    assert(_bal_array_float_compare(a, c) == COMPARE_LT);
    assert(_bal_array_float_compare(c, a) == COMPARE_GT);

    TaggedPtr d = getNil();
    assert(_bal_array_float_compare(a, d) == COMPARE_UN);
    assert(_bal_array_float_compare(d, a) == COMPARE_UN);
}

void testFloatNilArr(TaggedPtr (*constructList)()) {
    TaggedPtr a = constructList(); // [0.1, 2.0, 0.33]
    pushFloat(a, 0.1);
    pushFloat(a, 2.0);
    pushFloat(a, 0.33);

    TaggedPtr e = constructList(); // [0.1, (), 0.33]
    pushFloat(e, 0.1);
    pushNil(e);
    pushFloat(e, 0.33);
    assert(_bal_array_float_compare(a, e) == COMPARE_UN);
    assert(_bal_array_float_compare(e, a) == COMPARE_UN);
}

void testIntArr(TaggedPtr (*constructList)()) {
    TaggedPtr a = constructList(); // [1, 2, 3]
    pushInt(a, 1);
    pushInt(a, 2);
    pushInt(a, 3);

    TaggedPtr b = constructList(); // [1, 4, 3]
    pushInt(b, 1);
    pushInt(b, 4);
    pushInt(b, 3);

    assert(_bal_array_int_compare(a, a) == COMPARE_EQ);
    assert(_bal_array_int_compare(a, b) == COMPARE_LT);
    assert(_bal_array_int_compare(b, a) == COMPARE_GT);

    TaggedPtr c = constructList(); // [1, 2, 3, 1]
    pushInt(c, 1);
    pushInt(c, 2);
    pushInt(c, 3);
    pushInt(c, 1);

    assert(_bal_array_int_compare(a, c) == COMPARE_LT);
    assert(_bal_array_int_compare(c, a) == COMPARE_GT);

    TaggedPtr d = getNil();
    assert(_bal_array_int_compare(a, d) == COMPARE_UN);
    assert(_bal_array_int_compare(d, a) == COMPARE_UN);
}

void testIntNilArr(TaggedPtr (*constructList)()) {
    TaggedPtr a = constructList(); // [1, 2, 3]
    pushInt(a, 1);
    pushInt(a, 2);
    pushInt(a, 3);

    TaggedPtr e = constructList(&DESC_INT); // [1, (), 3]
    pushInt(e, 1);
    pushNil(e);
    pushInt(e, 3);
    assert(_bal_array_int_compare(a, e) == COMPARE_UN);
    assert(_bal_array_int_compare(e, a) == COMPARE_UN);
}

HASH_DEFINE_KEY;

int main() {
    testIntArr(constructIntList);
    testIntArr(constructIntNilList);
    testIntNilArr(constructIntNilList);
    testFloatArr(constructFloatList);
    testFloatArr(constructFloatNilList);
    testFloatNilArr(constructFloatNilList);
    testStringArr(constructStringList);
    testStringArr(constructStringNilList);
    testStringNilArr(constructStringNilList);
    return 0;
}
