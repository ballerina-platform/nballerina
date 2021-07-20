#include <inttypes.h>
#include <stdio.h>
#include "balrt.h"

TaggedPtr _Bint__toHexString(int64_t i) {
    // allow for sign, 2 hex digits for each byte and the nul byte
    char buf[1 + 2*8 + 1]; 
    int len;
    if (i < 0) {
        len = sprintf(buf, "-%" PRIx64, -(uint64_t)i);
    } else {
        len = sprintf(buf, "%" PRIx64, i);
    }
    SmallStringPtr p = _bal_alloc(smallStringSize(len));
    memcpy(p->bytes, buf, len);
    p->length = len;
    return ptrAddFlags(p, (uint64_t)TAG_STRING << TAG_SHIFT);
}
