#include "balrt.h"

bool _bal_function_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    if ((getTag(p) & UT_MASK) != TAG_FUNCTION) {
        return false;
    }
    FunctionValuePtr fp = taggedToPtr(p);
    FunctionDescPtr fdp = fp->desc;
    AtomicFunctionSubtypePtr fstp = (AtomicFunctionSubtypePtr)stp;
    if (!memberTypeIsSubtypeSimple(fdp->returnType, fstp->returnBitSet)) {
        return false;
    }
    for (uint32_t i = 0; i < fstp->nRequiredParams; i++) {
        MemberType paramType = (i < fdp->nRequiredParams) ? fdp->paramTypes[i] : fdp->restType;
        uint32_t paramBitSet = fstp->paramBitSets[i];
        if (!memberTypeIsSupertypeSimple(paramType, paramBitSet)) {
            return false;
        }
    }
    return memberTypeIsNever(fdp->restType) || memberTypeIsSupertypeSimple(fdp->restType, fstp->restBitSet);
}

bool _bal_function_is_exact(FunctionDescPtr desc, FunctionValuePtr value) {
    return desc == value->desc;
}

// nArgs = requiredArgCount + restArgCount
// We are using uint64_t to avoid overflow in case of restArgCount close to INT64_MAX. This means indexing uniform arg array
// must also be done using uint64_t
GC TaggedPtr *_bal_function_construct_uniform_arg_array(uint64_t nArgs) {
    GC TaggedPtr *arr = _bal_alloc(sizeof(TaggedPtr) * nArgs);
    return arr;
}

void _bal_function_add_rest_args_to_uniform_args(TaggedPtr *uniformArgArray, const TaggedPtr restArgArray, int64_t startingOffset) {
    ListPtr lp = taggedToPtr(restArgArray);
    int64_t len = lp->tpArray.length;
    for (int64_t i = 0; i < len; i++) {
        uint64_t index = startingOffset + i;
        uniformArgArray[index] = lp->desc->get(restArgArray, i);
    }
}

void _bal_function_add_uniform_args_to_rest_args(TaggedPtr restArgArray, const TaggedPtr *uniformArgArray, int64_t startingOffset, int64_t restArgCount) {
    ListPtr lp = taggedToPtr(restArgArray);
    for (int64_t i = 0; i < restArgCount; i++) {
        uint64_t index = startingOffset + i;
        TaggedPtr val = uniformArgArray[index];
        PanicCode err = lp->desc->set(restArgArray, lp->gArray.length, val);
        if (err != 0) {
            // This should never happen since we preallocate the array.
            _bal_panic_internal(err);
        }
    }
}
