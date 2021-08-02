#include "balrt.h"

int64_t _Bstring__length(TaggedPtr p) {
    StringLength len = taggedStringLength(p);
    return len.nCodePoints;
}

bool READONLY _bal_string_eq(TaggedPtr tp1, TaggedPtr tp2) {
    return taggedStringEqual(tp1, tp2);
}
