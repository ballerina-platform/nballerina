#include <stdint.h>

#include "tag.h"
#define TAG_MASK 0xFF
#define UT_MASK 0x1F
#define TAG_SHIFT 56

#ifdef __clang__
#define NODEREF __attribute__((noderef))
#define NORETURN __attribute__((noreturn))
#define ONHEAP __attribute__((address_space(1)))
#define COLD __attribute__((cold)) 
#else
#define NODEREF /* as nothing */
#define NORETURN /* as nothing */
#define ONHEAP /* as nothing */
#define COLD /* as nothing */
#endif

#define likely(x) __builtin_expect((x), 1)
#define unlikely(x) __builtin_expect((x), 0)

#ifndef STACK_SIZE
#ifdef STACK_DEBUG
#define STACK_SIZE 1024
#else
#define STACK_SIZE (1024*1024)
#endif
#endif

extern char *_bal_stack_guard;

#define HEAP_STAR(d) ONHEAP *(d)
typedef char NODEREF HEAP_STAR(TaggedPtr);
typedef void HEAP_STAR(UntypedPtr);

// An error is currently represented as int with the error code in the lo byte
typedef uint64_t Error;

struct List {
    int64_t length;
    // capacity is always >= length
    int64_t capacity;
    TaggedPtr HEAP_STAR(members);
};
 
typedef struct List HEAP_STAR(ListPtr);

// These should be shared with build.bal
#define PANIC_INDEX_OUT_OF_BOUNDS 5
#define PANIC_LIST_TOO_LONG 6

#define ALIGN_HEAP 8

extern UntypedPtr _bal_alloc(int64_t nBytes);
extern NORETURN void _bal_panic(Error err);

extern void _Bio__println(TaggedPtr p);

static inline uint64_t taggedPtrBits(TaggedPtr p) {
    return (uint64_t)(char *)p;
}

static inline int getTag(TaggedPtr p) {
    return (int)((taggedPtrBits(p) >> TAG_SHIFT) & TAG_MASK);
}

static inline int taggedToBoolean(TaggedPtr p) {
    return (int)(taggedPtrBits(p) & 1);
}

static inline UntypedPtr taggedToPtr(TaggedPtr p) {
    return (UntypedPtr)(char *)(~(((uint64_t)TAG_MASK) << TAG_SHIFT) & taggedPtrBits(p));
}

extern void _bal_array_grow(ListPtr lp, int64_t min_capacity);
extern TaggedPtr _bal_int_to_tagged(int64_t n);
extern int64_t _bal_tagged_to_int(TaggedPtr p);


