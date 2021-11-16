#include "balrt.h"

#include <string.h>

#define ARRAY_LENGTH_MAX ((int64_t)(INT64_MAX/sizeof(TaggedPtr)))

const double F0 = +0.0;

ListPtr _bal_list_construct(ListDescPtr desc, int64_t capacity) {
    ListPtr lp = _bal_alloc(sizeof(struct List));
    lp->desc = desc;
    initGenericArray(&(lp->gArray), capacity, TAGGED_PTR_SHIFT);
    return lp;
}

static bool getFiller(ListDescPtr desc, TaggedPtr *valuePtr) {
    switch (desc->memberType) {
        case (1 << TAG_BOOLEAN):
            *valuePtr = bitsToTaggedPtr(((uint64_t)TAG_BOOLEAN) << TAG_SHIFT);
            return true;
        case (1 << TAG_INT):
            *valuePtr = bitsToTaggedPtr(IMMEDIATE_FLAG | ((uint64_t)TAG_INT) << TAG_SHIFT);
            return true;
        case (1 << TAG_FLOAT):
            {
                GC double *fp = (GC double *)&F0;
                *valuePtr = ptrAddFlags(fp, ((uint64_t)TAG_FLOAT) << TAG_SHIFT);
                return true;
            }
        case (1 << TAG_STRING):
            _bal_string_alloc(0, 0, valuePtr);
            return true;
    }
    if (desc->memberType & (1 << TAG_NIL)) {
        *valuePtr = 0;
        return true;
    }
    return false;
}

// Must be called with an index such that, 0 <= index < lp->gArray.length
TaggedPtr _bal_list_get(TaggedPtr p, int64_t index) {
    ListPtr lp = taggedToPtr(p);
    GC TaggedPtrArray *ap = &(lp->tpArray);
    return ap->members[index];
}

PanicCode _bal_list_set(TaggedPtr p, int64_t index, TaggedPtr val) {
    ListPtr lp = taggedToPtr(p);
    ListDescPtr ldp = lp->desc;
    if (!memberTypeContainsTagged(lp->desc->memberType, val)) {
        return storePanicCode(p, PANIC_LIST_STORE);
    }
    GC TaggedPtrArray *ap = &(lp->tpArray);
    // The cast makes this handle the negative case also in a single comparison
    if (likely((uint64_t)index < (uint64_t)ap->length)) {
        ap->members[index] = val;
        return 0;
    }
    // The cast makes this handle the negative case also in a single comparison
    if (unlikely((uint64_t)index >= (uint64_t)ap->capacity)) {
        if (unlikely((uint64_t)index >= ARRAY_LENGTH_MAX)) {
            return index < 0 ? PANIC_INDEX_OUT_OF_BOUNDS : PANIC_LIST_TOO_LONG; 
        }
        _bal_array_grow(&(lp->gArray), index + 1, TAGGED_PTR_SHIFT);
    }
    // Know that: ap->length <= index < ap->capacity
    if (index > ap->length) {
        // we have a gap to fill
        // from length..<index
        TaggedPtr filler;
        if (!getFiller(ldp, &filler)) {
            return PANIC_NO_FILLER;
        }
        for (int64_t i = ap->length; i < index; i++) {
            ap->members[i] = filler;
        }        
    }
    ap->members[index] = val;
    ap->length = index + 1;
    return 0;
}

#define INITIAL_CAPACITY 4

// Grows the array.
// The new capacity must be greater than both the old capacity
// and min_capacity.
// Caller must ensure min_capacity <= ARRAY_LENGTH_MAX
void _bal_array_grow(GC GenericArray *ap, int64_t min_capacity, int shift) {
    int64_t old_capacity = ap->capacity;
    
    int64_t new_capacity; 
    // Deal with case where capacity is 0
    // Implies length is also 0
    if (old_capacity == 0) {
        new_capacity = min_capacity > INITIAL_CAPACITY ? min_capacity : INITIAL_CAPACITY;
        ap->members = _bal_alloc(new_capacity << shift);
        ap->capacity = new_capacity;
        return;
    }
    // Increase capacity by a factor of 1.5
    int64_t extra_capacity = ap->capacity >> 1;
    if (likely(old_capacity <= ARRAY_LENGTH_MAX - extra_capacity)) {
        // we know that this addition cannot overflow
        // and that new_capacity <= ARRAY_LENGTH_MAX
        new_capacity = old_capacity + extra_capacity;
    }
    else {
        new_capacity = ARRAY_LENGTH_MAX;
        if (new_capacity == old_capacity)
            _bal_panic(_bal_panic_construct(PANIC_LIST_TOO_LONG));  // we won't get a line number, but this is very unlikely to be possible
    }
    if (unlikely(new_capacity < min_capacity)) {
        new_capacity = min_capacity;
    }
    // we know the multiplication cannot overflow because new_capacity <= ARRAY_MAX
    GC TaggedPtr *new_members = _bal_alloc(new_capacity << shift);
    // ap->length may be zero, but ap->members will not be null in this case
    // because we checked at the beginning that capacity was not zero
    memcpy(new_members, ap->members, ap->length << shift);
    ap->members = new_members;
    ap->capacity = new_capacity;
}

bool _bal_list_eq(TaggedPtr p1, TaggedPtr p2) {
    ListPtr lp1 = taggedToPtr(p1);
    GC TaggedPtrArray *ap1 = &(lp1->tpArray);
    ListPtr lp2 = taggedToPtr(p2);
    GC TaggedPtrArray *ap2 = &(lp2->tpArray);
    int64_t len = ap1->length;
    if (ap2->length != len) {
        return false;
    }
    TaggedPtr (*get1)(TaggedPtr lp, int64_t index) = lp1->desc->get;
    TaggedPtr (*get2)(TaggedPtr lp, int64_t index) = lp2->desc->get;
    for (int64_t i = 0; i < len; i++) {
        if (!taggedPtrEqual(get1(p1, i), get2(p2, i))) {
            return false;
        }
    }
    return true;
}

bool _bal_array_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    ListPtr lp = taggedToPtr(p);   
    return memberTypeIsSubtypeSimple(lp->desc->memberType, ((ArraySubtypePtr)stp)->bitSet);
}
