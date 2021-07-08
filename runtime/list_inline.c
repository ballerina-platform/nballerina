#include "balrt.h"


int64_t _Barray__length(TaggedPtr p) {
    ListPtr lp = taggedToList(p);
    return lp->length;
}

void _Barray__push(TaggedPtr p, TaggedPtr val) {
    ListPtr lp = taggedToList(p);
    int64_t len = lp->length;
    if (unlikely(len >= lp->capacity)) {
        _bal_array_grow(lp, 0);
    }
    // note that array_grow does not change length
    lp->members[len] = val;
    lp->length = len + 1;
}
