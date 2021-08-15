#include "include/stackmap.h"
#include "include/api.h"
#include "include/hash_table.h"

bool isBasePointer(value_location_t* first, value_location_t* second) {
    return first->kind == second->kind
           && first->offset == second->offset;
}

bool isIndirect(value_location_t* p) {
    return p->kind == Indirect;
}

// The assumption is that the value_location given to this function
// is known to be of the offset type, and now we need to parse the
// offset. Offsets are given relative to a register value,
// and since it might be either the frame pointer or stack pointer.
//
// This function will always return the offset relative to the stack ptr.
int32_t convert_offset(value_location_t* p, uint64_t frameSize) {
    assert(p->kind == Indirect && "not an indirect!");

    // see the x86-64 SysV ABI documentation for the table of
    // registers and their corresponding Dwarf reg numbers
    switch(p->regNum) {
        case 7: // offset is relative to stack pointer
            assert(p->offset >= 0 && "unexpected offset!");
            return p->offset;

        case 6: // offset is relative to base pointer.
                // NOTE haven't seen statepoints generate such offsets.
            assert(p->offset <= 0 && "unexpected offset!");
            return ((int32_t)frameSize) + p->offset;

        default:
            fprintf(stderr, "(statepoint-utils) error: \
                            \n\toffset is not relative to some part of the frame!\n");
            exit(1);
    }
}

frame_info_t* generate_frame_info(callsite_header_t* callsite, function_info_t* fn) {
    uint64_t retAddr = fn->address + callsite->codeOffset;
    uint64_t frameSize = fn->stackSize;

    // now we parse the location array according to the specific type
    // of locations that statepoints emit:
    // http://llvm.org/docs/Statepoints.html#stack-map-format

    uint16_t numLocations = callsite->numLocations;
    value_location_t* locations = (value_location_t*)(callsite + 1);

    // the first 2 locations are constants we dont care about, but if asserts are
    // on we check that they're constants.
    for(uint16_t i = 0; i < 2; i++) {
        // printf("location kind: %u, addr: %llu\n", locations->kind, (unsigned long long)locations);
        assert(locations->kind == Constant
            && "first 2 locations must be constants in statepoint stackmaps");
        locations++;
        numLocations--;
    }

    // the 3rd constant describes the number of "deopt" parameters
    // that we should skip over.
    assert(locations->kind == Constant && "3rd location should be a constant");
    int32_t numDeopt = locations->offset;
    locations++;
    numLocations--;

    assert(numDeopt >= 0 && "unexpected negative here");
    locations += numDeopt;
    numLocations -= numDeopt;

    /*
       The remaining locations describe pointer that the GC should track, and use a special
       format:

       "Each record consists of a pair of Locations. The second element in the record
       represents the pointer (or pointers) which need updated. The first element in the
       record provides a pointer to the base of the object with which the pointer(s) being
       relocated is associated. This information is required for handling generalized
       derived pointers since a pointer may be outside the bounds of the original
       allocation, but still needs to be relocated with the allocation."

       NOTE that we are currently ignoring the following part of the documentation because
       it doesn't make sense... locations have no size field:

       "The Locations within each record may [be] a multiple of pointer size. In the later
       case, the record must be interpreted as describing a sequence of pointers and their
       corresponding base pointers. If the Location is of size N x sizeof(pointer), then
       there will be N records of one pointer each contained within the Location. Both
       Locations in a pair can be assumed to be of the same size."
    */


    assert((numLocations % 2) == 0 && "all of the pointer locations come in pairs!");
    uint16_t numSlots = numLocations / 2;
    uint16_t numActualFrameSlots = numSlots;

    frame_info_t* frame = malloc(size_of_frame(numSlots));
    frame->retAddr = retAddr;
    frame->frameSize = frameSize;

    // now to initialize the slots, we need to make two passes in order to put
    // base pointers first, then derived pointers.
    value_location_t *start = locations;
    uint16_t numBasePtrs = 0;
    pointer_slot_t* currentSlot = frame->slots;
    for(uint16_t i = 0; i < numSlots; i++, locations += 2) {
        value_location_t* base = (value_location_t*)(locations);
        value_location_t* derived = (value_location_t*)(locations + 1);

        // all locations must be indirects in order for it to be in the frame.
        if (! (isIndirect(base) && isIndirect(derived)) ) {
#ifndef NDEBUG
            fprintf(stderr, "(statepoint-utils) warning: \n\t skipping a root location! \
                            base kind: %i, derived kind: %i\n", base->kind, derived->kind);
#endif
            numActualFrameSlots--;
            continue;
        }

        if( ! isBasePointer(base, derived)) {
            continue;
        }

        // it's a base pointer, aka base is equivalent to derived.
        // save the info.
        pointer_slot_t newSlot;
        newSlot.kind = -1;
        newSlot.offset = convert_offset(base, frameSize);
        *currentSlot = newSlot;

        // get ready for next iteration
        numBasePtrs++;
        currentSlot++;
    }

    // once we've filtered out locations that are not within the frame, we can set this.
    frame->numSlots = numActualFrameSlots;

    // now we do the derived pointers. we already know all locations are indirects now.
    locations = start;
    pointer_slot_t* processedBase = frame->slots;
    for(uint16_t i = 0; i < numSlots; i++, locations += 2) {
        value_location_t* base = (value_location_t*)(locations);
        value_location_t* derived = (value_location_t*)(locations + 1);

        if (! isIndirect(base) ) // skipped in the first pass.
            continue;

        if (isBasePointer(base, derived)) {
            // already processed, or derived is not an indirect.
            continue;
        }

        // find the index in our frame corresponding to the base pointer.
        uint16_t baseIdx;
        bool found = false;
        for(uint16_t k = 0; k < numBasePtrs; k++) {
            if(processedBase[k].offset == base->offset) {
                found = true;
                baseIdx = k;
                break;
            }
        }

        // something's gone awry, let's bail!
        if (!found) {
            fprintf(stderr, "(statepoint-utils) error: \
                             \n\tcouldn't find base for derived ptr!\n");
            exit(1);
        }

        // save the derived pointer's info
        pointer_slot_t newSlot;
        newSlot.kind = baseIdx;
        newSlot.offset = convert_offset(derived, frameSize);
        *currentSlot = newSlot;

        // new iteration
        currentSlot++;
    }

    // there is no liveout information emitted for statepoints, and we place faith in
    // the input on that being the case
    return frame;
}

callsite_header_t* next_callsite(callsite_header_t* callsite) {
    uint16_t numLocations = callsite->numLocations;

    // skip over locations
    value_location_t* locations = (value_location_t*)(callsite + 1);
    locations += numLocations;

    // realign pointer at the end of the locations to 8 byte alignment.
    uint64_t ptr_val = (uint64_t)locations;
    ptr_val = (ptr_val + 7) & ~0x7;

    liveout_header_t* liveout_header = (liveout_header_t*)ptr_val;
    uint16_t numLiveouts = liveout_header->numLiveouts;

    // skip over liveouts
    liveout_location_t* liveouts = (liveout_location_t*)(liveout_header + 1);
    liveouts += numLiveouts;

    // realign pointer again to 8 byte alignment for the next record.
    ptr_val = (uint64_t)liveouts;
    ptr_val = (ptr_val + 7) & ~0x7;

    return (callsite_header_t*)ptr_val;
}

void insert_info_to(statepoint_table_t* table, stackmap_header_t* map) {
    stackmap_header_t* header = (stackmap_header_t*)map;
    function_info_t* functions = (function_info_t*)(header + 1);

    // we skip over constants, which are uint64_t's
    callsite_header_t* callsite =
        (callsite_header_t*)(
            ((uint64_t*)(functions + header->numFunctions)) + header->numConstants
        );

    function_info_t* currentFn = functions;
    uint64_t visited = 0;
    uint64_t prev_ret_addr = 0;
    for(uint64_t _unused = 0; _unused < header->numRecords; _unused++) {
        if(visited >= currentFn->callsiteCount) {
            currentFn++;
            visited = 0;
            prev_ret_addr = 0;
        }

        frame_info_t* info = generate_frame_info(callsite, currentFn); // equvalnt to one call site
        insert_key(table, info->retAddr, info);

        // setup next iteration
        callsite = next_callsite(callsite);
        visited++;
    }
}

statepoint_table_t* generate_table(void* bal_stackmap, void* rt_stackmap, float load_factor) {

    uint8_t* version = (uint8_t*)bal_stackmap;
    if (*version != 3) {
        printf("error: only LLVM stackmap version 3 is supported.\n");
        assert(false && "see above");
        return NULL;
    }

    stackmap_header_t* bal_header = (stackmap_header_t*)bal_stackmap;
    stackmap_header_t* rt_header = (stackmap_header_t*)rt_stackmap;

    assert(bal_header->reserved1 == 0 && "expected to be 0");
    assert(bal_header->reserved2 == 0 && "expected to be 0");
    assert(rt_header->reserved1 == 0 && "expected to be 0");
    assert(rt_header->reserved2 == 0 && "expected to be 0");

    uint64_t numCallsites = bal_header->numRecords;

    statepoint_table_t* table = new_table(load_factor, bal_header->numRecords + rt_header->numRecords);

    insert_info_to(table, bal_stackmap);
    insert_info_to(table, rt_stackmap);

    return table;
}
