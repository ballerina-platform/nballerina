#include "balrt.h"

bool _bal_true_subtype_contains(UNUSED UniformSubtypePtr stp, TaggedPtr tp) {
    return taggedToBoolean(tp) == 1;
}

bool _bal_false_subtype_contains(UNUSED UniformSubtypePtr stp, TaggedPtr tp) {
    return taggedToBoolean(tp) == 0;
}

const struct ConstFillerDesc false_filler_desc = { &constFillerCreate, (TaggedPtr)((((uint64_t)TAG_BOOLEAN) << TAG_SHIFT)) };
const struct ConstFillerDesc true_filler_desc = { &constFillerCreate, (TaggedPtr)((((uint64_t)TAG_BOOLEAN) << TAG_SHIFT) | 1) };

