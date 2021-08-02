#include "balrt.h"

int64_t _Bmap__length(TaggedPtr p) {
    MappingPtr lp = taggedToPtr(p);
    return lp->fArray.length;
}

