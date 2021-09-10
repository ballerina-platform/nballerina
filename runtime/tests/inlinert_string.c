#include "string_utils.h"
#include "../balrt_inline.h"

void testStringNilCmp() {
    TaggedPtr a = makeString("abc");
    TaggedPtr b = makeString("abd");
    TaggedPtr c = makeString("abb");
    TaggedPtr nil = getNil();
    assert(_bal_string_compare(a, nil) == UN);
    assert(_bal_string_compare(b, nil) == UN);
    assert(_bal_string_compare(c, nil) == UN);
    assert(_bal_string_compare(nil, a) == UN);
    assert(_bal_string_compare(nil, b) == UN);
    assert(_bal_string_compare(nil, c) == UN);
    assert(_bal_string_compare(nil, nil) == EQ);
}

void testStringStringCmp() {
    TaggedPtr a = makeString("abc");
    TaggedPtr b = makeString("abb");
    assert(_bal_string_compare(a, a) == EQ);
    assert(_bal_string_compare(a, b) == GT);

    assert(_bal_string_compare(b, a) == LT);
    assert(_bal_string_compare(b, b) == EQ);
}

HASH_DEFINE_KEY;

int main() {
    testStringNilCmp();
    testStringStringCmp();
    return 0;
}
