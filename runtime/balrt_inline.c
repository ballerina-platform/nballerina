#include "balrt.h"

#define FLAG_INT_ON_HEAP 0x20

#define IMMEDIATE_INT_MIN -(1L << (TAG_SHIFT - 1))
#define IMMEDIATE_INT_MAX  ((1L << (TAG_SHIFT - 1)) - 1)
#define IMMEDIATE_INT_TRUNCATE(n) (n & ((1L << TAG_SHIFT) - 1))

#define POINTER_MASK ((1L << TAG_SHIFT) - 1)

// We are trying to avoid doing inttoptr or ptrtoint in address space 1

static inline TaggedPtr ptrAddShiftedTag(UntypedPtr tp, uint64_t shiftedTag) {
    char *p = (char *)tp;
    uint64_t bits = (uint64_t)p;
    bits |= shiftedTag;
    p = (char *)bits;
    return (TaggedPtr)p;
}

static inline TaggedPtr bitsToTaggedPtr(uint64_t bits) {
    char *p = (char *)0 + bits;
    return (TaggedPtr)p;
}

TaggedPtr _bal_int_to_tagged(int64_t n) {
    if (likely(n >= IMMEDIATE_INT_MIN & n <= IMMEDIATE_INT_MAX)) {
        return bitsToTaggedPtr(IMMEDIATE_INT_TRUNCATE(n) | (((uint64_t)TAG_INT) << TAG_SHIFT));
    }
    else {
        GC int64_t *p = _bal_alloc(sizeof(int64_t));
        *p = n;
        return ptrAddShiftedTag(p, ((uint64_t)TAG_INT|FLAG_INT_ON_HEAP) << TAG_SHIFT);
    }
}

int64_t _bal_tagged_to_int(TaggedPtr p) {
    int t = getTag(p);
    if (likely(t & FLAG_INT_ON_HEAP) == 0) {
        uint64_t n = taggedPtrBits(p);
        n &= POINTER_MASK;
        // sign extend
        n <<= 8;
        return ((int64_t)n) >> 8;
    }
    else {
        GC int64_t *np = taggedToPtr(p);
        return *np;
    }
}

int64_t _Bmap__length(TaggedPtr p) {
    MappingPtr lp = taggedToPtr(p);
    return lp->fArray.length;
}

int64_t _Barray__length(TaggedPtr p) {
    ListPtr lp = taggedToPtr(p);
    return lp->tpArray.length;
}

void _Barray__push(TaggedPtr p, TaggedPtr val) {
    ListPtr lp = taggedToPtr(p);
    int64_t len = lp->tpArray.length;
    if (unlikely(len >= lp->tpArray.capacity)) {
        _bal_array_grow(&(lp->gArray), 0, TAGGED_PTR_SHIFT);
    }
    // note that array_grow does not change length
    lp->tpArray.members[len] = val;
    lp->tpArray.length = len + 1;
}

StringData _bal_tagged_to_string(TaggedPtr p) {
    if (likely((taggedPtrBits(p) & 1) == 0)) {
        SmallStringPtr sp = taggedToPtr(p);
        StringData data = { sp->length, sp->length, sp->bytes };
        return data;
    }
    else {
        MediumStringPtr sp = taggedToPtr(p);
        StringData data = { sp->lengthInBytes, sp->lengthInCodePoints, sp->bytes };
        return data;
    }
}

int64_t _Bstring__length(TaggedPtr p) {
    StringData data = _bal_tagged_to_string(p);
    return data.lengthInCodePoints;
}

bool _bal_eq(TaggedPtr tp1, TaggedPtr tp2) {
    if (tp1 == tp2) {
        return 1;
    }
    int tag1 = getTag(tp1);
    int tag2 = getTag(tp2);
    if (tag1 != tag2) {
        return 0;
    }
    if (tag1 == TAG_STRING) {
        return _bal_string_eq(tp1, tp2);
    }
    if (tag1 == (TAG_INT|FLAG_INT_ON_HEAP)) {
        IntPtr p1 = taggedToPtr(tp1);
        IntPtr p2 = taggedToPtr(tp2);
        return *p1 == *p2;
    }    
    return 0;
}

bool _bal_string_eq(TaggedPtr tp1, TaggedPtr tp2) {
    IntPtr p1 = taggedToPtr(tp1);
    IntPtr p2 = taggedToPtr(tp2);
    int64_t h1 = *p1;
    int64_t h2 = *p2;
    if (h1 != h2) {
        return 0;
    }
    // I do this here rather than earlier on the basis that comparing a pointer with itself is not so common
    // The comparison above will resolve a lot more comparisons (hopefully most).
    if (p1 == p2) {
        return true;
    }
    int variant1 = taggedPtrBits(tp1) & 0x7;
    int variant2 = taggedPtrBits(tp2) & 0x7;
    if (unlikely(variant1 != variant2)) {
        return false;
    }
    // number of 64-bit units including the header
    int nInts;
    if (variant1 == 0) {
        int nBytes = h1 & 0xFF;
        nInts = smallStringSize(nBytes) >> 3;
    }
    else {
        int nBytes = h1 & 0xFFFF;
        nInts = mediumStringSize(nBytes) >> 3;
    }
    while (--nInts > 0) {
        if (*++p1 != *++p2)
            return false;
    }
    return true;
}
