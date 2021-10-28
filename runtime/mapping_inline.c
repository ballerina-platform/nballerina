#include "balrt.h"

int64_t BAL_LANG_MAP_NAME(length)(TaggedPtr p) {
    MappingPtr lp = taggedToPtr(p);
    return lp->fArray.length;
}

TaggedPtr _bal_mapping_exactify(TaggedPtr p, MappingDescPtr desc) {
    MappingPtr mp = taggedToPtr(p);
    if (mp == taggedToPtrExact(p) && (mp->desc == desc)) {
        // exact bit is not set, but should be
        return p + EXACT_FLAG;
    }
    return p;
}

READONLY TaggedPtr _bal_mapping_indexed_get(TaggedPtr mapping, int64_t i) {
    MappingPtr mp = taggedToPtr(mapping);
    return mp->fArray.members[i].value;
}
