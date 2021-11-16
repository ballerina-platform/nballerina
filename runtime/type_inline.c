#include "balrt.h"

bool _bal_type_contains(ComplexTypePtr ctp, TaggedPtr p) {
    return complexTypeContainsTagged(ctp, p);
}
