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

int64_t READONLY _bal_array_int_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return intArrayCompare(lhs, rhs);
}

int64_t READONLY _bal_array_float_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return floatArrayCompare(lhs, rhs);
}

int64_t READONLY _bal_array_string_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return stringArrayCompare(lhs, rhs);
}

int64_t READONLY _bal_array_boolean_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return booleanArrayCompare(lhs, rhs);
}
