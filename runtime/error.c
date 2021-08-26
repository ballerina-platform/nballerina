#include "balrt.h"

TaggedPtr _bal_error_construct(TaggedPtr msg, int64_t lineNumber) {
    ErrorPtr ep = _bal_alloc(sizeof(struct Mapping));
    ep->msg = msg;
    ep->lineNumber = lineNumber;
    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

TaggedPtr _bal_get_error_msg(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->msg;
}
