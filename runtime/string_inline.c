#include "balrt.h"

int64_t BAL_LANG_STRING_NAME(length)(TaggedPtr p) {
    StringLength len = taggedStringLength(p);
    return len.nCodePoints;
}

bool READONLY _bal_string_eq(TaggedPtr tp1, TaggedPtr tp2) {
    return taggedStringEqual(tp1, tp2);
}

int64_t READONLY _bal_string_compare(TaggedPtr lhs, TaggedPtr rhs) {
    return taggedStringCompare(lhs, rhs);
}
