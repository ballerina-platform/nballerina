#include <stdint.h>
#include <stdbool.h>

#include "tag.h"
#define TAG_MASK 0xFF
#define UT_MASK 0x1F
#define TAG_SHIFT 56

#ifdef __clang__
#define NODEREF __attribute__((noderef))
#define NORETURN __attribute__((noreturn))
#define GC __attribute__((address_space(1)))
#define COLD __attribute__((cold)) 
#else
#define NODEREF /* as nothing */
#define NORETURN /* as nothing */
#define GC /* as nothing */
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

typedef GC char NODEREF *TaggedPtr;
typedef GC void *UntypedPtr;
typedef GC int64_t *IntPtr;

// An error is currently represented as int with the error code in the lo byte
typedef uint64_t Error;

typedef struct {
    int64_t length;
    int64_t capacity;
    GC void *members;
} GenericArray;

typedef struct {
    int64_t length;
    int64_t capacity;
    GC TaggedPtr *members;
} TaggedPtrArray;

typedef GC struct List {
    // XXX will have a typedescriptor here
    // This isn't strictly portable because void* and TaggedPtr* might have different alignments/sizes
    // But we ain't writing portable code here
    union {
        GenericArray gArray;
        TaggedPtrArray tpArray;
    };
} *ListPtr;
 
#define STRING_MEDIUM_FLAG 1

// Both of these are 8-byte aligned and zero-padded so the total size is a multiple of 8
typedef GC struct SmallString {
    uint8_t length;
    char bytes[];
} *SmallStringPtr;

typedef GC struct MediumString {
    int16_t lengthInBytes;
    int16_t lengthInCodePoints;
    char bytes[];
} *MediumStringPtr;

static inline int smallStringSize(int lengthInBytes) {
    return ((lengthInBytes + 7 + 1) >> 3) << 3;
}

static inline int mediumStringSize(int lengthInBytes) {
    return ((lengthInBytes + 7 + 4) >> 3) << 3;
}

typedef struct {
    int64_t lengthInBytes;
    int64_t lengthInCodePoints;
    GC char *bytes;
} StringData;

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
    return (UntypedPtr)(char *)(~((((uint64_t)TAG_MASK) << TAG_SHIFT) | 0x7) & taggedPtrBits(p));
}

static inline TaggedPtr ptrAddFlags(UntypedPtr p, uint64_t flags)  {
    char *p0 = (void *)p;
    p0 = (char *)((uint64_t)p0 | flags);
    return (TaggedPtr)p0;
}

#define TAGGED_PTR_SHIFT 3

extern void _bal_array_grow(GC GenericArray *ap, int64_t min_capacity, int shift);
extern TaggedPtr _bal_int_to_tagged(int64_t n);
extern int64_t _bal_tagged_to_int(TaggedPtr p);

extern StringData _bal_tagged_to_string(TaggedPtr p);
extern bool _bal_string_eq(TaggedPtr tp1, TaggedPtr tp2);
extern bool _bal_eq(TaggedPtr tp1, TaggedPtr tp2);
extern int64_t _bal_string_cmp(TaggedPtr tp1, TaggedPtr tp2);
extern uint64_t _bal_string_hash(TaggedPtr tp);








