#include "balrt.h"

int64_t READONLY _bal_opt_boolean_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return optBooleanCompare(lhs, rhs);
}
