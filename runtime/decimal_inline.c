#include "balrt.h"

int64_t READONLY _bal_decimal_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return taggedDecimalCompare(lhs, rhs);
}
