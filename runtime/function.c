#include "balrt.h"

bool _bal_function_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    if ((getTag(p) & UT_MASK) != TAG_FUNCTION) {
        return false;
    }
    FunctionValuePtr valPtr = taggedToPtr(p);
    FunctionSignaturePtr signaturePtr = valPtr->signature;
    MemberType actualReturnTy = signaturePtr->returnTy;
    FunctionSubtypePtr fstp = (FunctionSubtypePtr)stp;
    if (!memberTypeIsSubtypeSimple(actualReturnTy, fstp->returnBitSet)) {
        return false;
    }
    int64_t nParams = signaturePtr->nParams;
    for (int64_t i = 0; i < nParams; i++) {
        MemberType paramTy = signaturePtr->paramTys[i];
        uint32_t paramBitSet;
        if (i > fstp->nParams) {
            paramBitSet = fstp->restBitSet;
        }
        else {
            paramBitSet = fstp->paramBitSets[i];
        }
        if (!memberTypeIsSubtypeSimple(paramTy, paramBitSet)) {
            return false;
        }
    }
    return true;
}

bool _bal_is_exact(FunctionSignaturePtr signature, FunctionValuePtr value) {
    return signature == value->signature;
}

TaggedPtr* _bal_create_uniform_arg_array(int64_t argCount) {
    TaggedPtr *arr = (TaggedPtr*)_bal_alloc(sizeof(TaggedPtr) * argCount);
    return arr;
}

void _bal_add_uniform_arg(TaggedPtr* arr, int64_t index, TaggedPtr arg) {
    arr[index] = arg;
}

void _bal_add_rest_args(TaggedPtr* arr, int64_t index, TaggedPtr restArgArray) {
    ListPtr lp = taggedToPtr(restArgArray);
    int64_t len = lp->tpArray.length;
    for (int64_t i = 0; i < len; i++) {
        arr[index + i] = lp->desc->get(restArgArray, i);
    }
    // FIXME: can't directly memcpy since values in the array as not tagged. Why?
    // memcpy(arr + index, lp->tpArray.members, sizeof(TaggedPtr) * len);
}

void _bal_add_uniform_args_to_rest_array(TaggedPtr* arr, int64_t nArgs, int64_t startingOffset, TaggedPtr restArgArray) {
    ListPtr lp = taggedToPtr(restArgArray);
    for (int64_t i = 0; i < nArgs; i++) {
        TaggedPtr val = arr[startingOffset + i];
        int64_t len = lp->gArray.length;
        PanicCode err = lp->desc->set(restArgArray, len, val);
        if (err != 0) {
            _bal_panic_internal(err);
        }
    }
}
