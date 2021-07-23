#include <stdio.h>
#include "balrt.h"
#include "hash.h"
#include <string.h>

// Most of this assumes little-endian
#define bswap(n) __builtin_bswap64(n)

static int64_t stringCmpGeneric(TaggedPtr tp1, TaggedPtr tp2);
static int64_t stringCmpSmall(SmallStringPtr s1, SmallStringPtr s2);
static int64_t stringCmpMedium(MediumStringPtr s1, MediumStringPtr s2);
static int64_t stringCmpLarge(LargeStringPtr s1, LargeStringPtr s2);

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
    int variant = (bits1 & 0x7);
    if (likely(variant == STRING_SMALL_FLAG)) {
        return stringCmpSmall(p1, p2);
    }
    else if (likely(variant == STRING_MEDIUM_FLAG)) {
        return stringCmpMedium(p1, p2);
    }
    else {
        return stringCmpLarge(p1, p2);
    }
}

static int64_t stringCmpGeneric(TaggedPtr tp1, TaggedPtr tp2) {
    StringData sd1 = taggedToStringData(tp1);
    StringData sd2 = taggedToStringData(tp2);
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

static int64_t stringCmpLarge(LargeStringPtr s1, LargeStringPtr s2) {
    int64_t len1 = s1->lengthInBytes;
    int64_t len2 = s2->lengthInBytes;
    int64_t minLen = len1 <= len2 ? len1 : len2;
    int64_t nInts = largeStringSize(minLen) >> 3;
    int64_t result = memcmp8((IntPtr)s1 + 2, (IntPtr)s2 + 2, nInts - 2);
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

// We compute the hash with the first 7 bytes moved after the other bytes
static void smallStringHash(HashState *hp, SmallStringPtr p) {
    IntPtr ip = (IntPtr)p;
    uint64_t start = *ip;
    unsigned len = start & 0xFF;
    start >>= 8;
    if (len <= 7) {
        if (len != 0) 
            hashUpdatePartial(hp, start, len);
        return;
    }
    int nBytes = smallStringSize(len);
    int nInts = nBytes >> 3;
    // nPad is number of zero padding bytes at the end (nPad <= 7)
    int nPad = nBytes - (len + 1);
    int nCompleteInts;
    if (nPad) {
        nCompleteInts = nInts - 1;
    }
    else {
        nCompleteInts = nInts;
    }
    for (int i = 1; i < nCompleteInts; i++) {
        hashUpdate(hp, ip[i]);
    }
    if (!nPad) {      
        hashUpdatePartial(hp, start, 7);
        return;
    }
    uint64_t last = ip[nCompleteInts];

    // fill in the padding bytes of last from bottom bytes of start
    // nPad 1 = shift 56
    // nPad 2 = shift 48
    // nPad 7 = shift 8
    int shift = 8 * (8 - nPad);
    last |= start << shift;
    // we have 7 bytes at the beginning and
    // no more than 7 bytes of padding, so we always fill this
    hashUpdate(hp, last);
    if (nPad == 7) {
        return;
    }
    hashUpdatePartial(hp, start >> (64 - shift), 7 - nPad);    
}

// We compute the hash with the first 4 bytes moved after the other bytes
static void mediumStringHash(HashState *hp, MediumStringPtr p) {
    IntPtr ip = (IntPtr)p;
    uint64_t start = *ip;
    unsigned len = start & 0xFFFF;
    start >>= 32;
    if (len <= 4) {
        if (len != 0)
            hashUpdatePartial(hp, start, len);
        return;
    }
    int nBytes = mediumStringSize(len);

    int nInts = nBytes >> 3;
    int nPad = nBytes - (len + 4);
    int nCompleteInts;
    if (nPad) {
        nCompleteInts = nInts - 1;
    }
    else {
        nCompleteInts = nInts;
    }
    for (int i = 1; i < nCompleteInts; i++) {
        hashUpdate(hp, ip[i]);
    }
    if (!nPad) {      
        hashUpdatePartial(hp, start, 4);
        return;
    }
    uint64_t last = ip[nCompleteInts];
    // fill in the padding bytes of last from bottom 4 bytes of start
    int shift = 8 * (8 - nPad);
    last |= start << shift;
    if (nPad > 4) {
        // cannot fill all the padding from `start` 
        // nPad 5 - 7 bytes
        // nPad 6 - 6 bytes
        // nPad 7 - 5 bytes
        hashUpdatePartial(hp, last, 12 - nPad);
        return;
    } 
    hashUpdate(hp, last);
    if (nPad == 4) {
        return;
    }
    // If we had e.g. 3 bytes of padding, then we would use 3 of the 4 bytes
    // in `start` to fill in the padding, leaving 1 byte left over
    hashUpdatePartial(hp, start >> (64 - shift), 4 - nPad);
}

static void largeStringHash(HashState *hp, LargeStringPtr p) {
    IntPtr ip = (IntPtr)(p->bytes);
    int64_t len = p->lengthInBytes;
    uint64_t nBytes = largeStringSize(len);
    int64_t nInts = nBytes >> 3;
    int nPad = nBytes - (len + 16);
    int64_t nCompleteInts;
    if (nPad) {
        nCompleteInts = nInts - 1;
    }
    else {
        nCompleteInts = nInts;
    }
    for (int64_t i = 2; i < nCompleteInts; i++) {
        hashUpdate(hp, ip[i]); 
    }
    if (nPad) {
        hashUpdatePartial(hp, ip[nCompleteInts], nPad);
    }
}

uint64_t _bal_string_hash(TaggedPtr tp) {
    int variant = taggedPtrBits(tp) & 0x7;
    UntypedPtr p = taggedToPtr(tp);
    HashState h;
    hashInit(&h);
    if (variant == STRING_SMALL_FLAG) {
        smallStringHash(&h, p);
    }
    else if (variant == STRING_MEDIUM_FLAG) {
        mediumStringHash(&h, p);
    }
    else {
        largeStringHash(&h, p);
    }
    return hashFinish(&h);
}

GC char *_bal_string_alloc(uint64_t lengthInBytes, uint64_t lengthInCodePoints, TaggedPtr *resultPtr) {
    GC char *bytes;
    UntypedPtr p;
    int variant;
    if (lengthInBytes <= 0xFF && lengthInCodePoints == lengthInBytes) {
        int len = lengthInBytes;
        int size = smallStringSize(len);
        p = _bal_alloc(size);
        // Make the last 8 bytes of allocated space be 0
        // so that all padding bytes will be 0.
        // This needs to be done before setting the length
        // in the case where only 8 bytes are allocated.
        ((GC uint64_t *)((GC char *)p + size))[-1] = 0;
        SmallStringPtr sp = p;
        sp->length = len;
        bytes = sp->bytes;
        variant = STRING_SMALL_FLAG;
    }
    else if (lengthInBytes <= 0xFFFF) {
        int len = lengthInBytes;
        int size = mediumStringSize(len);
        p = _bal_alloc(size);
        // See comment above
        ((GC uint64_t *)((GC char *)p + size))[-1] = 0;
        MediumStringPtr sp = p;
        sp->lengthInBytes = len;
        sp->lengthInCodePoints = (uint16_t)lengthInCodePoints;
        bytes = sp->bytes;
        variant = STRING_MEDIUM_FLAG;
    }
    else {
        if (unlikely(lengthInBytes > INT64_MAX)) {
            _bal_panic(PANIC_STRING_TOO_LONG);
        }
        uint64_t size = largeStringSize(lengthInBytes);
        p = _bal_alloc(size);
         ((GC uint64_t *)((GC char *)p + size))[-1] = 0;
        LargeStringPtr sp = p;
        sp->lengthInBytes = lengthInBytes;
        sp->lengthInCodePoints = lengthInCodePoints;
        bytes = sp->bytes;
        variant = STRING_LARGE_FLAG;
    }
    *resultPtr = ptrAddFlags(p, ((uint64_t)TAG_STRING << TAG_SHIFT) | variant);
    return bytes;
}


bool _bal_string_eq(TaggedPtr tp1, TaggedPtr tp2) {
    // With hash tables, a lot of the time you are comparing things that are equal
    // so this is worth doing early on.
    if (tp1 == tp2) {
        return true;
    }
    IntPtr p1 = taggedToPtr(tp1);
    IntPtr p2 = taggedToPtr(tp2);
    int64_t h1 = *p1;
    int64_t h2 = *p2;
    if (h1 != h2) {
        return 0;
    }    
    int variant1 = taggedPtrBits(tp1) & 0x7;
    int variant2 = taggedPtrBits(tp2) & 0x7;
    if (unlikely(variant1 != variant2)) {
        return false;
    }
    // number of 64-bit units including the header
    int nInts;
    if (likely(variant1 == STRING_SMALL_FLAG)) {
        int len = h1 & 0xFF;
        nInts = smallStringSize(len) >> 3;
    }
    else if (likely(variant1 == STRING_MEDIUM_FLAG)) {
        int len = h1 & 0xFFFF;
        nInts = mediumStringSize(len) >> 3;
    }
    else {
        nInts = largeStringSize(h1) >> 3;
    }
    while (--nInts > 0) {
        if (*++p1 != *++p2)
            return false;
    }
    return true;
}

TaggedPtr _bal_string_concat(TaggedPtr tp1, TaggedPtr tp2) {
    StringData s1 = taggedToStringData(tp1);
    StringData s2 = taggedToStringData(tp2);
    // _bal_string_alloc will deal with the case where total length is > INT_MAX
    uint64_t byteLen = (uint64_t)s1.lengthInBytes + (uint64_t)s2.lengthInBytes;
    uint64_t cpLen = (uint64_t)s1.lengthInCodePoints + (uint64_t)s2.lengthInCodePoints;
    TaggedPtr result;
    GC char *bytes = _bal_string_alloc(byteLen, cpLen, &result);
    memcpy(bytes, s1.bytes, s1.lengthInBytes);
    memcpy(bytes + s1.lengthInBytes, s2.bytes, s2.lengthInBytes);
    return result;
}
