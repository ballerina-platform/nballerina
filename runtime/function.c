#include "balrt.h"
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>

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

FunctionValuePtr _bal_function_create_closure(FunctionPtr fnPtr, FunctionDescPtr desc) {
    FunctionValuePtr closure = _bal_alloc(sizeof(FunctionValue));
    closure->func = fnPtr;
    closure->desc = desc;
    return closure;
}

// i386 https://github.com/gcc-mirror/gcc/blob/fab08d12b40ad637c5a4ce8e026fb43cd3f0fad1/gcc/config/i386/i386.h#L1659
// aarch64 https://github.com/gcc-mirror/gcc/blob/fab08d12b40ad637c5a4ce8e026fb43cd3f0fad1/gcc/config/aarch64/aarch64.h#L1082C9-L1082C24
// NOTE: If we are to properly select this we need to pass in to the allocation function the size, since we support cross compilation
#define TRAMPOLINE_SIZE 40 // picking the largest of the two 

// TODO: how to link this to GC?
void *_bal_function_allocate_trampoline_in_heap() {
    int protection = PROT_READ | PROT_WRITE | PROT_EXEC;
    int flags = MAP_ANONYMOUS | MAP_PRIVATE;
    void *p = mmap(NULL, TRAMPOLINE_SIZE, protection, flags, -1, 0);
    if (p != MAP_FAILED)
        return p;
    fprintf(stderr, "failed to allocate trampoline\n");
    fflush(stderr);
    abort();
}
