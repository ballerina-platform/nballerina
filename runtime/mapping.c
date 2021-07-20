#include "balrt.h"
#include <string.h>

static READONLY inline bool matches(MappingPtr m, TaggedPtr key, int64_t mapIndex) {
    return _bal_string_eq(m->fArray.members[mapIndex].key, key);
}

// This part deals with table (and does not look at the fArray).
// So later we can factor it out for the table type.

// When fetch and replace are used in simple loops, LLVM is able to optimize
// the loop into 4 separate loops, one for each size of int.
static READONLY inline int64_t fetch(UntypedPtr table, int64_t i, int tableElementShift)  {
    switch (tableElementShift & 3) {
        case 0:
            {
                uint8_t n = ((GC uint8_t *)table)[i];
                return n == 0xFF ? -1 : n;
            } 
        case 1:
            {
                uint16_t n = ((GC uint16_t *)table)[i];
                return n == 0xFFFF ? -1 : n;
            }
        case 2:
            {
                uint32_t n = ((GC uint32_t *)table)[i];
                return n == 0xFFFFFFFFU ? -1 : n;
            }
    }
    return ((int64_t *)table)[i];
}

// store if the current value is -1; return value before store
static inline int64_t replace(UntypedPtr table, int64_t i, int64_t n, int tableElementShift)  {
#define REPLACE_CASE(T) { \
    T *p = (T *)table; \
    if (p[i] == (T)-1) { \
        p[i] = n; \
        return -1; \
    } \
    else { \
        return p[i]; \
    } \
}
    switch (tableElementShift & 3) {
        case 0: REPLACE_CASE(uint8_t);
        case 1: REPLACE_CASE(uint16_t);
        case 2: REPLACE_CASE(uint32_t);
    }
    REPLACE_CASE(int64_t);
}

// Returns index into the map if found, otherwise -1
static READONLY int64_t lookup(MappingPtr m, TaggedPtr key, uint64_t hash)  {
    int tableElementShift = m->tableElementShift & 3;
    int tableIndexMax = (1 << m->tableLengthShift) - 1;
    int64_t i = hash & tableIndexMax;
    int64_t mapIndex;
    UntypedPtr table = m->table;
    for (;;) {
        mapIndex = fetch(table, i, tableElementShift);
        if (mapIndex == -1 || matches(m, key, mapIndex)) {
            break;
        }
        if (i == 0) {
            i = tableIndexMax;
        }
        else {
            --i;
        }
    }
    return mapIndex;
}

// false if already there
static bool insert(MappingPtr m, TaggedPtr key, uint64_t hash, int64_t insertMapIndex) {
    int tableElementShift = m->tableElementShift & 3;
    int tableIndexMax = (1 << m->tableLengthShift) - 1;
    int64_t i = hash & tableIndexMax;
    UntypedPtr table = m->table;
    for (;;) {
        int64_t mapIndex = replace(table, i, insertMapIndex, tableElementShift);
        if (mapIndex == -1) {
            break;
        }
        if (matches(m, key, mapIndex)) {
            return false;
        }
        if (i == 0) {
            i = tableIndexMax;
        }
        else {
            --i;
        }
    }
    return true;
}

// This is when we know it's not a duplicate
static void insertInit(MappingPtr m, TaggedPtr key, uint64_t hash, int64_t insertMapIndex) {
    int tableElementShift = m->tableElementShift & 3;
    int tableIndexMax = (1 << m->tableLengthShift) - 1;
    int64_t i = hash & tableIndexMax;
    UntypedPtr table = m->table;
    for (;;) {
        int64_t mapIndex = replace(table, i, insertMapIndex, tableElementShift);
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
}

static void allocTable(MappingPtr m) {
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

static void initArray(GC GenericArray *ap, int64_t capacity, int shift) {
    ap->length = 0;
    ap->capacity = capacity;
    if (capacity == 0) {
        ap->members = 0;
    }
    else {
        ap->members = _bal_alloc(capacity << shift);
    }
}

static void mappingGrow(MappingPtr m) {
    growTable(m);
    GC MapField *fields = m->fArray.members;
    int64_t nFields = m->fArray.length;
    for (int64_t i = 0; i < nFields; i++) {
        TaggedPtr key = fields[i].key;
        insertInit(m, key, _bal_string_hash(key), i);
    }
}

TaggedPtr _bal_mapping_construct(int64_t capacity) {
    MappingPtr mp = _bal_alloc(sizeof(struct Mapping));
    initArray(&(mp->gArray), capacity, MAP_FIELD_SHIFT);
    initTable(mp, capacity);
    return ptrAddFlags(mp, (uint64_t)TAG_MAPPING_RW << TAG_SHIFT);
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
    int64_t len = mp->fArray.length;
    mp->fArray.members[len].key = key;
    mp->fArray.members[len].value = value;
    mp->fArray.length = len + 1;
    insert(mp, key, _bal_string_hash(key), len);
}

void _bal_mapping_set(TaggedPtr mapping, TaggedPtr key, TaggedPtr value) {
    MappingPtr mp = taggedToPtr(mapping);
    int64_t len = mp->fArray.length;
   
    uint64_t h = _bal_string_hash(key);
    // Here may insert something that is equal to the empty marker
    // But it doesn't matter because in this case we will rebuild anyway
    bool inserted = insert(mp, key, _bal_string_hash(key), len);
    if (!inserted) {
        return;
    }
    if (unlikely(len >= mp->fArray.capacity)) {
        _bal_array_grow(&(mp->gArray), 0, MAP_FIELD_SHIFT);
    }
    // note that array_grow does not change length
    mp->fArray.members[len].key = key;
    mp->fArray.members[len].value = value;
    len += 1;
    mp->fArray.length = len;
    if (len >= 1 << (mp->tableLengthShift - 1)) {
        mappingGrow(mp);
    }
}
