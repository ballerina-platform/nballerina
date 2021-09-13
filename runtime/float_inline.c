#include "balrt.h"

TaggedPtr _bal_float_to_tagged(double n) {
    GC double *p = _bal_alloc(sizeof(double));
    *p = n;
    return ptrAddShiftedTag(p, ((uint64_t)TAG_FLOAT) << TAG_SHIFT);
}

double READONLY _bal_tagged_to_float(TaggedPtr p) {
    return taggedToFloat(p);
}

int64_t _bal_float_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return taggedFloatCompare(lhs, rhs);
}
