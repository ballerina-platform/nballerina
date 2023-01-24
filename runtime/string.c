#include <stdio.h>
#include "balrt.h"
#include "hash.h"
#include <string.h>

// Most of this assumes little-endian
#define bswap(n) __builtin_bswap64(n)

static int64_t stringCmpGeneric(TaggedPtr tp1, TaggedPtr tp2);
static int64_t stringCmpImmediate(uint64_t bits1, uint64_t bits2);
static int64_t stringCmpMedium(MediumStringPtr s1, MediumStringPtr s2);
static int64_t stringCmpLarge(LargeStringPtr s1, LargeStringPtr s2);
static bool stringListContains(const TaggedPtr *start, const TaggedPtr *end, TaggedPtr str);

static int64_t memcmp8(IntPtr p1, IntPtr p2, int64_t n);

int64_t _bal_string_cmp(TaggedPtr tp1, TaggedPtr tp2) {
    if (tp1 == tp2) {
        return 0;
    }
    uint64_t bits1 = taggedPtrBits(tp1);
    uint64_t bits2 = taggedPtrBits(tp2);
    if (bits1 & bits2 & IMMEDIATE_FLAG) {
        return stringCmpImmediate(bits1, bits2);
    }
    if (unlikely(((bits1 ^ bits2) & (IMMEDIATE_FLAG|STRING_LARGE_FLAG)) != 0)) {
        return stringCmpGeneric(tp1, tp2);
    }

    UntypedPtr p1 = taggedToPtr(tp1);
    UntypedPtr p2 = taggedToPtr(tp2);
    if (likely((bits1 & STRING_LARGE_FLAG) == 0)) {
        return stringCmpMedium(p1, p2);
    }
    else {
        return stringCmpLarge(p1, p2);
    }
}

static int64_t stringCmpGeneric(TaggedPtr tp1, TaggedPtr tp2) {
    StringLength len1 = taggedStringLength(tp1);
    StringLength len2 = taggedStringLength(tp2);
    int64_t nBytes = len1.nBytes <= len2.nBytes ? len1.nBytes : len2.nBytes;
    int result = memcmp(taggedStringBytes(&tp1), taggedStringBytes(&tp2), nBytes);
    if (result != 0) {
        return result;
    }
    return len1.nBytes - len2.nBytes;
}

// precondition bits1 !== bits2
static inline int64_t stringCmpImmediate(uint64_t bits1, uint64_t bits2) {
    // how much to shift so that the first differing byte is the lo byte
    // ctzl counts the number of trailing zero bits
    int shift = __builtin_ctzl(bits1 ^ bits2) & ~7;
    int byte1 = (bits1 >> shift) & 0xFF;
    int byte2 = (bits2 >> shift) & 0xFF;
    if (byte1 < byte2) {
        return byte2 == 0xFF ? 1 : -1;
    }
    else {
        return byte1 == 0xFF ? -1 : 1;
    }
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

static void immediateStringHash(HashState *hp, uint64_t bits) {
    StringLength len = immediateStringLength(bits);
    bits &= ((uint64_t)1 << 8*len.nBytes) - 1;
    hashUpdatePartial(hp, bits, len.nBytes);
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
    IntPtr ip = (IntPtr)p;
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
    uint64_t bits = taggedPtrBits(tp);
    HashState h;
    hashInit(&h);
    if (bits & IMMEDIATE_FLAG) {
        immediateStringHash(&h, bits);
    }
    else if (likely((bits & STRING_LARGE_FLAG) == 0)) {
        mediumStringHash(&h, taggedToPtr(tp));
    }
    else {
        largeStringHash(&h, taggedToPtr(tp));
    }
    return hashFinish(&h);
}

char *_bal_string_alloc(uint64_t lengthInBytes, uint64_t lengthInCodePoints, TaggedPtr *resultPtr) {
    if (lengthInCodePoints == 1 || (lengthInCodePoints == lengthInBytes && lengthInBytes <= 0x7)) {
        // pad with 0xFF
        *resultPtr = bitsToTaggedPtr(IMMEDIATE_FLAG | (((uint64_t)TAG_STRING) << TAG_SHIFT) | (((uint64_t)1 << (7*8)) -  1));
        return (char *)resultPtr;
    }
    else if (lengthInBytes <= 0xFFFF) {
        int len = lengthInBytes;
        int size = mediumStringSize(len);
        UntypedPtr p = _bal_alloc(size);
        // Make the last 8 bytes of allocated space be 0
        // so that all padding bytes will be 0.
        // This needs to be done before setting the length
        // in the case where only 8 bytes are allocated.
        ((GC uint64_t *)((GC char *)p + size))[-1] = 0;
        MediumStringPtr sp = p;
        sp->lengthInBytes = len;
        sp->lengthInCodePoints = (uint16_t)lengthInCodePoints;
        *resultPtr = ptrAddFlags(p, (uint64_t)TAG_STRING << TAG_SHIFT);
        return (char *)sp->bytes;
    }
    else {
        if (unlikely(lengthInBytes > INT64_MAX)) {
            _bal_panic(_bal_panic_construct(PANIC_STRING_TOO_LONG));
        }
        uint64_t size = largeStringSize(lengthInBytes);
        UntypedPtr p = _bal_alloc(size);
         ((GC uint64_t *)((GC char *)p + size))[-1] = 0;
        LargeStringPtr sp = p;
        sp->lengthInBytes = lengthInBytes;
        sp->lengthInCodePoints = lengthInCodePoints;
        *resultPtr = ptrAddFlags(p, ((uint64_t)TAG_STRING << TAG_SHIFT) | STRING_LARGE_FLAG);
        return (char *)sp->bytes;
    }
}

bool READONLY _bal_string_heap_eq(TaggedPtr tp1, TaggedPtr tp2) {
    IntPtr p1 = taggedToPtr(tp1);
    IntPtr p2 = taggedToPtr(tp2);
    int64_t h1 = *p1;
    int64_t h2 = *p2;
    if (h1 != h2) {
        return 0;
    }
    uint64_t bits1 = taggedPtrBits(tp1);
    uint64_t bits2 = taggedPtrBits(tp2);
    // number of 64-bit units including the header
    int64_t nInts;
    if (bits1 & STRING_LARGE_FLAG) {
        if (!(bits2 & STRING_LARGE_FLAG)) {
            return false;
        }
        // large case
        nInts = largeStringSize(h1) >> 3;
    }
    else {
        if (bits2 & STRING_LARGE_FLAG) {
            return false;
        }
        int len = h1 & 0xFFFF;
        nInts = mediumStringSize(len) >> 3;
    }
    while (--nInts > 0) {
        if (*++p1 != *++p2)
            return false;
    }
    return true;
}

TaggedPtr _bal_string_concat(TaggedPtr tp1, TaggedPtr tp2) {
    StringLength len1 = taggedStringLength(tp1);
    StringLength len2 = taggedStringLength(tp2);
    // _bal_string_alloc will deal with the case where total length is > INT_MAX
    uint64_t nBytes = (uint64_t)len1.nBytes + (uint64_t)len2.nBytes;
    uint64_t nCodePoints = (uint64_t)len1.nCodePoints + (uint64_t)len2.nCodePoints;
    TaggedPtr result;
    char *bytes = _bal_string_alloc(nBytes, nCodePoints, &result);
    memcpy(bytes, taggedStringBytes(&tp1), len1.nBytes);
    memcpy(bytes + len1.nBytes, taggedStringBytes(&tp2), len2.nBytes);
    return result;
}

bool _bal_string_subtype_contains(UniformSubtypePtr stp, TaggedPtr str) {
    StringSubtypePtr sstp = (StringSubtypePtr)stp;
    bool inStrs = stringListContains(sstp->strs, sstp->strs + sstp->nStrs, str);
    return inStrs == (taggedStringIsChar(str) ? sstp->isCharInStrsIncluded : sstp->isNonCharInStrsIncluded);
}

// Do binary search for str
// Approximately the same code as tidListContains
static bool stringListContains(const TaggedPtr *start, const TaggedPtr *end, TaggedPtr str) {
    // Lower bound inclusive; upper bound is exclusive
    // Invariant: if there is a member in the list == to tid, then its address p 
    // satisfies start <= p < end
    while (start < end) {    
        const TaggedPtr *mid = start + (end - start)/2;
        // We have start <= mid < end
        int64_t cmp = _bal_string_cmp(str, *mid);
        if (cmp == 0) {
            return true;
        }
        if (cmp < 0) {
            // this decreases end, since mid < end
            // still have start <= end
            end = mid;
        }
        else {
            // this increases start, since mid >= start
            // still have start <= end
            start = mid + 1;
        }
    }
    // start == end, so there is no such member
    return false;
}

typedef struct StringFillerDesc {
    TaggedPtr (*create)(struct StringFillerDesc *fillerDesc, bool *hasIdentityPtr);
    TaggedPtr val;
} *StringFillerDescPtr;

TaggedPtr _bal_string_filler_create(StringFillerDescPtr fillerDesc, bool *hasIdentityPtr) {
    *hasIdentityPtr = false;
    return fillerDesc->val;
}
