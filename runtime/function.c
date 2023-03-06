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
    // printf("fdp->retTy: %d\n", fdp->returnType);
    // FIXME: This is not correct. We need to check the argument types
    for (uint32_t i = 0; i < nArgs; i++) {
        if (!memberTypeIsSubtypeSimple(fdp->argTypes[i], fstp->argTypes[i])) {
            return false;
        }
    }
    // FIXME: check retype
    // return memberTypeIsSubtypeSimple(fdp->returnType, fstp->returnType);
    return true;
}
