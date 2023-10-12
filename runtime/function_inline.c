#include "balrt.h"

bool READONLY _bal_function_is_closure(const TaggedPtr fp) {
    uint64_t bits = taggedPtrBits(fp);
    if (likely((bits & FUNCTION_CLOSURE_FLAG) == 0)) {
        return false;
    }
    return true;
}

bool READONLY _bal_function_is_exact(FunctionDescPtr desc, FunctionPtr value, const TaggedPtr fp) {
    (void)desc;
    (void)value;
    uint64_t bits = taggedPtrBits(fp);
    return (bits & EXACT_FLAG) != 0;
}
