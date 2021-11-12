#include "balrt.h"
#include "third-party/decNumber/decQuad.h"

typedef GC decQuad *DecimalPtr;

// Status flags that we should treat as failure
// XXX need to investigate DEC_Underflow
#define DECIMAL_STATUS_FAIL (DEC_Errors|DEC_Subnormal)

static inline TaggedPtr createDecimal(decQuad *dq) {
    DecimalPtr dp = _bal_alloc(sizeof(decQuad));
    *dp = *dq;
    return ptrAddFlags(dp, (uint64_t)TAG_DECIMAL << TAG_SHIFT);
}

static inline TaggedPtrPanicCode finish(decQuad *dq, decContext *cx) {
    TaggedPtrPanicCode result;
    uint32_t status = cx->status;
    if (status & DECIMAL_STATUS_FAIL) {
        // XXX decide what panic codes to use 
        result.panicCode = (status & DEC_Division_by_zero) ? PANIC_DIVIDE_BY_ZERO : PANIC_ARITHMETIC_OVERFLOW;
    }
    else {
        result.panicCode = 0;
    }
    if (result.panicCode == 0) {
        if (decQuadClass(dq) == DEC_CLASS_NEG_ZERO) {
            decQuadZero(dq);
        }
        result.ptr = createDecimal(dq);
    }
    return result;  
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

TaggedPtr _bal_decimal_const(const char *decString) {
    decContext cx;
    initContext(&cx);
    decQuad dq;
    decQuadFromString(&dq, decString, &cx);
    return createDecimal(&dq);
}
