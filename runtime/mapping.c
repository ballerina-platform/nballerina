#include "balrt.h"

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

TaggedPtr _bal_mapping_construct(int64_t capacity) {
    MappingPtr mp = _bal_alloc(sizeof(struct Mapping));
    initArray(&(mp->gArray), capacity, MAP_FIELD_SHIFT);
    return ptrAddFlags(mp, (uint64_t)TAG_MAPPING_RW << TAG_SHIFT);
}

void _bal_mapping_set(TaggedPtr mapping, TaggedPtr key, TaggedPtr value) {
    MappingPtr mp = taggedToPtr(mapping);
    int64_t len = mp->fArray.length;
    if (unlikely(len >= mp->fArray.capacity)) {
        _bal_array_grow(&(mp->gArray), 0, MAP_FIELD_SHIFT);
    }
    // note that array_grow does not change length
    mp->fArray.members[len].key = key;
    mp->fArray.members[len].value = value;
    mp->fArray.length = len + 1;
}


