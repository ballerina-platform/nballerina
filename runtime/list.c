#include "balrt.h"

#include <string.h>

#define ARRAY_LENGTH_MAX ((int64_t)(INT64_MAX/sizeof(TaggedPtr)))

static inline Fillability createArrayFiller(ListDescPtr ldp, TaggedPtr *valuePtr) {
    return _bal_structure_create_filler(ldp->memberType, ldp->fillerDesc, valuePtr);
}

ListPtr _bal_list_construct(ListDescPtr desc, int64_t capacity) {
    ListPtr lp = _bal_alloc(sizeof(struct List));
    lp->desc = desc;
    initGenericArray(&(lp->gArray), capacity, TAGGED_PTR_SHIFT);
    return lp;
}

// _bal_list_*_get functions must be called with an index such that, 0 <= index < lp->gArray.length

TaggedPtr _bal_list_generic_get_tagged(TaggedPtr p, int64_t index) {
    ListPtr lp = taggedToPtr(p);
    GC TaggedPtrArray *ap = &(lp->tpArray);
    return ap->members[index];
}

int64_t _bal_list_generic_get_int(TaggedPtr p, int64_t index) {
    ListPtr lp = taggedToPtr(p);
    GC TaggedPtrArray *ap = &(lp->tpArray);
    return taggedToInt(ap->members[index]);
}

double _bal_list_generic_get_float(TaggedPtr p, int64_t index) {
    ListPtr lp = taggedToPtr(p);
    GC TaggedPtrArray *ap = &(lp->tpArray);
    return taggedToFloat(ap->members[index]);
}

TaggedPtr _bal_list_int_array_get_tagged(TaggedPtr p, int64_t index) {
    ListPtr lp = taggedToPtr(p);
    GC IntArray *ap = &(lp->iArray);
    return intToTagged(ap->members[index]);
}

int64_t _bal_list_int_array_get_int(TaggedPtr p, int64_t index) {
    // SUBSET should only be called when subset supports int subtype arrays
    fprintf(stderr, "warning: access int array via int type desc func pointer\n");
    ListPtr lp = taggedToPtr(p);
    GC IntArray *ap = &(lp->iArray);
    return ap->members[index];
}

TaggedPtr _bal_list_float_array_get_tagged(TaggedPtr p, int64_t index) {
    ListPtr lp = taggedToPtr(p);
    GC FloatArray *ap = &(lp->fArray);
    return floatToTagged(ap->members[index]);
}

double _bal_list_float_array_get_float(TaggedPtr p, int64_t index) {
    // SUBSET should only be called when subset supports float subtype arrays
    fprintf(stderr, "warning: access float array via float type desc func pointer\n");
    ListPtr lp = taggedToPtr(p);
    GC FloatArray *ap = &(lp->fArray);
    return ap->members[index];
}

PanicCode _bal_list_generic_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val) {
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
    TaggedPtr filler;
    Fillability fill;
    if (index > ap->length) {
        // we have a gap to fill
        fill = createArrayFiller(ldp, &filler);
        if (fill == FILL_NONE) {
            // Note that we panic before trying to grow the array
            return PANIC_NO_FILLER;
        }
    }
    else {
        fill = FILL_NONE;
    }
    // The cast makes this handle the negative case also in a single comparison
    if (unlikely((uint64_t)index >= (uint64_t)ap->capacity)) {
        if (unlikely((uint64_t)index >= ARRAY_LENGTH_MAX)) {
            return index < 0 ? PANIC_INDEX_OUT_OF_BOUNDS : PANIC_LIST_TOO_LONG; 
        }
        _bal_array_grow(&(lp->gArray), index + 1, TAGGED_PTR_SHIFT);
    }
    // Know that: ap->length <= index < ap->capacity
    if (fill != FILL_NONE) {
        // gap is from length..<index
        ap->members[ap->length] = filler;
        for (int64_t i = ap->length + 1; i < index; i++) {
            if (fill == FILL_EACH) {
                (void)createArrayFiller(ldp, &filler);
            }
            ap->members[i] = filler;
        }
    }
    ap->members[index] = val;
    ap->length = index + 1;
    return 0;
}

PanicCode _bal_list_generic_set_float(TaggedPtr p, int64_t index, double val) {
    return _bal_list_generic_set_tagged(p, index, floatToTagged(val));
}

PanicCode _bal_list_generic_set_int(TaggedPtr p, int64_t index, int64_t val) {
    return _bal_list_generic_set_tagged(p, index, intToTagged(val));
}

PanicCode _bal_list_int_array_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val) {
    ListPtr lp = taggedToPtr(p);
    if (!memberTypeContainsTagged(lp->desc->memberType, val)) {
        return storePanicCode(p, PANIC_LIST_STORE);
    }
    return _bal_list_int_array_set_int(p, index, taggedToInt(val));
}

PanicCode _bal_list_int_array_set_int(TaggedPtr p, int64_t index, int64_t val) {
    
    ListPtr lp = taggedToPtr(p);
    GC IntArray *ap = &(lp->iArray);
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
        memset(&(ap->members[ap->length]), 0, sizeof(int64_t) * (index - ap->length));
    }
    ap->members[index] = val;
    ap->length = index + 1;
    return 0;
}

PanicCode _bal_list_int_array_set_float(TaggedPtr p, UNUSED int64_t index, UNUSED double val) {
    return storePanicCode(p, PANIC_LIST_STORE);
}

PanicCode _bal_list_float_array_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val) {
    ListPtr lp = taggedToPtr(p);
    if (!memberTypeContainsTagged(lp->desc->memberType, val)) {
        return storePanicCode(p, PANIC_LIST_STORE);
    }
    return _bal_list_float_array_set_float(p, index, taggedToFloat(val));
}

PanicCode _bal_list_float_array_set_int(TaggedPtr p, UNUSED int64_t index, UNUSED int64_t val) {
    return storePanicCode(p, PANIC_LIST_STORE);
}

PanicCode _bal_list_float_array_set_float(TaggedPtr p, int64_t index, double val) {
    ListPtr lp = taggedToPtr(p);
    GC FloatArray *ap = &(lp->fArray);
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
        memset(&(ap->members[ap->length]), 0, sizeof(int64_t) * (index - ap->length));
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
    return _bal_list_eq_internal(p1, p2, 0);
}

bool _bal_list_eq_internal(TaggedPtr p1, TaggedPtr p2, EqStack *sp) {
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
        if (!taggedPtrEq(get1(p1, i), get2(p2, i), sp)) {
            return false;
        }
    }
    return true;
}

bool _bal_array_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    ListPtr lp = taggedToPtr(p);   
    return memberTypeIsSubtypeSimple(lp->desc->memberType, ((ArraySubtypePtr)stp)->bitSet);
}

int64_t READONLY _bal_array_exact_int_compare(TaggedPtr lhs, TaggedPtr rhs) {
    if (lhs == rhs) {
        return COMPARE_EQ;
    }
    ListPtr lhsLp = taggedToPtr(lhs);
    ListPtr rhsLp = taggedToPtr(rhs);
    int64_t lhsLen = lhsLp->iArray.length;
    int64_t rhsLen = rhsLp->iArray.length;
    int64_t length = (lhsLen <= rhsLen) ? lhsLen : rhsLen;

    GC int64_t *lhsArr = lhsLp->iArray.members;
    GC int64_t *rhsArr = rhsLp->iArray.members;
    for (int64_t i = 0; i < length; i++) {
        int64_t l = lhsArr[i];
        int64_t r = rhsArr[i];
        if (l == r) {
            continue;
        }
        else if (l > r) {
            return COMPARE_GT;
        }
        else {
            return COMPARE_LT;
        }
    }
    return COMPARE_TOTAL(lhsLen, rhsLen);
}

typedef int64_t (*TaggedValueComparator)(TaggedPtr, TaggedPtr);

static READONLY TaggedValueComparator getArrayComparator(MemberType memberType) {
    uint32_t bitSet;
    if ((memberType & 1) == 0) {
        return &_bal_array_generic_compare;
    }
    else {
        // Clear out the nil bit since comparators can handle both nillable and non-nillable of a given type
        bitSet = (uint32_t)(memberType >> 1) & ~((uint32_t)1 << TAG_NIL);
        switch (bitSet) {
            case (1 << TAG_BOOLEAN):
                return &taggedBooleanCompare;
            case (1 << TAG_INT):
                return &taggedIntCompare;
            case (1 << TAG_FLOAT):
                return &taggedFloatCompare;
            case (1 << TAG_STRING):
                return &taggedStringCompare;
            case (1 << TAG_DECIMAL):
                return &taggedDecimalCompare;
        }
        unreachable();
    }
}

static READONLY inline CompareResult arrayCompare(TaggedPtr lhs, TaggedPtr rhs, int64_t(*comparator)(TaggedPtr, TaggedPtr)) {
    if (lhs == rhs) {
        return COMPARE_EQ;
    }
    if (lhs == NIL || rhs == NIL) {
        return COMPARE_UN;
    }
    ListPtr lhsListPtr = taggedToPtr(lhs);
    ListPtr rhsListPtr = taggedToPtr(rhs);
    int64_t lhsLen = lhsListPtr->tpArray.length;
    int64_t rhsLen = rhsListPtr->tpArray.length;
    int64_t length = (lhsLen <= rhsLen) ? lhsLen : rhsLen;
    TaggedPtr (*lhsGet)(TaggedPtr lp, int64_t index) = lhsListPtr->desc->get;
    TaggedPtr (*rhsGet)(TaggedPtr lp, int64_t index) = rhsListPtr->desc->get;
    for (int64_t i = 0; i < length; i++) {
        int64_t result = (*comparator)(lhsGet(lhs, i), rhsGet(rhs, i));
        if (result != COMPARE_EQ) {
            return result;
        }
    }
    return COMPARE_TOTAL(lhsLen, rhsLen);
}

CompareResult READONLY _bal_array_generic_compare(TaggedPtr lhs, TaggedPtr rhs) {
    if (lhs == rhs) {
        return COMPARE_EQ;
    }
    if (lhs == NIL || rhs == NIL) {
        return COMPARE_UN;
    }
    ListPtr lhsLp = taggedToPtr(lhs);
    ListPtr rhsLp = taggedToPtr(rhs);
    ListDescPtr lhsLdp = lhsLp->desc;
    ListDescPtr rhsLdp = rhsLp->desc;
    ListDescPtr ldp;
    if (lhsLdp->memberType == BITSET_MEMBER_TYPE(1 << TAG_NIL)) {
        if (rhsLdp->memberType == BITSET_MEMBER_TYPE(1 << TAG_NIL)) {
            int64_t lhsLen = lhsLp->gArray.length;
            int64_t rhsLen = rhsLp->tpArray.length;
            return COMPARE_TOTAL(lhsLen, rhsLen);
        }
        else{
            ldp = rhsLdp;
        }
    }
    else {
        ldp = lhsLdp;
    }
    return arrayCompare(lhs, rhs, getArrayComparator(ldp->memberType));
}

CompareResult READONLY _bal_array_int_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return arrayCompare(lhs, rhs, &taggedIntCompare);
}

CompareResult READONLY _bal_array_float_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return arrayCompare(lhs, rhs, &taggedFloatCompare);
}

CompareResult READONLY _bal_array_string_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return arrayCompare(lhs, rhs, &taggedStringCompare);
}

CompareResult READONLY _bal_array_boolean_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return arrayCompare(lhs, rhs, &taggedBooleanCompare);
}

CompareResult READONLY _bal_array_decimal_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return arrayCompare(lhs, rhs, &taggedDecimalCompare);
}
