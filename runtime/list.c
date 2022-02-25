#include "balrt.h"

#include <string.h>

#define ARRAY_LENGTH_MAX ((int64_t)(INT64_MAX/sizeof(TaggedPtr)))

static inline Fillability arrayCreateFiller(ListDescPtr ldp, TaggedPtr *valuePtr) {
    return _bal_structure_create_filler(ldp->restType, ldp->fillerDesc, valuePtr);
}

static inline bool listDescAllowsTaggedAt(ListDescPtr ldp, int64_t index, TaggedPtr val) {
    MemberType mt;
    // If we get a negative index here, we treat it as having the rest type.
    if ((uint64_t)index < (uint64_t)ldp->minLength) {
        uint32_t nMemberTypes = ldp->nMemberTypes;
        mt = ldp->memberTypes[index < nMemberTypes ? index : nMemberTypes - 1];
    }
    else {
        mt = ldp->restType;
    }
    return memberTypeContainsTagged(mt, val);
}

// Constructs a list with 8 bytes per member
ListPtr _bal_list_construct_8(ListDescPtr desc, int64_t capacity) {
    ListPtr lp = _bal_alloc(sizeof(struct List));
    lp->desc = desc;
    initGenericArray(&(lp->gArray), capacity, TAGGED_PTR_SHIFT);
    return lp;
}

// Constructs a list with 1 byte per member
ListPtr _bal_list_construct_1(ListDescPtr desc, int64_t capacity) {
    ListPtr lp = _bal_alloc(sizeof(struct List));
    lp->desc = desc;
    initGenericArray(&(lp->gArray), capacity, BYTE_SHIFT);
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

TaggedPtr _bal_list_byte_array_get_tagged(TaggedPtr p, int64_t index) {
    ListPtr lp = taggedToPtr(p);
    GC ByteArray *ap = &(lp->bArray);
    return intToTagged(ap->members[index]);
}

int64_t _bal_list_byte_array_get_int(TaggedPtr p, int64_t index) {
    ListPtr lp = taggedToPtr(p);
    GC ByteArray *ap = &(lp->bArray);
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

// We use this in the case where exactness does not guarantee that the set will succeed.
PanicCode _bal_list_generic_inexact_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val) {
    PanicCode code = _bal_list_generic_set_tagged(p, index, val);
    return code == 0 ? 0 : PANIC_LIST_STORE;
}

PanicCode _bal_list_generic_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val) {
    ListPtr lp = taggedToPtr(p);
    ListDescPtr ldp = lp->desc;
    if (!listDescAllowsTaggedAt(ldp, index, val)) {
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
        fill = arrayCreateFiller(ldp, &filler);
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
                (void)arrayCreateFiller(ldp, &filler);
            }
            ap->members[i] = filler;
        }
    }
    ap->members[index] = val;
    ap->length = index + 1;
    return 0;
}

TaggedPtrPanicCode _bal_list_filling_get(TaggedPtr p, int64_t index) {
    TaggedPtrPanicCode result;
    ListPtr lp = taggedToPtr(p);
    GC TaggedPtrArray *ap = &(lp->tpArray);
    if (likely((uint64_t)index < (uint64_t)ap->length)) {
        result.ptr = ap->members[index];
        result.panicCode = 0;
        return result;
    }
    if (unlikely(index < 0)) {
        result.panicCode = PANIC_INDEX_OUT_OF_BOUNDS;
        return result;
    }
    ListDescPtr ldp = lp->desc;
    TaggedPtr filler;
    Fillability fill = arrayCreateFiller(ldp, &filler);
    if (fill == FILL_NONE) {
        result.panicCode = PANIC_NO_FILLER;
        return result;
    }
    if (index >= ap->capacity) {
        if (index >= ARRAY_LENGTH_MAX) {
            result.panicCode = PANIC_LIST_TOO_LONG;
            return result;
        }
        _bal_array_grow(&(lp->gArray), index + 1, TAGGED_PTR_SHIFT);
    }
    ap->members[index] = filler;
    result.ptr = filler;
    result.panicCode = 0;
    for (int64_t i = ap->length; i < index; i++) {
        // Probably will only call this when FILL_EACH would be true,
        // but let's handle all cases.
        if (likely(fill == FILL_EACH)) {
            (void)arrayCreateFiller(ldp, &filler);
        }
        ap->members[i] = filler;
    }
    ap->length = index + 1;
    return result;
}

PanicCode _bal_list_generic_inexact_set_float(TaggedPtr p, int64_t index, double val) {
    return _bal_list_generic_inexact_set_tagged(p, index, floatToTagged(val));
}

PanicCode _bal_list_generic_set_float(TaggedPtr p, int64_t index, double val) {
    return _bal_list_generic_set_tagged(p, index, floatToTagged(val));
}

PanicCode _bal_list_generic_inexact_set_int(TaggedPtr p, int64_t index, int64_t val) {
    return _bal_list_generic_inexact_set_tagged(p, index, intToTagged(val));
}

PanicCode _bal_list_generic_set_int(TaggedPtr p, int64_t index, int64_t val) {
    return _bal_list_generic_set_tagged(p, index, intToTagged(val));
}

PanicCode _bal_list_int_array_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val) {
    if ((getTag(val) & UT_MASK) != TAG_INT) {
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

PanicCode _bal_list_byte_array_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val) {
    if ((getTag(val) & UT_MASK) != TAG_INT) {
        return storePanicCode(p, PANIC_LIST_STORE);
    }
    return _bal_list_byte_array_set_int(p, index, taggedToInt(val));
}

PanicCode _bal_list_byte_array_set_int(TaggedPtr p, int64_t index, int64_t valInt) {
    if (valInt < 0 || UINT8_MAX < valInt) {
        return storePanicCode(p, PANIC_LIST_STORE);
    }
    uint8_t val = (uint8_t)valInt;
    ListPtr lp = taggedToPtr(p);
    GC ByteArray *ap = &(lp->bArray);
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
        _bal_array_grow(&(lp->gArray), index + 1, BYTE_SHIFT);
    }
    // Know that: ap->length <= index < ap->capacity
    if (index > ap->length) {
        // we have a gap to fill
        // from length..<index
        memset(&(ap->members[ap->length]), 0, index - ap->length);
    }
    ap->members[index] = val;
    ap->length = index + 1;
    return 0;
}

PanicCode _bal_list_byte_array_set_float(TaggedPtr p, UNUSED int64_t index, UNUSED double val) {
    return storePanicCode(p, PANIC_LIST_STORE);
}

PanicCode _bal_list_float_array_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val) {
    if ((getTag(val) & UT_MASK) != TAG_FLOAT) {
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
    ListDescPtr ldp = lp->desc;
    uint32_t typeBitSet = ((ArraySubtypePtr)stp)->bitSet;
    uint32_t nMemberTypes = ldp->nMemberTypes;
    for (int64_t i = 0; i < nMemberTypes; i++) {
        if (!memberTypeIsSubtypeSimple(ldp->memberTypes[i], typeBitSet)) {
            return false;
        }
    }
    return memberTypeIsSubtypeSimple(ldp->restType, typeBitSet);
}

CompareResult READONLY _bal_array_exact_int_compare(TaggedPtr tp1, TaggedPtr tp2) {
    if (tp1 == tp2) {
        return COMPARE_EQ;
    }
    ListPtr lp1 = taggedToPtr(tp1);
    ListPtr lp2 = taggedToPtr(tp2);
    int64_t len1 = lp1->iArray.length;
    int64_t len2 = lp2->iArray.length;
    int64_t len = (len1 <= len2) ? len1 : len2;

    GC int64_t *arr1 = lp1->iArray.members;
    GC int64_t *arr2 = lp2->iArray.members;
    for (int64_t i = 0; i < len; i++) {
        int64_t n1 = arr1[i];
        int64_t n2 = arr2[i];
        if (n1 > n2) {
            return COMPARE_GT;
        }
        if (n1 < n2) {
            return COMPARE_LT;
        }
    }
    return intCompare(len1, len2);
}

static READONLY inline CompareResult optListDoCompare(TaggedPtr tp1, TaggedPtr tp2, int64_t (*compare)(TaggedPtr, TaggedPtr)) {
    if (tp1 == tp2) {
        return COMPARE_EQ;
    }
    if (tp1 == NIL || tp2 == NIL) {
        return COMPARE_UN;
    }
    ListPtr lp1 = taggedToPtr(tp1);
    ListPtr lp2 = taggedToPtr(tp2);
    int64_t len1 = lp1->tpArray.length;
    int64_t len2 = lp2->tpArray.length;
    int64_t len = (len1 <= len2) ? len1 : len2;
    TaggedPtr (*get1)(TaggedPtr lp, int64_t index) = lp1->desc->get;
    TaggedPtr (*get2)(TaggedPtr lp, int64_t index) = lp2->desc->get;
    for (int64_t i = 0; i < len; i++) {
        int64_t result = (*compare)(get1(tp1, i), get2(tp2, i));
        if (result != COMPARE_EQ) {
            return result;
        }
    }
    return intCompare(len1, len2);
}

CompareResult READONLY _bal_opt_list_compare(TaggedPtr tp1, TaggedPtr tp2) {
#if 0
    if (tp1 == tp2) {
        return COMPARE_EQ;
    }
    if (tp1 == NIL || tp2 == NIL) {
        return COMPARE_UN;
    }
    ListPtr lp1 = taggedToPtr(tp1);
    ListPtr lp2 = taggedToPtr(tp2);
    ListDescPtr ldp1 = lp1->desc;
    ListDescPtr ldp2 = lp2->desc;
    ListDescPtr ldp;
    if (ldp1->memberType == BITSET_MEMBER_TYPE(1 << TAG_NIL)) {
        if (ldp2->memberType == BITSET_MEMBER_TYPE(1 << TAG_NIL)) {
            return intCompare(lp1->tpArray.length, lp2->tpArray.length);
        }
        else {
            ldp = ldp2;
        }
    }
    else {
        ldp = ldp1;
    }
    return optListDoCompare(tp1, tp2, getArrayComparator(ldp->memberType));
#else
    return optListDoCompare(tp1, tp2, &taggedPtrCompare);
#endif
}

#if 0

typedef CompareResult (*TaggedPtrComparator)(TaggedPtr, TaggedPtr);
static READONLY TaggedPtrComparator getArrayComparator(MemberType memberType);

static READONLY TaggedPtrComparator getArrayComparator(MemberType memberType) {
    uint32_t bitSet;
    if ((memberType & 1) == 0) {
        return &taggedPtrCompare;
    }
    else {
        bitSet = (uint32_t)(memberType >> 1) & ~((uint32_t)1 << TAG_NIL);
        switch (bitSet) {
            case (1 << TAG_BOOLEAN):
                return &optBooleanCompare;
            case (1 << TAG_INT):
                return &optIntCompare;
            case (1 << TAG_FLOAT):
                return &optFloatCompare;
            case (1 << TAG_STRING):
                return &optStringCompare;
            case (1 << TAG_DECIMAL):
                return &optDecimalCompare;
        }
        unreachable();
    }
}
#endif

CompareResult READONLY _bal_array_int_compare(TaggedPtr tp1, TaggedPtr tp2) {
    return optListDoCompare(tp1, tp2, &optIntCompare);
}

CompareResult READONLY _bal_array_float_compare(TaggedPtr tp1, TaggedPtr tp2) {
    return optListDoCompare(tp1, tp2, &optFloatCompare);
}

CompareResult READONLY _bal_array_string_compare(TaggedPtr tp1, TaggedPtr tp2) {
    return optListDoCompare(tp1, tp2, &optStringCompare);
}

CompareResult READONLY _bal_array_boolean_compare(TaggedPtr tp1, TaggedPtr tp2) {
    return optListDoCompare(tp1, tp2, &optBooleanCompare);
}

CompareResult READONLY _bal_array_decimal_compare(TaggedPtr tp1, TaggedPtr tp2) {
    return optListDoCompare(tp1, tp2, &optDecimalCompare);
}

CompareResult READONLY _bal_array_list_compare(TaggedPtr tp1, TaggedPtr tp2) {
    return optListDoCompare(tp1, tp2, &_bal_opt_list_compare);
}
