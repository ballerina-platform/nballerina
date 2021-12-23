#include "balrt.h"

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
