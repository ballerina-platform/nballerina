#include "balrt.h"

// Unconditionally clears the exact bit of any tagged ptr.
// This doesn't make any assumptions about what the tagged ptr contains.
// In particular, if it contains an immediate string or int, then the bit
// in the position of the exact bit must not be changed.
TaggedPtr _bal_tagged_clear_exact_any(TaggedPtr p) {
    TaggedPtr cleared = _bal_ptr_mask(p, ~EXACT_FLAG);
    return _bal_ptr_mask(p, IMMEDIATE_FLAG) == 0 ? cleared : p;
}

// Unconditionally clears the exact bit of any tagged ptr, assuming the exact bit
// is not being used as part of an immediate value.
TaggedPtr _bal_tagged_clear_exact_ptr(TaggedPtr p) {
    return _bal_ptr_mask(p, ~EXACT_FLAG);
}

// Clears the exact bit of member if structure is not exact
// No assumptions about member
TaggedPtr _bal_tagged_member_clear_exact_any(TaggedPtr structure, TaggedPtr member) {
    uint64_t mask = taggedPtrBits(structure) | ~EXACT_FLAG;
    TaggedPtr cleared = _bal_ptr_mask(member, mask);
    return _bal_ptr_mask(member, IMMEDIATE_FLAG) == 0 ? cleared : member;
}


// Clears the exact bit of member if structure is not exact, assuming the exact bit
// is not being used as part of an immediate value.
TaggedPtr _bal_tagged_member_clear_exact_ptr(TaggedPtr structure, TaggedPtr member) {
    uint64_t mask = taggedPtrBits(structure) | ~EXACT_FLAG;
    return _bal_ptr_mask(member, mask);
}
