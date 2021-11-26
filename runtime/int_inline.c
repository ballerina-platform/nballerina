
#include "balrt.h"

TaggedPtr _bal_int_to_tagged(int64_t n) {
    return intToTagged(n);
}

int64_t READONLY _bal_tagged_to_int(TaggedPtr p) {
    return taggedToInt(p);
}

int64_t _bal_int_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return taggedIntCompare(lhs, rhs);
}
