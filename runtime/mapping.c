#include "balrt.h"
#include <string.h>

static READONLY inline bool matches(MappingPtr m, TaggedPtr key, int64_t mapIndex) {
    return taggedStringEqual(m->fArray.members[mapIndex].key, key);
}

// This part deals with table (and does not look at the fArray).
// So later we can factor it out for the table type.

// When fetch and replace are used in simple loops, LLVM is able to optimize
// the loop into 4 separate loops, one for each size of int.
static READONLY inline int64_t fetch(UntypedPtr table, int64_t i, int tableElementShift)  {
#define FETCH_CASE(T) { \
    GC T *p = (GC T *)table; \
    if (p[i] == (T)-1) { \
        return -1; \
    } \
    else { \
        return p[i]; \
    } \
}
    switch (tableElementShift & 3) {
        case 0: FETCH_CASE(uint8_t);
        case 1: FETCH_CASE(uint16_t);
        case 2: FETCH_CASE(uint32_t);
    }
    FETCH_CASE(int64_t);
}

static inline void put(UntypedPtr table, int64_t i, int64_t n, int tableElementShift)  {
#define PUT_CASE(T) ((GC T *)table)[i] = n; return
    switch (tableElementShift & 3) {
        case 0: PUT_CASE(uint8_t);
        case 1: PUT_CASE(uint16_t);
        case 2: PUT_CASE(uint32_t);
    }
    PUT_CASE(int64_t);
}

// Returns index into the map if found, otherwise a negative number,
// which can be used to insert it.
// The negative number is -i - 1,
// where i is the index at which it should be inserted
static READONLY int64_t lookup(MappingPtr m, TaggedPtr key, uint64_t hash)  {
    int tableElementShift = m->tableElementShift & 3;
    int tableIndexMax = (1 << m->tableLengthShift) - 1;
    int64_t i = hash & tableIndexMax;
    UntypedPtr table = m->table;
    for (;;) {
        int64_t mapIndex = fetch(table, i, tableElementShift);
        if (mapIndex == -1) {
            break;
        }
        if (matches(m, key, mapIndex)) {
            return mapIndex;
        }
        if (i == 0) {
            i = tableIndexMax;
        }
        else {
            --i;
        }
    }
    return -i - 1; // this cannot overflow, since INT_MIN is -INT_MAX - 1
}

// This is when we know it's not a duplicate.
// We don't need to compare
static int64_t lookupDistinct(MappingPtr m, uint64_t hash) {
    int tableElementShift = m->tableElementShift & 3;
    int tableIndexMax = (1 << m->tableLengthShift) - 1;
    int64_t i = hash & tableIndexMax;
    UntypedPtr table = m->table;
    for (;;) {
        int64_t mapIndex = fetch(table, i, tableElementShift);
        if (mapIndex == -1) {
            break;
        }
        if (i == 0) {
            i = tableIndexMax;
        }
        else {
            --i;
        }
    }
    return -i - 1;
}

// lookupIndex is the negative number returned by lookup
static void insert(MappingPtr m, int64_t lookupIndex, int64_t insertMapIndex) {
    int tableElementShift = m->tableElementShift & 3;
    UntypedPtr table = m->table;
    int i = -(lookupIndex + 1);
    put(table, i, insertMapIndex, tableElementShift);
}

static void allocTable(MappingPtr m) {
    // We are assuming that a _bal_alloc(1 << 63) will get an out of memory panic,
    // so we will never get to do _bal_alloc(1 << 64).
    uint64_t size = (uint64_t)1 << (m->tableLengthShift + m->tableElementShift);
    m->table = _bal_alloc(size);
    // Mark all slots as empty
    memset(m->table, 0xFF, size);
}

static void initTable(MappingPtr m, int64_t capacity) {
    int tableLengthShift = 2;
    while (capacity >= (1 << tableLengthShift)) {
        tableLengthShift += 1;
    }
    // Now have: capacity < 1<<tableLengthShift

    // choose indexElementShift so that
    //  1 << tableLengthShift <= 1 << (8 << tableElementShift)
    // i.e. 8 << tableElementShift >= tableLengthShift
    int tableElementShift = 1;
    while ((8 << tableElementShift) < tableLengthShift) {
        tableElementShift += 1;
    }
    
    // Keep it only 50% full
    tableLengthShift += 1;
    m->tableLengthShift = tableLengthShift;
    m->tableElementShift = tableElementShift;
    allocTable(m);
}

static void growTable(MappingPtr mp) {
    if ((8 << mp->tableElementShift) < mp->tableLengthShift) {
        mp->tableElementShift += 1;
    }
    mp->tableLengthShift += 1;
    allocTable(mp);
}

// This part does not know about the table

static inline Fillability mappingCreateFiller(MappingDescPtr mdp, TaggedPtr *valuePtr) {
    return _bal_structure_create_filler(mdp->restType, mdp->fillerDesc, valuePtr);
}

static void mappingGrow(MappingPtr m) {
    growTable(m);
    GC MapField *fields = m->fArray.members;
    int64_t nFields = m->fArray.length;
    for (int64_t i = 0; i < nFields; i++) {
        TaggedPtr key = fields[i].key;
        insert(m, lookupDistinct(m, _bal_string_hash(key)), i);
    }
}

static inline void mappingPush(MappingPtr mp, TaggedPtr key, TaggedPtr value, int64_t lookupIndex) {
    int64_t len = mp->fArray.length;
    mp->fArray.members[len].key = key;
    mp->fArray.members[len].value = value;
    insert(mp, lookupIndex, len);
    len += 1;
    mp->fArray.length = len;
}

static inline void mappingGrowPush(MappingPtr mp, TaggedPtr key, TaggedPtr value, int64_t lookupIndex) {
    int64_t len = mp->fArray.length;
    if (unlikely(len >= mp->fArray.capacity)) {
        _bal_array_grow(&(mp->gArray), 0, MAP_FIELD_SHIFT);
    }
    // Note that array_grow does not change length.
    // Here may insert something that is equal to the empty marker.
    // But it doesn't matter because in this case we will rebuild anyway.
    mappingPush(mp, key, value, lookupIndex);
    len += 1;
    if (len >= 1 << (mp->tableLengthShift - 1)) {
        mappingGrow(mp);
    }
}

TaggedPtr _bal_mapping_construct(MappingDescPtr desc, int64_t capacity) {
    MappingPtr mp = _bal_alloc(sizeof(struct Mapping));
    mp->desc = desc;
    initGenericArray(&(mp->gArray), capacity, MAP_FIELD_SHIFT);
    initTable(mp, capacity);
    return ptrAddFlags(mp, ((uint64_t)TAG_MAPPING << TAG_SHIFT)|EXACT_FLAG);
}

READONLY TaggedPtr _bal_mapping_get(TaggedPtr mapping, TaggedPtr key) {
    MappingPtr mp = taggedToPtr(mapping);
    int64_t i = lookup(mp, key, _bal_string_hash(key));
    if (i < 0) {
        return (UntypedPtr)0;
    }
    else {
        return mp->fArray.members[i].value;
    }
}

// After calling construct(N), you can call init_member() up to N times
// with distinct keys
void _bal_mapping_init_member(TaggedPtr mapping, TaggedPtr key, TaggedPtr value) {
    MappingPtr mp = taggedToPtr(mapping);
    mappingPush(mp, key, value, lookupDistinct(mp, _bal_string_hash(key)));
}

// We use this in the case where exactness does not guarantee that the set will succeed.
PanicCode _bal_mapping_inexact_set(TaggedPtr mapping, TaggedPtr key, TaggedPtr value) {
    PanicCode code = _bal_mapping_set(mapping, key, value);
    return code == 0 ? 0 : PANIC_MAPPING_STORE;
}

PanicCode _bal_mapping_set(TaggedPtr mapping, TaggedPtr key, TaggedPtr value) {
    MappingPtr mp = taggedToPtr(mapping);
    MappingDescPtr mdp = mp->desc;
    int64_t nRequiredFields = mdp->nFields;
    
    int64_t i = lookup(mp, key, _bal_string_hash(key));
    if (i >= 0) {
        MemberType memberType = i < nRequiredFields ? mdp->fieldTypes[i] : mdp->restType;
        if (!memberTypeContainsTagged(memberType, value)) {
            return storePanicCode(mapping, PANIC_MAPPING_STORE);
        }
        mp->fArray.members[i].value = value;
        return 0;
    }
    // If the field does not exist yet, then it can be allowed only by the rest type.
    if (!memberTypeContainsTagged(mdp->restType, value)) {
         return storePanicCode(mapping, PANIC_MAPPING_STORE);
    }
    mappingGrowPush(mp, key, value, i);
    return 0;
}

TaggedPtrPanicCode _bal_mapping_filling_get(TaggedPtr mapping, TaggedPtr key) {
    TaggedPtrPanicCode result;
    MappingPtr mp = taggedToPtr(mapping);
    int64_t i = lookup(mp, key, _bal_string_hash(key));
    if (i >= 0) {
        result.ptr = mp->fArray.members[i].value;
        result.panicCode = 0;
        return result;
    }
    TaggedPtr value;
    Fillability fill = mappingCreateFiller(mp->desc, &value);
    if (fill == FILL_NONE) {
        result.panicCode = PANIC_NO_FILLER;
        return result;
    }
    mappingGrowPush(mp, key, value, i);
    result.ptr = value;
    result.panicCode = 0;
    return result;
}

PanicCode _bal_mapping_indexed_set(TaggedPtr mapping, int64_t i, TaggedPtr value) {
    MappingPtr mp = taggedToPtr(mapping);
    MemberType memberType = ((MappingDescPtr)(mp->desc))->fieldTypes[i];
    if (!memberTypeContainsTagged(memberType, value))  {
        return storePanicCode(mapping, PANIC_MAPPING_STORE);
    }
    mp->fArray.members[i].value = value;
    return 0;
}

bool _bal_record_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    if ((getTag(p) & UT_MASK) != TAG_MAPPING) {
        return false;
    }
    MappingPtr mp = taggedToPtr(p);
    MappingDescPtr mdp = mp->desc;
    uint32_t nFields = mdp->nFields;
    RecordSubtypePtr rstp = (RecordSubtypePtr)stp;
    // RecordSubtype is a closed record type
    // A subtype must be a closed record types with the same number of fields.
    if (rstp->nFields != nFields) {
        return false;
    }
    for (uint32_t i = 0; i < nFields; i++) {
        RecordSubtypeField *tf = rstp->fields + i;
        if (!taggedStringEqual(tf->fieldName, mp->fArray.members[i].key)) {
            return false;
        }
        if (!memberTypeIsSubtypeSimple(mdp->fieldTypes[i], tf->fieldBitSet)) {
            return false;
        }
    }
    return true;    
}

bool _bal_map_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    if ((getTag(p) & UT_MASK) != TAG_MAPPING) {
        return false;
    }
    MappingPtr mp = taggedToPtr(p);
    MappingDescPtr mdp = mp->desc;
    uint32_t typeBitSet = ((MapSubtypePtr)stp)->bitSet;
    uint32_t nRequiredFields = mdp->nFields;
    for (int64_t i = 0; i < nRequiredFields; i++) {
        if (!memberTypeIsSubtypeSimple(mdp->fieldTypes[i], typeBitSet)) {
            return false;
        }
    }
    return memberTypeIsSubtypeSimple(mdp->restType, typeBitSet);
}

bool _bal_mapping_eq(TaggedPtr p1, TaggedPtr p2) {
    return _bal_mapping_eq_internal(p1, p2, 0);
}

bool _bal_mapping_eq_internal(TaggedPtr p1, TaggedPtr p2, EqStack *sp) {
    MappingPtr mp1 = taggedToPtr(p1);
    int64_t len = mp1->fArray.length;
    MappingPtr mp2 = taggedToPtr(p2);
    if (mp2->fArray.length != len) {
        return false;
    }
    for (int64_t i = 0; i < len; i++) {
        TaggedPtr key = mp1->fArray.members[i].key;
        int64_t j = lookup(mp2, key, _bal_string_hash(key));
        if (j < 0 || !taggedPtrEq(mp1->fArray.members[i].value, mp2->fArray.members[j].value, sp)) {
            return false;
        }
    }
    return true;
}
