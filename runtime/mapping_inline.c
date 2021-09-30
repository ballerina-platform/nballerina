#include "balrt.h"

int64_t BAL_LANG_MAP_NAME(length)(TaggedPtr p) {
    MappingPtr lp = taggedToPtr(p);
    return lp->fArray.length;
}

bool _bal_mapping_has_type(TaggedPtr p, MappingDesc desc) {
    if ((getTag(p) & UT_MASK) != TAG_MAPPING_RW) {
        return false;
    }
    MappingPtr mp = taggedToPtr(p);
    return (mp->desc & ~desc) == 0;
}

TaggedPtr _bal_mapping_exactify(TaggedPtr p, MappingDesc desc) {
    MappingPtr mp = taggedToPtr(p);
    if (mp == taggedToPtrExact(p) && (mp->desc == desc)) {
        // exact bit is not set, but should be
        return p + EXACT_FLAG;
    }
    return p;
}
