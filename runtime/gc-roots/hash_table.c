#include "include/api.h"
#include "include/hash_table.h"

// when debugging is enabled, don't inline
#ifdef NDEBUG
  #define INLINE inline
#else
  #define INLINE
#endif

/**
 * The hash function used to distribute keys uniformly across the table.
 * The implementation is one round of the xorshift64* algorithm.
 * Code Source: Wikipedia
 */
INLINE uint64_t hashFn(uint64_t x) {
    x ^= x >> 12; // a
    x ^= x << 25; // b
    x ^= x >> 27; // c
    return x * UINT64_C(2685821657736338717);
}

INLINE uint64_t computeBucketIndex(statepoint_table_t* table, uint64_t key) {
    // Using modulo may introduce a little bias in the table.
    // If you care, use the unbiased version that's floating around the internet.

    // NOTE: we use bitwise AND instead of modulo because the size
    // is a power-of-two. This is very important for performance.
    return hashFn(key) & (table->size - 1);
}

INLINE size_t size_of_frame(uint16_t numSlots) {
    return sizeof(frame_info_t) + numSlots * sizeof(pointer_slot_t);
}

INLINE size_t frame_size(frame_info_t* frame) {
    return size_of_frame(frame->numSlots);
}

// returns the next frame relative the current frame
INLINE frame_info_t* next_frame(frame_info_t* cur) {
    uint8_t* next = ((uint8_t*)cur) + frame_size(cur);
    return (frame_info_t*)next;
}


statepoint_table_t* new_table(float loadFactor, uint64_t expectedElms) {
    assert(loadFactor > 0 && "must be positive");
    assert(expectedElms > 0 && "must be positive");

    uint64_t numBuckets = (expectedElms / loadFactor) + 1;

    // round up to nearest power of two. this implementation requires
    // it for the performance of lookup_return_address
    uint64_t factor = ceil(log2((double) numBuckets));
    numBuckets = 1ULL << factor;

    table_bucket_t* buckets = calloc(numBuckets, sizeof(table_bucket_t));
    assert(buckets && "bad alloc");

    statepoint_table_t* table = malloc(sizeof(statepoint_table_t));
    assert(table && "bad alloc");

    table->size = numBuckets;
    table->buckets = buckets;

    return table;
}


void destroy_table(statepoint_table_t* table) {
    for(uint64_t i = 0; i < table->size; i++) {
        frame_info_t* entry = table->buckets[i].entries;
        if(entry != NULL) {
            free(entry);
        }
    }
    free(table->buckets);
    free(table);
}


// NOTE value must be a base pointer to a malloc operation, and the act of inserting
// the key is considered the final use of the pointer (i.e., value will be freed by the
// function).
void insert_key(statepoint_table_t* table, uint64_t key, frame_info_t* value) { // key = retAddr
    uint64_t idx = computeBucketIndex(table, key);
    table_bucket_t *bucket = table->buckets + idx;

    if(bucket->numEntries == 0) {
        bucket->numEntries = 1;
        bucket->sizeOfEntries = frame_size(value);
        bucket->entries = value;
    } else {
        // a collision occured!
        size_t newSize = bucket->sizeOfEntries + frame_size(value);
        frame_info_t* newEntries = realloc(bucket->entries, newSize);

        assert(newEntries && "bad alloc");

        // copy value onto the end of the possibly resized entry array
        frame_info_t* oldEnd = (frame_info_t*)(
            ((uint8_t*)newEntries) + bucket->sizeOfEntries
        );

        memmove(oldEnd, value, frame_size(value));

        free(value);

        bucket->entries = newEntries;
        bucket->sizeOfEntries = newSize;
        bucket->numEntries += 1;
    }
}


frame_info_t* lookup_return_address(statepoint_table_t *table, uint64_t retAddr) {
    uint64_t idx = computeBucketIndex(table, retAddr);
    table_bucket_t bucket = table->buckets[idx];

    uint16_t bucketLimit = bucket.numEntries;
    frame_info_t* entries = bucket.entries;

    for(uint16_t i = 0; i < bucketLimit; i++) {
        if(entries->retAddr == retAddr) {
            return entries;
        }
        entries = next_frame(entries);
    }

    return NULL;
}

void print_table(FILE *stream, statepoint_table_t* table, bool skip_empty) {
    for(uint64_t i = 0; i < table->size; i++) {
        uint16_t numEntries = table->buckets[i].numEntries;
        size_t sizeOfEntries = table->buckets[i].sizeOfEntries;
        frame_info_t* entry = table->buckets[i].entries;

        if(skip_empty && numEntries == 0) {
            continue;
        }

        fprintf(stream, "\n--- bucket #%" PRIu64 "---\n", i);
        fprintf(stream, "num entries: %" PRIu16 ", ", numEntries);
        fprintf(stream, "memory allocated (bytes): %" PRIuPTR "\n", sizeOfEntries);

        for(uint16_t i = 0; i < numEntries; i++, entry = next_frame(entry)) {
            fprintf(stream, "\t** frame #%" PRIu16 "**\n", i);
            print_frame(stream, entry);
        }
    }
    fflush(stream);
}

void print_frame(FILE *stream, frame_info_t* frame) {
    fprintf(stream, "\t\treturn address: 0x%" PRIX64 "\n", frame->retAddr);
    fprintf(stream, "\t\tframe size: %" PRIu64 "\n", frame->frameSize);

    uint16_t numSlots = frame->numSlots;
    pointer_slot_t* curSlot = frame->slots;
    fprintf(stream, "\t\tnum live ptrs: %" PRIu16 "\n", numSlots);

    for(uint16_t i = 0; i < numSlots; i++, curSlot++) {
        fprintf(stream, "\t\tptr slot #%" PRIu16 " { ", i);

        int32_t kind = curSlot->kind;
        if(kind < 0) {
            fprintf(stream, "kind: base ptr, ");
        } else {
            fprintf(stream, "kind: ptr derived from slot #%" PRId32 ", ", kind);
        }

        fprintf(stream, "frame offset: %" PRId32 " }\n", curSlot->offset);
    }
}
