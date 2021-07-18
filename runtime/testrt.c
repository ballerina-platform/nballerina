#include "balrt.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <assert.h>
#include "hash.h"


#define NSTRINGS 2*1024

static TaggedPtr randSmallString() {
    uint8_t nBytes = rand() & 0xFF;
    int size = smallStringSize(nBytes);
    SmallStringPtr p = _bal_alloc(size);
    memset(p, 0, size);
    p->length = nBytes;
    for (int i = 0; i < nBytes; i++)
        p->bytes[i] = (rand() & 0x3) << 5;
    return ptrAddFlags(p, (uint64_t)TAG_STRING << TAG_SHIFT);
}

static TaggedPtr randMediumString() {
    uint16_t nBytes = rand() & 0xFF;
    int size = mediumStringSize(nBytes);
    MediumStringPtr p = _bal_alloc(size);
    memset(p, 0, size);
    p->lengthInBytes = nBytes;
    p->lengthInCodePoints = nBytes;
    for (int i = 0; i < nBytes; i++)
        p->bytes[i] = (rand() & 0x3) << 5;
    return ptrAddFlags(p, ((uint64_t)TAG_STRING << TAG_SHIFT)|STRING_MEDIUM_FLAG);
}

static TaggedPtr copySmallString(TaggedPtr tp) {
    SmallStringPtr s = taggedToPtr(tp);
    int len = s->length;
    int size = smallStringSize(len);
    SmallStringPtr p = _bal_alloc(size);
    memcpy(p, s, size);
    return ptrAddFlags(p, ((uint64_t)TAG_STRING << TAG_SHIFT));
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
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * NSTRINGS * 3);
    int i;
    int j = 0;
    for (i = 0; i < NSTRINGS; i++) {
        strs[j] = randSmallString();
        strs[j + 1] = copySmallString(strs[j]);
        j += 2;
        strs[j++] = randMediumString();
    }
    for (i = 0; i < NSTRINGS*3; i++) {
        for (j = i; j < NSTRINGS*3; j++) {
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

#define NHASH NSTRINGS*NSTRINGS

void testStringHash() {
    for (int i = 0; i < NHASH; i++)
        checkSmallStringHash(randSmallString());
    for (int i = 0; i < NHASH; i++)
        checkMediumStringHash(randMediumString());
}

HASH_DEFINE_KEY;

int main() {
    srand(1);
    testStringCmp();
    testStringEq();
    testStringHash();
    return 0;
}