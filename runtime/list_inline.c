#include "balrt.h"

int64_t _Barray__length(TaggedPtr p) {
    ListPtr lp = taggedToPtr(p);
    return lp->tpArray.length;
}

void _Barray__push(TaggedPtr p, TaggedPtr val) {
    ListPtr lp = taggedToPtr(p);
    int64_t len = lp->tpArray.length;
    if (unlikely(len >= lp->tpArray.capacity)) {
        _bal_array_grow(&(lp->gArray), 0, TAGGED_PTR_SHIFT);
    }
    // note that array_grow does not change length
    lp->tpArray.members[len] = val;
    lp->tpArray.length = len + 1;
}

bool _bal_list_has_type(TaggedPtr p, ListDesc desc) {
    if ((getTag(p) & UT_MASK) != TAG_LIST_RW) {
        return false;
    }
    ListPtr lp = taggedToPtr(p);
    return (lp->desc & ~desc) == 0;
}