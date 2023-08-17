#include "balrt.h"
#include <stdio.h>
#include <stdlib.h>

bool _bal_function_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    if ((getTag(p) & UT_MASK) != TAG_FUNCTION) {
        return false;
    }
    FunctionValuePtr fp = taggedToPtr(p);
    FunctionDescPtr fdp = fp->desc;
    EasyFunctionSubtypePtr fstp = (EasyFunctionSubtypePtr)stp;
    int64_t maxRequiredParams = (fstp->nRequiredParams > fdp->nRequiredParams) ? fstp->nRequiredParams : fdp->nRequiredParams;
    if (!memberTypeIsSubtypeSimple(fdp->returnType, fstp->returnBitSet) ||
        (maxRequiredParams > (int64_t)fstp->nRequiredParams)) {
        return false;
    }
    for (int64_t i = 0; i < maxRequiredParams; i++) {
        MemberType paramType = (i < fdp->nRequiredParams) ? fdp->paramTypes[i] : fdp->restType;
        uint32_t paramBitSet = fstp->paramBitSets[i];
        if (!memberTypeIsSupertypeSimple(paramType, paramBitSet)) {
            return false;
        }
    }
    return true;
}

bool _bal_function_is_exact(FunctionDescPtr desc, FunctionValuePtr value) {
    return desc == value->desc;
}

// FIXME: directly use a GEP in compiler
bool _bal_function_is_closure(FunctionValuePtr value) {
    return value->isClosure != 0;
}

// nArgs = requiredArgCount + restArgCount
// We are using uint64_t to avoid overflow in case of restArgCount close to INT64_MAX. This means indexing uniform arg array
// must also be done using uint64_t
GC TaggedPtr *_bal_function_alloc_uniform_args(uint64_t nArgs) {
    GC TaggedPtr *arr = _bal_alloc(sizeof(TaggedPtr) * nArgs);
    return arr;
}

void _bal_function_add_to_uniform_args(TaggedPtr *uniformArgArray, const TaggedPtr restArgArray, int64_t startingOffset) {
    ListPtr lp = taggedToPtr(restArgArray);
    int64_t len = lp->tpArray.length;
    for (int64_t i = 0; i < len; i++) {
        uint64_t index = startingOffset + i;
        uniformArgArray[index] = lp->desc->get(restArgArray, i);
    }
}

void _bal_function_add_to_rest_args(TaggedPtr restArgArray, const TaggedPtr *uniformArgArray, int64_t startingOffset, int64_t restArgCount) {
    ListPtr lp = taggedToPtr(restArgArray);
    for (int64_t i = 0; i < restArgCount; i++) {
        uint64_t index = startingOffset + i;
        TaggedPtr val = uniformArgArray[index];
        PanicCode err = lp->desc->set(restArgArray, lp->gArray.length, val);
        if (err != 0) {
            // This should never happen since we preallocate the array and the values are of the expected type
            _bal_panic_internal(err);
        }
    }
}

void _bal_function_call_closure() {
    printf("Calling closure\n");
    exit(1);
}

ClosureValuePtr _bal_function_create_closure(FunctionValuePtr funcValue, TaggedPtr* capturedValues) {
    ClosureValuePtr closure = _bal_alloc(sizeof(ClosureValue));
    // FIXME:
    closure->func = _bal_function_call_closure;
    closure->desc = funcValue->desc;
    closure->isClosure = 1;
    closure->capturedValues = capturedValues;
    return closure;
}
