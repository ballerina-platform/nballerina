#include "balrt.h"
bool _bal_function_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    if ((getTag(p) & UT_MASK) != TAG_FUNCTION) {
        return false;
    }
    FunctionPtr fp = taggedToPtr(p);
    FunctionDescPtr fdp = fp->desc;
    uint32_t nArgs = fdp->nArgs;
    FunctionSubtypePtr fstp = (FunctionSubtypePtr)stp;
    if (nArgs != fstp->nArgs) {
        return false;
    }
    for (uint32_t i = 0; i < nArgs; i++) {
        if (!memberTypeIsSubtypeSimple(fdp->argTypes[i], fstp->argTypes[i])) {
            return false;
        }
    }
    return memberTypeIsSubtypeSimple(fdp->returnType, fstp->returnType) && memberTypeIsSubtypeSimple(fdp->restType, fstp->restType);
}
