#include "balrt.h"
#include "balrt_inline.h"

TaggedPtr _bal_convert_to_float(TaggedPtr tp) {
    double d;
    switch (getTag(tp) & UT_MASK) {
        case TAG_INT:
            d = taggedToInt(tp);
            break;
        case TAG_DECIMAL:
            d = _bal_decimal_to_float(tp);
            break;
        default:
            return tp;
    }
    return floatToTagged(d);
}

TaggedWithOverflow _bal_convert_to_int(TaggedPtr tp) {
    IntWithOverflow intRes;
    TaggedWithOverflow res;
    switch (getTag(tp) & UT_MASK) {
        case TAG_FLOAT:
            intRes = _bal_float_to_int(taggedToFloat(tp));
            break;
        case TAG_DECIMAL:
            intRes = _bal_decimal_to_int(tp);
            break;
        default:
            res.overflow = false;
            res.ptr = tp;
            return res;
    }

    res.overflow = intRes.overflow;
    if (!res.overflow) {
        res.ptr = intToTagged(intRes.value);
    }
    return res;
}

TaggedPtrPanicCode _bal_convert_to_decimal(TaggedPtr tp) {
    TaggedPtrPanicCode res;
    switch (getTag(tp) & UT_MASK) {
        case TAG_INT:
            res.ptr = _bal_decimal_from_int(taggedToInt(tp));
            break;
        case TAG_FLOAT:
            return _bal_decimal_from_float(taggedToFloat(tp));
        default:
            res.ptr = tp;
    }
    res.panicCode = 0;
    return res;
}
