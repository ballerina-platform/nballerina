#include "balrt.h"

int64_t BAL_LANG_MAP_NAME(length)(TaggedPtr p) {
    MappingPtr lp = taggedToPtr(p);
    return lp->fArray.length;
}

READONLY TaggedPtr _bal_mapping_indexed_get(TaggedPtr mapping, int64_t i) {
    MappingPtr mp = taggedToPtr(mapping);
    return mp->fArray.members[i].value;
}
