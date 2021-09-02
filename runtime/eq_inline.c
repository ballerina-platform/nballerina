#include "balrt.h"
#include "balrt_inline.h"

bool READONLY _bal_eq(TaggedPtr tp1, TaggedPtr tp2) {
    return taggedPtrEqual(tp1, tp2);
}

bool READONLY _bal_exact_eq(TaggedPtr tp1, TaggedPtr tp2) {
    if (tp1 == tp2) {
        return 1;
    }
    int tag1 = getTag(tp1);
    int tag2 = getTag(tp2);
    if (tag1 != tag2) {
        return 0;
    }
    switch (tag1) {
        case TAG_STRING:
            return taggedStringEqual(tp1, tp2);
        case (TAG_INT|FLAG_INT_ON_HEAP):
            {
                IntPtr p1 = taggedToPtr(tp1);
                IntPtr p2 = taggedToPtr(tp2);
                return *p1 == *p2;
            }   
        case TAG_FLOAT:
            {
                FloatPtr p1 = taggedToPtr(tp1);
                FloatPtr p2 = taggedToPtr(tp2);
                return _bal_float_exact_eq(*p1, *p2);
            }
    }   
    return 0;
}
