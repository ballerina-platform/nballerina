#include "balrt.h"
#include <math.h>

static bool floatListContains(const double *start, const double *end, double d);
static bool floatSubtypeContainsFloat(UniformSubtypePtr stp, double d);

bool _bal_float_subtype_contains(UniformSubtypePtr stp, TaggedPtr tp) {
    return floatSubtypeContainsFloat(stp, taggedToFloat(tp));   
}

bool _bal_type_contains_float(ComplexTypePtr ctp, double d) {
    UniformSubtypeData usd = complexTypeUniformSubtypeData(ctp, TAG_FLOAT);
    if (usd.ptr == 0) {
        return usd.contains;
    }
    return floatSubtypeContainsFloat(usd.ptr, d);
}

static bool floatSubtypeContainsFloat(UniformSubtypePtr stp, double d) {
    FloatSubtypePtr fstp = (FloatSubtypePtr)stp;
    const double *start = fstp->floats;
    const double *end = start + fstp->nFloats;
    bool included = fstp->included;
    if (isnan(*start)) {
        if (isnan(d)) {
            return included;
        }
        ++start;
    }
    else if (isnan(d)) {
        return !included;
    }
    return floatListContains(start, end, d) == included;
}

// Do binary search for d
// Neither d nor any of the values between start and end are NaN
static bool floatListContains(const double *start, const double *end, double d) {
    // Lower bound inclusive; upper bound is exclusive
    // Invariant: if there is a member in the list == to d, then its address p 
    // satisfies start <= p < end
    while (start < end) {    
        const double *mid = start + (end - start)/2;
        // We have start <= mid < end
        if (d == *mid) {
            return true;
        }
        if (d < *mid) {
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

typedef struct FloatFillerDesc {
    TaggedPtr (*create)(struct FloatFillerDesc *fillerDesc, bool *hasIdentityPtr);
    double val;
} *FloatFillerDescPtr;

TaggedPtr floatFillerCreate(FloatFillerDescPtr fillerDesc, bool* hasIdentityPtr) {
    *hasIdentityPtr = false;
    return floatToTagged(fillerDesc->val);
}

const struct FloatFillerDesc float_filler_desc = { &floatFillerCreate, 0.0 };
