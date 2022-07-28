#include <errno.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#include "balrt.h"
#include "third-party/decNumber/decQuad.h"
#include "third-party/dtoa/emyg_dtoa.h"

typedef GC decQuad *DecimalPtr;

// Status flags that we should treat as failure
// XXX need to investigate DEC_Underflow
#define DECIMAL_STATUS_FAIL DEC_Errors

static TaggedPtrPanicCode finish(decQuad *dq, decContext *cx);
static bool decimalListContains(const DecimalConstPtr *start, const DecimalConstPtr *end, const decQuad *dq);

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
            // This is used in a case where a float operation would return NaN
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

TaggedPtr _bal_decimal_from_int(int64_t val) {
    decQuad d;
    if (INT32_MIN <= val && val <= INT32_MAX) {
        decQuadFromInt32(&d, (int32_t)val);
    } 
    else {
#define STR_CONVERT(x) #x
#define STR(x) STR_CONVERT(x)
#define INT64_MAX_LEN sizeof(STR(INT64_MIN))
        char intStr[INT64_MAX_LEN];
        sprintf(intStr, "%" PRId64, val);
        decContext cx;
        initContext(&cx);
        decQuadFromString(&d, intStr, &cx);
    }
    return createDecimal(&d);
}

TaggedPtrPanicCode _bal_decimal_from_float(double val) {
    TaggedPtrPanicCode result;
    if (isnan(val)) {
        result.panicCode = PANIC_INVALID_DECIMAL;
        return result;
    }
    if (isinf(val)) {
        result.panicCode = PANIC_ARITHMETIC_OVERFLOW;
        return result;
    }
    result.panicCode = 0;
    decQuad d;
    if (val == 0.0) {
        decQuadZero(&d);
        result.ptr = createDecimal(&d);
        return result;
    }
    char str[EMYG_DTOA_BUFFER_LEN];
    emyg_dtoa_non_special(val, str);
    decContext cx;
    initContext(&cx);
    decQuadFromString(&d, str, &cx);
    decQuad dTrim;
    decQuadReduce(&dTrim, &d, &cx);
    result.ptr = createDecimal(&dTrim);
    return result;
}

IntWithOverflow _bal_decimal_to_int(TaggedPtr tp) {
    decQuad dQuantize;
    decQuad dZero;
    decQuadZero(&dZero);
    decContext cx;
    initContext(&cx);
    decQuadQuantize(&dQuantize, taggedToDecQuad(tp), &dZero, &cx);
    IntWithOverflow res;
    if (cx.status & DEC_Invalid_operation) {
        // The invalid operation flag is raised,
        // when maximum precision(34 digits) is not enough to represent quantized decimal value.
        // This situation can be considered as an overflow scenario,
        // because reaching maximum precision of decimal is an overflow of 64 bit integer(19 digits).
        res.overflow = true;
        return res;
    }

    char str[DECQUAD_String];
    decQuadToString(&dQuantize, str);
    errno = 0;
    int64_t value = strtol(str, NULL, 0);
    if (errno == ERANGE) {
        res.overflow = true;
        return res;
    }
    res.overflow = false;
    res.value = value;
    return res;
}

bool _bal_decimal_subtype_contains(UniformSubtypePtr stp, TaggedPtr tp) {
    DecimalSubtypePtr dstp = (DecimalSubtypePtr)stp;
    bool included = dstp->included;
    return decimalListContains(dstp->decimals, dstp->decimals + dstp->nDecimals, taggedToDecQuad(tp)) == included;
}

// Do binary search for tp
// Approximately the same code as tidListContains
static bool decimalListContains(const DecimalConstPtr *start, const DecimalConstPtr *end, const decQuad *dq) {
    // Lower bound inclusive; upper bound is exclusive
    // Invariant: if there is a member in the list == to dq, then its address p 
    // satisfies start <= p < end
    decContext cx;
    initContext(&cx);
    while (start < end) {
        const DecimalConstPtr *mid = start + (end - start)/2;
        decQuad cmp;
        decQuadCompare(&cmp, dq, (const decQuad *) *mid, &cx);
        enum decClass cmpClass = decQuadClass(&cmp);
        // We have start <= mid < end
        // int64_t cmp = _bal_decimal_cmp(tp, *mid);
        if (cmpClass == DEC_CLASS_POS_ZERO) {
            return true;
        }
        if (cmpClass == DEC_CLASS_NEG_NORMAL) {
            // this decreases end, since mid < end
            // still have start <= end
            end = mid;
        }
        else {
            // this increases start, since mid >= start
            // still have start <= end
            start = mid + 1;
        }
    }
    // start == end, so there is no such member
    return false;
}
