#include <string.h>
#include <stdlib.h>
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
    decQuad d;
    decContext cx;
    initContext(&cx);
    decQuadAdd(&d, taggedToDecQuad(tp1), taggedToDecQuad(tp2), &cx);
    return finish(&d, &cx);    
}

TaggedPtrPanicCode _bal_decimal_sub(TaggedPtr tp1, TaggedPtr tp2) {
    decQuad d;
    decContext cx;
    initContext(&cx);
    decQuadSubtract(&d, taggedToDecQuad(tp1), taggedToDecQuad(tp2), &cx);
    return finish(&d, &cx);    
}

TaggedPtrPanicCode _bal_decimal_mul(TaggedPtr tp1, TaggedPtr tp2) {
    decQuad d;
    decContext cx;
    initContext(&cx);   
    decQuadMultiply(&d, taggedToDecQuad(tp1), taggedToDecQuad(tp2), &cx);
    return finish(&d, &cx); 
}

TaggedPtrPanicCode _bal_decimal_div(TaggedPtr tp1, TaggedPtr tp2) {
    decQuad d;
    decContext cx;
    initContext(&cx);   
    decQuadDivide(&d, taggedToDecQuad(tp1), taggedToDecQuad(tp2), &cx);
    return finish(&d, &cx); 
}

TaggedPtrPanicCode _bal_decimal_rem(TaggedPtr tp1, TaggedPtr tp2) {
    decQuad d;
    decContext cx;
    initContext(&cx);
    decQuadRemainder(&d, taggedToDecQuad(tp1), taggedToDecQuad(tp2), &cx);
    return finish(&d, &cx);    
}

static TaggedPtrPanicCode finish(decQuad *dq, decContext *cx) {
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
        else if (status & DEC_Overflow) {
            result.panicCode = PANIC_ARITHMETIC_OVERFLOW;
        }
        else if (status & DEC_Underflow) {
            // The reason to do this check is, there are subnormal cases 
            // which cannot be identified using decQuadClass.
            // Consider this example: mul(9.999999999999999999999999999999999E-6001, 1E-143)
            // Before rounding the result is 9.999999999999999999999999999999999E-6144, 
            // which is subnormal. After rounding The class of result is
            // +Normal and value is 1.000000000000000000000000000000000E-6143
            // Also underflow flag is raised.
            // But according the The X3.274 subset, the expected value should be 0.
            // Therefore it is unable to identify cases like this using decQuadClass.
            // In the library,
            // 1. Multiplication happens in two logical stages: 
            //    perform the multiplication to a precision greater than allowed by decimal128 format, 
            //    and then round to fit into a decimal128
            // 2. It is possible for the result of the first stage to be subnormal, 
            //    but then be rounded in the second stage to become normal
            // 3. In this case, decNumber in subset mode will return 0.
            // 4. We can detect this case in decQuad by checking the Underflow flag.
            decQuadZero(dq);
            result.panicCode = 0;
            result.ptr = createDecimal(dq);
        }
        else {
            // status & DEC_IEEE_754_Invalid_operation = true
            result.panicCode = PANIC_INVALID_DECIMAL;
        }
    }
    else {
        result.panicCode = 0;
        result.ptr = createDecimal(dq);
    }
    return result;
}

TaggedPtr _bal_decimal_neg(TaggedPtr tp) {
    const decQuad *dq = taggedToDecQuad(tp);
    if (decQuadClass(dq) == DEC_CLASS_POS_ZERO) {
        return tp;
    } 
    decQuad d;
    decQuadCopyNegate(&d, dq);
    return createDecimal(&d);
}

bool _bal_decimal_exact_eq(TaggedPtr tp1, TaggedPtr tp2) {
    decQuad d1;
    decQuad d2;
    decQuadCanonical(&d1, taggedToDecQuad(tp1));
    decQuadCanonical(&d2, taggedToDecQuad(tp2));
    return memcmp(&d1, &d2, DECQUAD_Bytes) == 0;
}

int64_t _bal_decimal_cmp(TaggedPtr tp1, TaggedPtr tp2) {
    decQuad d;
    decContext cx;
    initContext(&cx);  
    decQuadCompare(&d, taggedToDecQuad(tp1), taggedToDecQuad(tp2), &cx);
    // The return value of decQuadCompare can be 1, 0, -1 or NaN:
    // since this is represented as a decQuad, decQuadClass is used to
    // identify 1, 0, -1.
    // NaN is returned only if lhs or rhs is a NaN.
    // It is not an expected output because both arguments are valid decimals.
    enum decClass class = decQuadClass(&d);
    if (class == DEC_CLASS_POS_ZERO) {
        return 0;        
    }
    else if (class == DEC_CLASS_POS_NORMAL) {
        return 1;
    }
    else {
        return -1;
    }
}

double _bal_decimal_to_float(TaggedPtr tp) {
    char dblStr[DECQUAD_String];
    decQuadToString(taggedToDecQuad(tp), dblStr);
    return strtod(dblStr, NULL);
}

TaggedPtr _bal_decimal_const(const char *decString) {
    decContext cx;
    initContext(&cx);
    decQuad dq;
    decQuadFromString(&dq, decString, &cx);
    return createDecimal(&dq);
}
