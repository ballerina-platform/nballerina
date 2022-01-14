#include "balrt.h"

bool _bal_true_subtype_contains(UNUSED UniformSubtypePtr stp, TaggedPtr tp) {
    return taggedToBoolean(tp) == 1;
}

bool _bal_false_subtype_contains(UNUSED UniformSubtypePtr stp, TaggedPtr tp) {
    return taggedToBoolean(tp) == 0;
}
