#ifndef __LLVM_STATEPOINT_UTILS_HASH_TABLE__
#define __LLVM_STATEPOINT_UTILS_HASH_TABLE__

#define __STDC_FORMAT_MACROS 1
#include <inttypes.h>

#include <stdint.h>
#include <stddef.h>
#include <assert.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

/** Functions **/

statepoint_table_t* new_table(float loadFactor, uint64_t expectedElms);

/* lookup_return_address & insert_key is declared in api.h */

size_t size_of_frame(uint16_t numSlots);

size_t frame_size(frame_info_t* frame);

// returns the next frame relative the current frame
frame_info_t* next_frame(frame_info_t* cur);

#endif /* __LLVM_STATEPOINT_UTILS_HASH_TABLE__ */
