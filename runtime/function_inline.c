#include "balrt.h"

bool READONLY _bal_function_is_closure(const TaggedPtr fp) {
    uint64_t bits = taggedPtrBits(fp);
    if (likely((bits & FUNCTION_CLOSURE_FLAG) == 0)) {
        return false;
    }
    return true;
}

GC ExecCodePtr READONLY _bal_function_code_ptr(const TaggedPtr tp) {
    FunctionPtr fp = taggedToPtr(tp);
    return fp->code;
}
