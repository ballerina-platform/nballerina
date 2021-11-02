#include "balrt.h"

TaggedPtr _bal_structure_exactify(TaggedPtr p, Tid *tidPtr) {
    StructurePtr mp = taggedToPtr(p);
    if (mp == taggedToPtrExact(p) && (mp->desc->tid == *tidPtr)) {
        // exact bit is not set, but should be
        return p + EXACT_FLAG;
    }
    return p;
}
