#include "balrt.h"

bool _bal_type_contains(ComplexTypePtr ctp, TaggedPtr p) {
    int flag = 1 << ((getTag(p) & UT_MASK));
    if (ctp->all & flag) {
        return true;
    }
    if (!(ctp->some & flag)) {
        return false;
    }
    int i = __builtin_popcount(ctp->some & (flag - 1));
    UniformSubtypePtr vp = ctp->subtypes[i];
    return (vp->contains)(vp, p);
}
