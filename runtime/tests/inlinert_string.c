#include "string_utils.h"
#include "../balrt_inline.h"

void testStringNilCmp() {
    TaggedPtr a = makeString("abc");
    TaggedPtr b = makeString("abd");
    TaggedPtr c = makeString("abb");
    TaggedPtr nil = getNil();
    assert(_bal_string_compare(a, nil) == COMPARE_UN);
    assert(_bal_string_compare(b, nil) == COMPARE_UN);
    assert(_bal_string_compare(c, nil) == COMPARE_UN);
    assert(_bal_string_compare(nil, a) == COMPARE_UN);
    assert(_bal_string_compare(nil, b) == COMPARE_UN);
    assert(_bal_string_compare(nil, c) == COMPARE_UN);
    assert(_bal_string_compare(nil, nil) == COMPARE_EQ);
}

void testStringStringCmp() {
    TaggedPtr a = makeString("abc");
    TaggedPtr b = makeString("abb");
    assert(_bal_string_compare(a, a) == COMPARE_EQ);
    assert(_bal_string_compare(a, b) == COMPARE_GT);

    assert(_bal_string_compare(b, a) == COMPARE_LT);
    assert(_bal_string_compare(b, b) == COMPARE_EQ);
}

HASH_DEFINE_KEY;

int main() {
    testStringNilCmp();
    testStringStringCmp();
    return 0;
}
