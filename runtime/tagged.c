#include "balrt.h"

#define SHIFTED_TAG_MASK (((uint64_t)TAG_MASK) << TAG_SHIFT)

TaggedPtr _bal_ptr_add_shifted_tag(char HEAP_STAR(p), uint64_t shifted_tag) {
    return p + shifted_tag;
}

TaggedPtr _bal_int_add_shifted_tag(uint64_t n, uint64_t shifted_tag) {
    TaggedPtr tp = (TaggedPtr)0;
    return tp + (shifted_tag|n);
}
