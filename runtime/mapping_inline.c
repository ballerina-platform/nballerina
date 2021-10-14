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
