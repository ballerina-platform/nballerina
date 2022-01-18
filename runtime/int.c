#include "balrt.h"
#include <stdio.h>
#include <string.h>

static bool intRangeListContains(const IntRange *start, const IntRange *end, int64_t n);

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

bool _bal_int_subtype_contains(UniformSubtypePtr stp, TaggedPtr tp) {
    IntSubtypePtr istp = (IntSubtypePtr)stp;
    return intRangeListContains(istp->ranges, istp->ranges + istp->nRanges, taggedToInt(tp));
}

bool _bal_type_contains_int(ComplexTypePtr ctp, int64_t n) {
    UniformSubtypeData usd = complexTypeUniformSubtypeData(ctp, TAG_INT);
    IntSubtypePtr istp = (IntSubtypePtr)usd.ptr;
    if (istp == 0) {
        return usd.contains;
    }
    return intRangeListContains(istp->ranges, istp->ranges + istp->nRanges, n);
}

// We could do a binary search here, but since we coalesce individual singletons into ranges,
// the common case will be 1 or a few ranges, where the overhead of binary search will make
// it lose over linear search.
// XXX We should do a binary search when the number of ranges is not small
// (e.g. > something like 8, I guess)
// We know that r < end (because nRanges > 0)
static bool intRangeListContains(const IntRange *r, const IntRange *end, int64_t n) {
    // Try to do minimum amount of work when there is just one range.
    for (;;) {
        if (n <= r->max) {
            if (n >= r->min) {
                return true;
            }
            // if it's less than r->max then it will be less than p->min for all p > r
            break;
        }
        if (++r == end) {
            break;
        }
    }
    return false;
}
