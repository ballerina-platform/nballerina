#ifndef __LLVM_STATEPOINT_UTILS_API__
#define __LLVM_STATEPOINT_UTILS_API__

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>

/**** Types ****/

typedef struct {
    // kind < 0 means this is a base pointer
    // kind >= 0 means this is a pointer derived from base pointer in slot number "kind"
    int32_t kind;

    // offsets are relative to the base of a frame.
    // See Figure 1 below for our defintion of "base"
    int32_t offset;
} pointer_slot_t;

/*

                 FIGURE 1
    Stack grows towards low addresses.

high addresses

 ... ETC ...
-------------- <- base2
frame 2's ret addr
-------------- <- start of frame 2 (computed with: base1 + base1's frameSize)

frame 1's contents

-------------- <- base1, aka base for offsets into frame 1 (8 bytes above start of frame 1)
frame 1's ret addr
-------------- <- start of frame 1 (what you get immediately after a callq)

low addresses

*/

typedef struct {
    // NOTE flags & calling convention didn't seem useful to include in the map.
    uint64_t retAddr;
    uint64_t frameSize;     // in bytes

    // all base pointers come before derived pointers in the slot array. you can use this
    // fact to quickly update the derived pointers by referring back to the base pointers
    // while scanning the slots.
    uint16_t numSlots;
    pointer_slot_t slots[];
} frame_info_t;


typedef struct {
    uint16_t numEntries;
    size_t sizeOfEntries; // total memory footprint of the entries
    frame_info_t* entries;
} table_bucket_t;

typedef struct {
    uint64_t size;
    table_bucket_t* buckets;
} statepoint_table_t;



/**** Public Functions ****/

#ifdef __cplusplus
  extern "C" {
#endif

/**
 * An amortized O(1) return address lookup function for garbage collectors.
 *
 * table - table generated by generate_table
 * retAddr - the key (a return address) corresponding to the frame you need info about.
 *
 * Returns NULL if the address was not found in the table.
 */
frame_info_t* lookup_return_address(statepoint_table_t *table, uint64_t retAddr);

/**
 * Given an LLVM generated Stack Map, will returns a hash table mapping return addresses
 * to a frame_info_t struct that provides information about live pointer locations within
 * that stack frame.
 *
 * - The map is the LLVM Stack Map generated via gc.statepoint.
 * - The load factor allows you to tune the amount of hash collisions in the table. Lower
 * values help prevent collisions, helping lookup times, at the cost of increasing
 * the size of the table.
 *
 */
statepoint_table_t* generate_table(void* bal_stackmap, void* rt_stackmap, float load_factor);


/**
 * Frees _all_ allocated memory reachable from the table. Thus, any
 * pointers returned from a previous lookup are invalid after this call.
 */
void destroy_table(statepoint_table_t* table);


/* Insert a custom key value pair.
   NOTE the value _must_ be a malloc'd pointer, because insert_key
   will attempt to free it after it's been inserted.
 */
void insert_key (statepoint_table_t* table, uint64_t key, frame_info_t* value);



/**** Debugging Functions ****/

// skip_empty will skip printing out empty buckets
void print_table(FILE *stream, statepoint_table_t* table, bool skip_empty);

// the function print_table uses to print an individual frame, useful for debugging.
void print_frame(FILE *stream, frame_info_t* frame);

#ifdef __cplusplus
  } /* end of extern C */
#endif

#endif /* __LLVM_STATEPOINT_UTILS_API__ */
