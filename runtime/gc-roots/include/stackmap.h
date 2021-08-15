#ifndef __LLVM_STATEPOINT_UTILS_STACKMAP__
#define __LLVM_STATEPOINT_UTILS_STACKMAP__

#include <stdint.h>
#include <stddef.h>

/**
 * LLVM's Documentation: http://llvm.org/docs/StackMaps.html#stack-map-format
 *
 *  "The runtime must be able to interpret the stack map record given only the ID,
 *  offset, and the order of the locations, which LLVM preserves."
 *
 *  We interpret "order of the locations" to mean that not only are callsite records
 *  cooresponding to a function grouped together and ordered from least to greatest
 *  offset, but these callsite groups are also in the same order as the array of
 *  function stack size records.
 *
 *  This appears to be the case in LLVM, and indeed, these assumptions are nessecary to
 *  figure out what groups correspond to which functions (without abusing the ID field
 *  with a post processing script) to compute the return addresses.
 */

 /******** LAYOUT ********

 stackmap_header_t;

 function_info_t[numFunctions];

 uint64_t[numConstants];

 numRecords of the following {
    callsite_header_t;

    value_location_t[numLocations];

    << upto 4 bytes of padding, as needed, to achieve 8 byte alignment >>

    liveout_header_t;

    liveout_location_t[numLiveouts];

    << upto 4 bytes of padding, as needed, to achieve 8 byte alignment >>
}

 ******** END OF LAYOUT ********/

typedef struct __attribute__((packed)) {
    uint8_t version;
    uint8_t reserved1;
    uint16_t reserved2;
    uint32_t numFunctions;
    uint32_t numConstants;
    uint32_t numRecords;
} stackmap_header_t;

typedef struct __attribute__((packed)) {
    uint64_t address;
    uint64_t stackSize;
    uint64_t callsiteCount;   // see https://reviews.llvm.org/D23487
} function_info_t;

typedef struct __attribute__((packed)) {
    uint64_t id;
    uint32_t codeOffset;  // from the entry of the function
    uint16_t flags;
    uint16_t numLocations;
} callsite_header_t;

typedef enum {
    Register = 0x1,
    Direct = 0x2,
    Indirect = 0x3,
    Constant = 0x4,
    ConstIndex = 0x5
} location_kind_t;

typedef struct __attribute__((packed)) {
    uint8_t kind;       // possibilities come from location_kind_t, but is one byte in size.
    uint8_t flags;      // expected to be 0
    uint16_t locSize;
    uint16_t regNum;    // Dwarf register num
    uint16_t reserved;  // expected to be 0
    int32_t offset;     // either an offset or a "Small Constant"
} value_location_t;

typedef struct __attribute__((packed)) {
    uint16_t padding;
    uint16_t numLiveouts;
} liveout_header_t;

typedef struct __attribute__((packed)) {
    uint16_t regNum;    // Dwarf register num
    uint8_t flags;
    uint8_t size;       // in bytes
} liveout_location_t;

#endif /* __LLVM_STATEPOINT_UTILS_STACKMAP__ */
