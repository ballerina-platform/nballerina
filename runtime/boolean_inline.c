#include "balrt.h"

int64_t READONLY _bal_boolean_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return taggedBooleanCompare(lhs, rhs);
}
