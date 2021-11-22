#include "balrt.h"

TaggedPtr _bal_float_to_tagged(double n) {
    return floatToTagged(n);
}

double READONLY _bal_tagged_to_float(TaggedPtr p) {
    return taggedToFloat(p);
}

int64_t READONLY _bal_float_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return taggedFloatCompare(lhs, rhs);
}
