#include "balrt.h"

typedef char HEAP_STAR(UntaggedPtr);
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
        int64_t HEAP_STAR(p) = _bal_alloc(sizeof(int64_t));
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
        int64_t HEAP_STAR(np) = taggedToPtr(p);
        return *np;
    }
}

int64_t _Barray__length(TaggedPtr p) {
    ListPtr lp = taggedToPtr(p);
    return lp->length;
}

void _Barray__push(TaggedPtr p, TaggedPtr val) {
    ListPtr lp = taggedToPtr(p);
    int64_t len = lp->length;
    if (unlikely(len >= lp->capacity)) {
        _bal_array_grow(lp, 0);
    }
    // note that array_grow does not change length
    lp->members[len] = val;
    lp->length = len + 1;
}
