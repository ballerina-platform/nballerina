#include "balrt.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "hash.h"

#define NTESTS 2*1024

static int min(int n1, int n2) {
    return (n1 > n2 ) ? n2 : n1;
}

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


#define NRANDOM 2

static TaggedPtr randAsciiString(int nBytes) {
    TaggedPtr tp;
    char *bytes = _bal_string_alloc(nBytes, nBytes, &tp);

    memset(bytes, 'A', nBytes);

    int nRandom =  min(NRANDOM, nBytes); // avoid division by zero
    for (int i = 0; i < nRandom; i++) {
        bytes[rand() % nBytes] = rand() & 0x7F;
        // Put some randomness at the end
        // to check handling of padding
        bytes[nBytes - 1 - i] = rand() & 0x7F;
    }    
    return tp;
}

static TaggedPtr randSmallString() {
    return randAsciiString(rand() & 0x7);
}

static TaggedPtr randMediumString() {
    int size = rand() & 0xFFFF;
    if (size <= 0xFF) {
        size |= 0x100;
    }
    return randAsciiString(size);
}

static TaggedPtr copyString(TaggedPtr tp) {
    StringLength len = taggedStringLength(tp);
    TaggedPtr copy;
    char *bytes = _bal_string_alloc(len.nBytes, len.nCodePoints, &copy);
    memcpy(bytes, taggedStringBytes(&tp), len.nBytes);
    return copy;
}

int64_t stringLen(TaggedPtr p) {
    StringLength len = taggedStringLength(p);
    return len.nCodePoints;
}

static int64_t stringCmpRef(TaggedPtr tp1, TaggedPtr tp2) {
    StringLength len1 = taggedStringLength(tp1);
    StringLength len2 = taggedStringLength(tp2);
    int64_t minLength = len1.nBytes <= len2.nBytes ? len1.nBytes : len2.nBytes;
    int result = memcmp(taggedStringBytes(&tp1), taggedStringBytes(&tp2), minLength);
    if (result != 0) {
        return result;
    }
    return len1.nBytes - len2.nBytes;
}

static int sign(int64_t n) {
    return n == 0 ? 0 : (n < 0 ? -1 : 1);
}

static void checkStringCmp(TaggedPtr tp1, TaggedPtr tp2, int expect) {
    assert(sign(_bal_string_cmp(tp1, tp2)) == expect);
}

static inline bool isContinuationByte(unsigned char c) {
    return (c & 0xC0) == 0x80;
}

static TaggedPtr makeString(const char *s) {
    int64_t nBytes = strlen(s);
    int64_t i;
    int64_t nContinue = 0;
    for (i = 0; i < nBytes; i++) {
        if (isContinuationByte(s[i])) {
            ++nContinue;
        }
    }
    TaggedPtr tp;
    char *bytes = _bal_string_alloc(nBytes, nBytes - nContinue, &tp);
    memcpy(bytes, s, nBytes);
    return tp;
}

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

static void checkStringEq(TaggedPtr tp1, TaggedPtr tp2, int expect) {
    assert(_bal_string_eq(tp1, tp2) == expect);
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

static uint64_t smallStringHashRef(TaggedPtr tp) {
    int len = taggedStringLength(tp).nBytes;
    uint64_t data = 0;
    memcpy(&data, taggedStringBytes(&tp), len);
    HashState h;
    hashInit(&h);
    hashUpdatePartial(&h, data, len);
    return hashFinish(&h);
}

static uint64_t mediumStringHashRef(TaggedPtr tp) {
    MediumStringPtr s = taggedToPtr(tp);
    int len = s->lengthInBytes;
    int paddedLength = (len + 7) & ~7;
    uint64_t *mem = calloc(paddedLength, 1);
    if (len > 4) {
        memmove(mem, s->bytes + 4, len - 4);
        memcpy((char *)mem + len - 4, s->bytes, 4);
    }
    else {
        memcpy(mem, s->bytes, len);
    }
    HashState h;
    hashInit(&h);
    int nInts = len / 8;
    for (int i = 0; i < nInts; i++)
        hashUpdate(&h, mem[i]);
    int left = len % 8;
    if (left) {
        hashUpdatePartial(&h, mem[nInts], left);
    }
    return hashFinish(&h);
}

static void checkSmallStringHash(TaggedPtr tp) {
    uint64_t actual = _bal_string_hash(tp);
    uint64_t expect = smallStringHashRef(tp);
    assert(actual == expect);
}

static void checkMediumStringHash(TaggedPtr tp) {
    uint64_t actual = _bal_string_hash(tp);
    uint64_t expect = mediumStringHashRef(tp);
    assert(actual == expect);
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
    return 0;
}
