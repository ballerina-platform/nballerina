#include "balrt.h"

CompareResult READONLY _bal_opt_decimal_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return optDecimalCompare(lhs, rhs);
}
