#include "balrt.h"

static bool tidListContains(const Tid *start, const Tid *end, Tid tid);

bool _bal_precomputed_subtype_contains(SubtypeTestPtr stp, TaggedPtr p) {
    StructurePtr sp = taggedToPtr(p);
    PrecomputedSubtypeTestPtr pstp = (PrecomputedSubtypeTestPtr)stp;
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
