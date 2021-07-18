#include "balrt.h"

#include <string.h>

#define ARRAY_LENGTH_MAX (INT64_MAX/sizeof(TaggedPtr))


Error _bal_list_set(TaggedPtr p, int64_t index, TaggedPtr val) {
    ListPtr lp = taggedToPtr(p);
    GC TaggedPtrArray *ap = &(lp->tpArray);
    if (likely((uint64_t)index < ap->length)) {
        ap->members[index] = val;
        return 0;
    }
    if (unlikely((uint64_t)index >= ap->capacity)) {
        if (unlikely((uint64_t)index >= ARRAY_LENGTH_MAX)) {
            return index < 0 ? PANIC_INDEX_OUT_OF_BOUNDS : PANIC_LIST_TOO_LONG; 
        }
        _bal_array_grow(&(lp->gArray), index + 1, TAGGED_PTR_SHIFT);
    }
    // Know that: ap->length <= index < ap->capacity
    if (index > ap->length) {
        // we have a gap to fill
        // from length..<index
        memset(ap->members + ap->length, 0, (index - ap->length) * sizeof(TaggedPtr));
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
            _bal_panic(PANIC_LIST_TOO_LONG);  // we won't get a line number, but this is very unlikely to be possible
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
