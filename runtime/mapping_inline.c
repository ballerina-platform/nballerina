#include "balrt.h"

int64_t _Bmap__length(TaggedPtr p) {
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