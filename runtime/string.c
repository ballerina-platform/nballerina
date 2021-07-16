#include "balrt.h"
#include <string.h>

// Most of this assumes little-endian
#define bswap(n) __builtin_bswap64(n)

static int64_t stringCmpGeneric(TaggedPtr tp1, TaggedPtr tp2);
static int64_t stringCmpSmall(SmallStringPtr s1, SmallStringPtr s2);
static int64_t stringCmpMedium(MediumStringPtr s1, MediumStringPtr s2);
static int64_t memcmp8(IntPtr p1, IntPtr p2, int64_t n);

int64_t _bal_string_cmp(TaggedPtr tp1, TaggedPtr tp2) {
    if (tp1 == tp2) {
        return 0;
    }
    uint64_t bits1 = taggedPtrBits(tp1);
    uint64_t bits2 = taggedPtrBits(tp2);
    if (unlikely(((bits1 ^ bits2) & 0x7) != 0)) {
        return stringCmpGeneric(tp1, tp2);
    }
    UntypedPtr p1 = taggedToPtr(tp1);
    UntypedPtr p2 = taggedToPtr(tp2);
    if (likely((bits1 & 0x7) == 0)) {
        return stringCmpSmall(p1, p2);
    }
    else {
        return stringCmpMedium(p1, p2);
    }
}

static int64_t stringCmpGeneric(TaggedPtr tp1, TaggedPtr tp2) {
    struct StringData sd1 = _bal_tagged_to_string(tp1);
    struct StringData sd2 = _bal_tagged_to_string(tp2);
    int64_t minLength = sd1.lengthInBytes <= sd2.lengthInBytes ? sd1.lengthInBytes : sd2.lengthInBytes;
    int result = memcmp(sd1.bytes, sd2.bytes, minLength);
    if (result != 0) {
        return result;
    }
    return sd1.lengthInBytes - sd2.lengthInBytes;
}

static int64_t stringCmpSmall(SmallStringPtr s1, SmallStringPtr s2) {
    uint64_t h1 = *(IntPtr)s1;
    uint64_t h2 = *(IntPtr)s2;
    int len1 = h1 & 0xFF;
    int len2 = h2 & 0xFF;
    int64_t b1 = bswap(h1) & ((1UL << 56) - 1);
    int64_t b2 = bswap(h2) & ((1UL << 56) - 1);
    int64_t d = b1 - b2;
    if (d != 0) {
        return d;
    }
    int minLen = len1 <= len2 ? len1 : len2;
    if (minLen <= 7) {
        return len1 - len2;
    }
    int nInts = smallStringSize(minLen) >> 3;
    int64_t result = memcmp8((IntPtr)s1 + 1, (IntPtr)s2 + 1, nInts - 1);
    if (result != 0) {
        return result;
    }
    return len1 - len2;
}

static int64_t stringCmpMedium(MediumStringPtr s1, MediumStringPtr s2) {
    uint64_t h1 = *(IntPtr)s1;
    uint64_t h2 = *(IntPtr)s2;
    int len1 = h1 & 0xFFFF;
    int len2 = h2 & 0xFFFF;
    int64_t b1 = bswap(h1) & ((1UL << 32) - 1);
    int64_t b2 = bswap(h2) & ((1UL << 32) - 1);
    int64_t d = b1 - b2;
    if (d != 0) {
        return d;
    }
    int minLen = len1 <= len2 ? len1 : len2;
    int nInts = mediumStringSize(minLen) >> 3;
    int64_t result = memcmp8((IntPtr)s1 + 1, (IntPtr)s2 + 1, nInts - 1);
    if (result != 0) {
        return result;
    }
    return len1 - len2;
}

// This is like memcmp, but it compares n*8 bytes
// and the pointers must be 8-byte aligned.
static int64_t memcmp8(IntPtr p1, IntPtr p2, int64_t n) {
    for (; n > 0; --n, ++p1, ++p2) {
        uint64_t b1 = *p1;
        uint64_t b2 = *p2;
        if (b1 != b2) {
            b1 = bswap(b1);
            b2 = bswap(b2);
            return b1 < b2 ? -1 : 1;
        }
    }
    return 0;
}



