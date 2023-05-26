#include "balrt.h"

bool _bal_function_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    if ((getTag(p) & UT_MASK) != TAG_FUNCTION) {
        return false;
    }
    FunctionValuePtr fp = taggedToPtr(p);
    FunctionDescPtr fdp = fp->desc;
    MemberType actualReturnType = fdp->returnType;
    FunctionSubtypePtr fstp = (FunctionSubtypePtr)stp;
    if (!memberTypeIsSubtypeSimple(actualReturnType, fstp->returnBitSet)) {
        return false;
    }
    int64_t nParams = fdp->nParams;
    for (int64_t i = 0; i < nParams; i++) {
        MemberType paramType = fdp->paramTypes[i];
        uint32_t paramBitSet;
        if (i > fstp->nParams) {
            paramBitSet = fstp->restBitSet;
        }
        else {
            paramBitSet = fstp->paramBitSets[i];
        }
        if (!memberTypeIsSubtypeSimple(paramType, paramBitSet)) {
            return false;
        }
    }
    return true;
}

bool _bal_function_is_exact(FunctionDescPtr desc, FunctionValuePtr value) {
    return desc == value->desc;
}

// nArgs = requiredArgCount + restArgCount
// We are using uint64_t to avoid overflow in case of restArgCount close to INT64_MAX. This means indexing uniform arg array
// must also be done using uint64_t
GC TaggedPtr *_bal_construct_uniform_arg_array(uint64_t nArgs) {
    GC TaggedPtr *arr = _bal_alloc(sizeof(TaggedPtr) * nArgs);
    return arr;
}

void _bal_add_rest_args_to_uniform_args(TaggedPtr *uniformArgArray, TaggedPtr restArgArray, int64_t startingOffset) {
    ListPtr lp = taggedToPtr(restArgArray);
    int64_t len = lp->tpArray.length;
    for (int64_t i = 0; i < len; i++) {
        uint64_t index = startingOffset + i;
        uniformArgArray[index] = lp->desc->get(restArgArray, i);
    }
}

void _bal_add_uniform_args_to_rest_args(TaggedPtr restArgArray, TaggedPtr *uniformArgArray, int64_t restArgCount, int64_t startingOffset) {
    ListPtr lp = taggedToPtr(restArgArray);
    for (int64_t i = 0; i < restArgCount; i++) {
        uint64_t index = startingOffset + i;
        TaggedPtr val = uniformArgArray[index];
        PanicCode err = lp->desc->set(restArgArray, lp->gArray.length, val);
        if (err != 0) {
            _bal_panic_internal(err);
        }
    }
}
