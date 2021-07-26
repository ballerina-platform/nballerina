#include "utils.h"

#define NTESTS 2*1024

static uint64_t handPickedLargeLen[] = {
    0xFFFFF - 4,
    0xFFFFF - 3,
    0xFFFFF - 2,
    0xFFFFF - 1,
    0xFFFFF,
    0xFFFFF + 1,
    0xFFFFF + 2,
    0xFFFFF + 3,
    0xFFFFF + 4};

// handPickedCount should be devisable by 3 for the associative test to work
static int handPickedCount = sizeof(handPickedLargeLen) / sizeof(handPickedLargeLen[0]);

void testStringCmp() {
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * NTESTS * 3);
    int i;
    int j = 0;
    for (i = 0; i < NTESTS; i++) {
        strs[j] = randSmallString();
        strs[j + 1] = copyString(strs[j]);
        j += 2;
        strs[j++] = randMediumString();
    }
    for (i = 0; i < NTESTS*3; i++) {
        for (j = i; j < NTESTS*3; j++) {
            TaggedPtr s1 = strs[i];
            TaggedPtr s2 = strs[j];
            int cmp = stringCmpRef(s1, s2);
            int expect = sign(cmp);
            checkStringCmp(s1, s2, expect);
            checkStringCmp(s2, s1, -expect);
        }
    }
    free(strs);
}

void testStringEq() {
    checkStringEq(makeString("\xC2\x80"), makeString("\xC2\x81"), false);
}

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


void testStringHash() {
    for (int i = 0; i < NTESTS*NTESTS; i++)
        checkSmallStringHash(randSmallString());
    for (int i = 0; i < NTESTS; i++)
       checkMediumStringHash(randMediumString());
}

void testRandMapping(int len) {
    TaggedPtr *k = malloc(len * sizeof(TaggedPtr));
    TaggedPtr *v = malloc(len * sizeof(TaggedPtr));

    for (int i = 0; i < len; i++) {
        k[i] = randSmallString();
        v[i] = randSmallString();
    }
    TaggedPtr m = _bal_mapping_construct(0);
    for (int i = 0; i < len; i++) {
        bool dup = _bal_mapping_get(m, k[i]) != 0;
        _bal_mapping_set(m, k[i], v[i]);
        if (dup) {
            k[i] = 0;
        }
        else {
            k[i] = copyString(k[i]);
        }
    }
    for (int i = 0; i < len; i++) {
        if (k[i] != 0)
            assert(_bal_mapping_get(m, k[i]) == v[i]);
    }
}

void _validateLargeStringSize(uint64_t lengthInBytes){
    const uint64_t headerSize = 16;
    uint64_t stringSize = largeStringSize(lengthInBytes);
    // assert header size
    assert(stringSize >= headerSize);
    uint64_t stringBodySize = stringSize - headerSize;
    uint64_t sizeBracket = lengthInBytes / 8;
    if (lengthInBytes % 8 == 0) 
        sizeBracket--;
    uint64_t expectedSize = 8 * (sizeBracket + 1);
    assert(expectedSize == stringBodySize);
}

void _validateMediumStringSize(int lengthInBytes){
    const int headerSize = 4;
    int stringSize = mediumStringSize(lengthInBytes);
    assert(stringSize >= headerSize);
    int stringBodySize;
    int expectedSize;
    if (lengthInBytes <= 4) { //?: is this special behaviour indented?
        stringBodySize = stringSize - 4;
        expectedSize = 4;
    }
    else {
        lengthInBytes -= 4;
        stringBodySize = stringSize - 8;
        int sizeBracket = lengthInBytes / 8;
        if (lengthInBytes % 8 == 0) 
            sizeBracket--;
        expectedSize = 8 * (sizeBracket + 1);
    }
    assert(expectedSize == stringBodySize);
}

void _validateSmallStringSize(int lengthInBytes){
    int headerSize = 1;
    int stringSize = smallStringSize(lengthInBytes);
    assert(stringSize >= headerSize);
    int stringBodySize = stringSize;
    int sizeBracket = lengthInBytes / 8;
    int expectedSize = 8 * (sizeBracket + 1);
    assert(expectedSize == stringBodySize);
}

void testLargeStringSize(){
    _validateLargeStringSize(0);
    _validateLargeStringSize(UINT64_MAX);
    for (int i = 0; i < NTESTS; i++)
        _validateLargeStringSize(rand());
}

void testMediumStringSize(){
    _validateMediumStringSize(0);
    // _validateMediumStringSize(INT32_MAX); //?: overflow mediumStringSize
    for (int i = 0; i < NTESTS; i++)
        _validateMediumStringSize(rand());
}

void testSmallStringSize(){
    _validateSmallStringSize(0);
    // _validateSmallStringSize(INT32_MAX); //?: overflow smallStringSize
    for (int i = 0; i < 100; i++)
        _validateSmallStringSize(i);
}

void testMapping() {
    for (int i = 0; i < NTESTS; i++)
        testRandMapping(rand() & 2047);
    testRandMapping(65534);
    testRandMapping(65535);
    testRandMapping(65536);
    testRandMapping(65537);
    testRandMapping(500000);
}

HASH_DEFINE_KEY;

int main() {
    srand(1);
    testStringHash();
    testStringCmp();
    testStringEq();
    testStringConcat();
    testStringConcatAssociative();
    testMapping();
    testLargeStringSize();
    testMediumStringSize();
    testSmallStringSize();
    return 0;
}
