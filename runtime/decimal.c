#include "balrt.h"
#include "third-party/decNumber/decQuad.h"

typedef GC decQuad *DecimalPtr;

// Status flags that we should treat as failure
// XXX need to investigate DEC_Underflow
#define DECIMAL_STATUS_FAIL DEC_Errors

static TaggedPtrPanicCode finish(decQuad *dq, decContext *cx);

static inline TaggedPtr createDecimal(decQuad *dq) {
    DecimalPtr dp = _bal_alloc(sizeof(decQuad));
    *dp = *dq;
    return ptrAddFlags(dp, (uint64_t)TAG_DECIMAL << TAG_SHIFT);
}

static inline const decQuad *taggedToDecQuad(TaggedPtr tp) {
    UntypedPtr p = taggedToPtr(tp);
    return (void *)p;
}

static inline void initContext(decContext *cx) {
    cx->status = 0;
    cx->round = DEC_ROUND_HALF_EVEN;
}

TaggedPtrPanicCode _bal_decimal_add(TaggedPtr tp1, TaggedPtr tp2) {
    const decQuad *dq1 = taggedToDecQuad(tp1);
    const decQuad *dq2 = taggedToDecQuad(tp2);
    decQuad d;
    decContext cx;
    initContext(&cx);
    decQuadAdd(&d, dq1, dq2, &cx);
    return finish(&d, &cx);    
}

TaggedPtrPanicCode _bal_decimal_sub(TaggedPtr tp1, TaggedPtr tp2) {
    const decQuad *dq1 = taggedToDecQuad(tp1);
    const decQuad *dq2 = taggedToDecQuad(tp2);
    decQuad d;
    decContext cx;
    initContext(&cx);
    decQuadSubtract(&d, dq1, dq2, &cx);
    return finish(&d, &cx);    
}

TaggedPtrPanicCode _bal_decimal_mul(TaggedPtr tp1, TaggedPtr tp2) {
    const decQuad *dq1 = taggedToDecQuad(tp1);
    const decQuad *dq2 = taggedToDecQuad(tp2);
    decQuad d;
    decContext cx;
    initContext(&cx);   
    decQuadMultiply(&d, dq1, dq2, &cx);
    return finish(&d, &cx); 
}

TaggedPtrPanicCode finish(decQuad *dq, decContext *cx) {
    TaggedPtrPanicCode result;
    enum decClass class = decQuadClass(dq);
    if (class == DEC_CLASS_POS_ZERO || 
        class == DEC_CLASS_NEG_ZERO || 
        class == DEC_CLASS_POS_SUBNORMAL || 
        class == DEC_CLASS_NEG_SUBNORMAL) {
        decQuadZero(dq);
        result.panicCode = 0;
        result.ptr = createDecimal(dq);
        return result;
    }
    uint32_t status = cx->status;
    if (status & DECIMAL_STATUS_FAIL) {
        if (status & DEC_Division_by_zero) {
            result.panicCode = PANIC_DIVIDE_BY_ZERO;
        }
        else if (status & DEC_Underflow) {
            decQuadZero(dq);
            result.panicCode = 0;
            result.ptr = createDecimal(dq);
        }
        else {
            result.panicCode = PANIC_ARITHMETIC_OVERFLOW;
        }
    }
    else {
        result.panicCode = 0;
        result.ptr = createDecimal(dq);
    }
    return result;
}

TaggedPtr _bal_decimal_const(const char *decString) {
    decContext cx;
    initContext(&cx);
    decQuad dq;
    decQuadFromString(&dq, decString, &cx);
    return createDecimal(&dq);
}
