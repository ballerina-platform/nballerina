#include "balrt.h"

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    ErrorPtr ep = _bal_alloc(sizeof(struct Error));
    ep->message = message;
    ep->lineNumber = lineNumber;
    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

TaggedPtr _Berror__message(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->message;
}
