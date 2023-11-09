#include "balrt.h"

int64_t BAL_LANG_ARRAY_NAME(length)(TaggedPtr p) {
    ListPtr lp = taggedToPtr(p);
    return lp->tpArray.length;
}

void BAL_LANG_ARRAY_NAME(push)(TaggedPtr p, TaggedPtr val) {
    ListPtr lp = taggedToPtr(p);
    int64_t len = lp->tpArray.length;
    PanicCode err = lp->desc->set(p, len, val);
    if (err != 0) {
        _bal_panic_internal(err);
    }
}

int64_t READONLY _bal_list_length(TaggedPtr p) {
    ListPtr lp = taggedToPtr(p);
    return lp->tpArray.length;
}
