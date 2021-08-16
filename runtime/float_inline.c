#include "balrt.h"

TaggedPtr _bal_float_to_tagged(double n) {
    GC double *p = _bal_alloc(sizeof(double));
    *p = n;
    return ptrAddShiftedTag(p, ((uint64_t)TAG_FLOAT) << TAG_SHIFT);
}
