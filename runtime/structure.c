#include "balrt.h"

const double F0 = +0.0;

static bool tidListContains(const Tid *start, const Tid *end, Tid tid);

static inline TaggedPtr listConstruct(ListDescPtr desc, int64_t capacity) {
    return ptrAddFlags(_bal_list_construct_8(desc, capacity),
                       ((uint64_t)TAG_LIST_RW << TAG_SHIFT)|EXACT_FLAG);
}

Fillability _bal_structure_create_filler(MemberType memberType, StructureDescPtr fillerDesc, TaggedPtr *valuePtr) {
    uint32_t bitSet;
    if ((memberType & 1) == 0) {
        ComplexTypePtr ctp = (ComplexTypePtr)memberType;
        bitSet = ctp->all | ctp->some;
        if (fillerDesc != 0) {
            switch (bitSet) {
                case (1 << TAG_LIST_RW):
                    *valuePtr = listConstruct((ListDescPtr)fillerDesc, 0);
                    return FILL_EACH;
                case (1 << TAG_MAPPING_RW):
                    *valuePtr = _bal_mapping_construct((MappingDescPtr)fillerDesc, 0);
                    return FILL_EACH;
            }
        }         
    }
    else {
        bitSet = (uint32_t)(memberType >> 1);
        switch (bitSet) {
            case (1 << TAG_BOOLEAN):
                *valuePtr = bitsToTaggedPtr(((uint64_t)TAG_BOOLEAN) << TAG_SHIFT);
                return FILL_COPY;
            case (1 << TAG_INT):
                *valuePtr = bitsToTaggedPtr(IMMEDIATE_FLAG | ((uint64_t)TAG_INT) << TAG_SHIFT);
                return FILL_COPY;
            case (1 << TAG_FLOAT):
                {
                    GC double *fp = (GC double *)&F0;
                    *valuePtr = ptrAddFlags(fp, ((uint64_t)TAG_FLOAT) << TAG_SHIFT);
                    return FILL_COPY;
                }
            case (1 << TAG_STRING):
                _bal_string_alloc(0, 0, valuePtr);
                return FILL_COPY;
        }
    }
    if (bitSet & (1 << TAG_NIL)) {
        *valuePtr = 0;
        return FILL_COPY;
    }
    return FILL_NONE;
}

bool _bal_precomputed_subtype_contains(UniformSubtypePtr stp, TaggedPtr p) {
    StructurePtr sp = taggedToPtr(p);
    PrecomputedSubtypePtr pstp = (PrecomputedSubtypePtr)stp;
    return tidListContains(pstp->tids, pstp->tids + pstp->nTids, sp->desc->tid);
}

// Do binary search for tid
static bool tidListContains(const Tid *start, const Tid *end, Tid tid) {
    // Lower bound inclusive; upper bound is exclusive
    // Invariant: if there is a member in the list == to tid, then its address p 
    // satisfies start <= p < end
    while (start < end) {    
        const Tid *mid = start + (end - start)/2;
        // We have start <= mid < end
        if (tid == *mid) {
            return true;
        }
        if (tid < *mid) {
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
