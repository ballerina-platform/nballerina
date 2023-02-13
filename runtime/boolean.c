#include "balrt.h"

bool _bal_true_subtype_contains(UNUSED UniformSubtypePtr stp, TaggedPtr tp) {
    return taggedToBoolean(tp) == 1;
}

bool _bal_false_subtype_contains(UNUSED UniformSubtypePtr stp, TaggedPtr tp) {
    return taggedToBoolean(tp) == 0;
}

const struct GenericFillerDesc _bal_boolean_false_filler_desc = { &_bal_generic_filler_create, TAGGED_FALSE };
const struct GenericFillerDesc _bal_boolean_true_filler_desc = { &_bal_generic_filler_create, TAGGED_TRUE };
