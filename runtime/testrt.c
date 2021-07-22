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


#define NRANDOM 2

static TaggedPtr randString(int nBytes) {
    TaggedPtr tp;
    GC char *bytes = _bal_string_alloc(nBytes, nBytes, &tp);

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
    return randString(rand() & 0xFF);
}

static TaggedPtr randMediumString() {
    int size = rand() & 0xFFFF;
    if (size <= 0xFF) {
        size |= 0x100;
    }
    return randString(size);
}

static TaggedPtr copySmallString(TaggedPtr tp) {
    StringData sd = _bal_tagged_to_string(tp);
    TaggedPtr copy;
    GC char *bytes = _bal_string_alloc(sd.lengthInBytes, sd.lengthInCodePoints, &copy);
    memcpy(bytes, sd.bytes, sd.lengthInBytes);
    return copy;
}

int64_t stringLen(TaggedPtr p) {
    StringData data = _bal_tagged_to_string(p);
    return data.lengthInCodePoints;
}

static int64_t stringCmpRef(TaggedPtr tp1, TaggedPtr tp2) {
    StringData sd1 = _bal_tagged_to_string(tp1);
    StringData sd2 = _bal_tagged_to_string(tp2);
    int64_t minLength = sd1.lengthInBytes <= sd2.lengthInBytes ? sd1.lengthInBytes : sd2.lengthInBytes;
    int result = memcmp(sd1.bytes, sd2.bytes, minLength);
    if (result != 0) {
        return result;
    }
    return sd1.lengthInBytes - sd2.lengthInBytes;
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
    int64_t nc = 0;
    for (i = 0; i < nBytes; i++) {
        if (isContinuationByte(s[i])) {
            ++nc;
        }
    }
    assert(nBytes <= 0xFFFF);
    if (nc == 0 && nBytes <= 0xFF) {
        int size = smallStringSize(nBytes);
        SmallStringPtr p = _bal_alloc(size);
        memset(p, 0, size);
        p->length = nBytes;
        memcpy(p->bytes, s, nBytes);
        return ptrAddFlags(p, (uint64_t)TAG_STRING << TAG_SHIFT);
    }
    else {
        int size = mediumStringSize(nBytes);
        MediumStringPtr p = _bal_alloc(size);
        memset(p, 0, size);
        p->lengthInBytes = nBytes;
        p->lengthInCodePoints = nBytes - nc;
        memcpy(p->bytes, s, nBytes);
        return ptrAddFlags(p, ((uint64_t)TAG_STRING << TAG_SHIFT)| STRING_MEDIUM_FLAG);
    }  
}

void testStringCmp() {
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * NTESTS * 3);
    int i;
    int j = 0;
    for (i = 0; i < NTESTS; i++) {
        strs[j] = randSmallString();
        strs[j + 1] = copySmallString(strs[j]);
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
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * NTESTS * 3);
    int i;
    for (i = 0; i < NTESTS*3; i++) {
        // XXX remove masking after BigString
        strs[i] = randString(rand() & 0xFFFF);
    }
    for (i = 0; i < NTESTS*3; i = i + 3) {
        int64_t expectedLen = stringLen(strs[i]) + 
                              stringLen(strs[i + 1]) +
                              stringLen(strs[i + 2]);
        if (expectedLen >= 0xFFFF) {
            // XXX remove when BigString is implimented, and reconsider overflowing of above
            continue;
        }
        TaggedPtr s1 = _bal_string_concat(strs[i], _bal_string_concat(strs[i + 1], strs[i + 2]));
        TaggedPtr s2 = _bal_string_concat(_bal_string_concat(strs[i], strs[i + 1]), strs[i + 2]);
        assert(stringLen(s1) == expectedLen);
        int cmp = _bal_string_cmp(s1, s2);  
        assert(cmp == 0);
    }
    free(strs);
}

void testStringConcat() {
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * NTESTS);
    int i;
    for (i = 0; i < NTESTS; i++) {
        // XXX remove masking after BigString
        strs[i] = randString(rand() & 0xFFFF);
    }
    i = 0;
    while (i < NTESTS) {
        int concatUpTo = min(i + (rand() & 0xF), NTESTS);
        int j;
        TaggedPtr p = strs[i];
        uint64_t expectedLen = _bal_tagged_to_string(p).lengthInBytes;
        for (j = i + 1; j < concatUpTo; j++) {
            expectedLen += _bal_tagged_to_string(strs[j]).lengthInBytes;
            if (expectedLen >= 0xFFFF) { // XXX change after BigString
                concatUpTo = j;
                continue;
            }
            p = _bal_string_concat(p, strs[j]);
        }

        StringData dataP = _bal_tagged_to_string(p);
        uint64_t offset = 0;
        for (j = i; j < concatUpTo; j++) {
            StringData dataJ = _bal_tagged_to_string(strs[j]);
            assert(memcmp(dataP.bytes + offset, dataJ.bytes, dataJ.lengthInBytes) == 0);
            offset += dataJ.lengthInBytes;
        }
        i = concatUpTo;
    }
    free(strs);
}

static uint64_t smallStringHashRef(TaggedPtr tp) {
    SmallStringPtr s = taggedToPtr(tp);
    int len = s->length;
    uint64_t buf[256/8];
    memset(&buf, 0, sizeof(buf));
    if (len > 7) {
        memcpy(buf, s->bytes + 7, len - 7);
        memcpy((char *)buf + len - 7, s->bytes, 7);
    }
    else {
        memcpy(buf, s->bytes, len);
    }
    HashState h;
    hashInit(&h);
    int nInts = len / 8;
    for (int i = 0; i < nInts; i++)
        hashUpdate(&h, buf[i]);
    int left = len % 8;
    if (left) {
        hashUpdatePartial(&h, buf[nInts], left);
    }
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
            k[i] = copySmallString(k[i]);
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
    testStringCmp();
    testStringEq();
    testStringHash();
    testStringConcat();
    testStringConcatAssociative();
    testMapping();
    return 0;
}
