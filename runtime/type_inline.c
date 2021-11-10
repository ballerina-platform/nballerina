#include "balrt.h"

bool _bal_type_contains(TypeTestPtr ttp, TaggedPtr p) {
    int flag = 1 << ((getTag(p) & UT_MASK));
    if (ttp->all & flag) {
        return true;
    }
    if (!(ttp->some & flag)) {
        return false;
    }
    int i = __builtin_popcount(ttp->some & (flag - 1));
    SubtypeTestPtr vp = ttp->subtypes[i];
    return (vp->contains)(vp, p);
}
