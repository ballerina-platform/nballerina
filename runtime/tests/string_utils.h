#include "test_utils.h"

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

static void checkStringEq(TaggedPtr tp1, TaggedPtr tp2, int expect) {
    assert(taggedStringEqual(tp1, tp2) == expect);
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
