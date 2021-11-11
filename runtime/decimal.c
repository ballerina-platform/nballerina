#include "balrt.h"
#include "third-party/decNumber/decQuad.h"

typedef GC decQuad *DecimalPtr;

typedef struct {
    TaggedPtr ptr;
    PanicCode panicCode;
} TaggedPtrPanicCode;

// Status flags that we should treat as failure
// XXX need to investigate DEC_Underflow
#define DECIMAL_STATUS_FAIL (DEC_Errors|DEC_Subnormal)

static inline PanicCode statusPanicCode(uint32_t status) {
    if (status & DECIMAL_STATUS_FAIL) {
        // XXX decide what panic codes to use 
        return (status & DEC_Division_by_zero) ? PANIC_DIVIDE_BY_ZERO : PANIC_ARITHMETIC_OVERFLOW;
    }
    return 0;
}

static inline TaggedPtr createDecimal(decQuad *dq) {
    DecimalPtr dp = _bal_alloc(sizeof(decQuad));
    *dp = *dq;
    return ptrAddFlags(dp, (uint64_t)TAG_DECIMAL);
}

static inline decQuad *taggedToDecQuad(TaggedPtr tp) {
    UntypedPtr p = taggedToPtr(tp);
    return (void *)p;
}

TaggedPtrPanicCode _bal_decimal_add(TaggedPtr tp1, TaggedPtr tp2) {
    TaggedPtrPanicCode result;
    decQuad *dq1 = taggedToDecQuad(tp1);
    decQuad *dq2 = taggedToDecQuad(tp2);
    decQuad d;
    decContext cx;
    cx.status = 0;
    cx.round = DEC_ROUND_HALF_EVEN;
    decQuadAdd(&d, dq1, dq2, &cx);
    result.panicCode = statusPanicCode(cx.status);
    if (result.panicCode == 0) {
        result.ptr = createDecimal(&d);
    }
    return result;    
}



