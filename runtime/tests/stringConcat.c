#include "stringUtils.h"

void testStringConcatAssociative() {
    assert(handPickedCount % 3 == 0);
    int totalStrs = NTESTS * 3 + handPickedCount;
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * totalStrs);
    int i;
    for (i = 0; i < NTESTS*3; i++) {
        strs[i] = randAsciiString(rand() & 0xFFFF);
    }
    for (i = 0; i < handPickedCount; i++) {
        strs[NTESTS*3 + i] = randAsciiString(handPickedLargeLen[i]);
    }
    for (i = 0; i < totalStrs; i = i + 3) {
        int64_t expectedLen = stringLen(strs[i]) + 
                              stringLen(strs[i + 1]) +
                              stringLen(strs[i + 2]);
        TaggedPtr s1 = _bal_string_concat(strs[i], _bal_string_concat(strs[i + 1], strs[i + 2]));
        TaggedPtr s2 = _bal_string_concat(_bal_string_concat(strs[i], strs[i + 1]), strs[i + 2]);
        assert(stringLen(s1) == expectedLen);
        int cmp = _bal_string_cmp(s1, s2);  
        assert(cmp == 0);
    }
    free(strs);
}

void testStringConcat() {
    int totalStrs = NTESTS + handPickedCount;
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * totalStrs);
    int i;
    for (i = 0; i < NTESTS; i++) {
        strs[i] = randAsciiString(rand() & 0xFFFFF);
    }
    for (i = 0; i < handPickedCount; i++) {
        strs[NTESTS + i] = randAsciiString(handPickedLargeLen[i]);
    }
    i = 0;
    while (i < totalStrs) {
        int concatUpTo = min(i + (rand() & 0xF), totalStrs);
        int j;
        TaggedPtr p = strs[i];
        uint64_t expectedLen = taggedStringLength(p).nBytes;
        for (j = i + 1; j < concatUpTo; j++) {
            expectedLen += taggedStringLength(strs[j]).nBytes;
            p = _bal_string_concat(p, strs[j]);
        }

        char *bytes = taggedStringBytes(&p);
        uint64_t offset = 0;
        for (j = i; j < concatUpTo; j++) {
            int64_t jLen = taggedStringLength(strs[j]).nBytes;
            assert(memcmp(bytes + offset, taggedStringBytes(&strs[j]), jLen) == 0);
            offset += jLen;
        }
        i = concatUpTo;
    }
    free(strs);
}

HASH_DEFINE_KEY;

int main() {
    srand(1);
    testStringConcatAssociative();
    testStringConcat();
    return 0;
}
