#include "balrt.h"
#include <assert.h>
#include <unistd.h>

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

// This is to allocated untyped memory in address space 0 (llvm trampoline doesn't work with other address spaces)
// for holding the captured values. Compiler must bitcast this to appropriate type before using.
void* _bal_function_alloc_closure_struct(uint32_t nValues) {
    void* ptr = (void*)_bal_alloc(sizeof(TaggedPtr) * nValues);
    return ptr;
}

FunctionValuePtr _bal_function_construct_closure(FunctionPtr fnPtr, FunctionDescPtr desc) {
    FunctionValuePtr closure = _bal_alloc(sizeof(FunctionValue));
    closure->func = fnPtr;
    closure->desc = desc;
    return closure;
}

// i386 https://github.com/gcc-mirror/gcc/blob/fab08d12b40ad637c5a4ce8e026fb43cd3f0fad1/gcc/config/i386/i386.h#L1659
// aarch64 https://github.com/gcc-mirror/gcc/blob/fab08d12b40ad637c5a4ce8e026fb43cd3f0fad1/gcc/config/aarch64/aarch64.h#L1082C9-L1082C24
#define TRAMPOLINE_SIZE 40 // picking the largest of the two

static void* trampoline_buffer = NULL;
uint64_t offset = 0;

// We are using a bump allocator to allocate a whole page of executable memory in one go and break it up as needed.
void *_bal_function_allocate_trampoline_in_heap() {
    uint64_t page_size = sysconf(_SC_PAGESIZE);
    if ((offset + 1) * TRAMPOLINE_SIZE >= page_size || trampoline_buffer == NULL) {
        trampoline_buffer = _bal_alloc_exec(page_size);
        offset = 0;
    }
    void *trampoline = trampoline_buffer + (offset * TRAMPOLINE_SIZE);
    offset += 1;
    return trampoline;
}
