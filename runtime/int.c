#include "balrt.h"
#include <stdio.h>
#include <string.h>

TaggedPtr BAL_LANG_INT_NAME(toHexString)(int64_t i) {
    // allow for sign, 2 hex digits for each byte and the nul byte
    char buf[1 + 2*8 + 1]; 
    int len;
    if (i < 0) {
        len = sprintf(buf, "-%" PRIx64, -(uint64_t)i);
    }
    else {
        len = sprintf(buf, "%" PRIx64, i);
    }
    TaggedPtr result;
    memcpy(_bal_string_alloc(len, len, &result), buf, len);
    return result;
}
