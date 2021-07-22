#include <stdint.h>
#include <stdbool.h>
#include <inttypes.h>

#include "tag.h"
#define TAG_MASK 0xFF
#define UT_MASK 0x1F
#define TAG_SHIFT 56

#ifdef __clang__
#define NODEREF __attribute__((noderef))
#define NORETURN __attribute__((noreturn))
#define GC __attribute__((address_space(1)))
#define COLD __attribute__((cold))
// LLVM readonly attribute corresponds to clang pure
#define READONLY __attribute__((pure))
// LLVM readnone attribute corresponds to clang const
#define READNONE __attribute__((const))
#else
#define NODEREF /* as nothing */
#define NORETURN /* as nothing */
#define GC /* as nothing */
#define COLD /* as nothing */
#define READONLY /* as nothing */
#define READNONE /* as nothing */
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
    // XXX will also have a typedescriptor here
    // This isn't strictly portable because void* and TaggedPtr* might have different alignments/sizes
    // But we ain't writing portable code here
    union {
        GenericArray gArray;
        TaggedPtrArray tpArray;
    };
} *ListPtr;

typedef struct {
    TaggedPtr key;
    TaggedPtr value;
} MapField;

typedef struct {
    int64_t length;
    int64_t capacity;
    GC MapField *members;
} MapFieldArray;

typedef GC struct Mapping {
    // XXX will also have a typedescriptor here
    union {
        GenericArray gArray;
        MapFieldArray fArray;
    };
    // The table is a hash table. Each element is either -1 representing an empty entry or is an index into fArray.
    // It uses the hash of the key of the indexed mapField. 
    // It consists of (1 << tableLengthShift) elements each of size (1 << tableElementShift) bytes.
    // tableElementShift is between 0 and 3 inclusive, representing uint8_t, uint16_t, uint32_t and int64_t respectively.
    // tableElementShift is the minimum to allow an element to represent all values between 0 and (1 << tableLengthShift)/2.
    // The length of fArray will always be <= (1 << tableLengthShift)/2 - 1.
    // For example, if tableLengthShift is 0, meaning table contains bytes, then the array can have a length of up to 255,
    // meaning indices into the array are between 0 and 254 inclusive, and the table can be up to 512 bytes long.
    // The hash table uses open addressing and linear probing (with probing backwards to 0).
    // Note that the load factor is fixed (1 element less than 50%), so that changes in table element size are in sync
    // with changes in table length (50% is a good load factor for linear probing anyway).
    UntypedPtr table;
    uint8_t tableElementShift;
    uint8_t tableLengthShift;
} *MappingPtr;

#define STRING_SMALL_FLAG 0
#define STRING_MEDIUM_FLAG 1
#define STRING_LARGE_FLAG 2


// Both of these are 8-byte aligned and zero-padded so the total size is a multiple of 8
typedef GC struct SmallString {
    uint8_t length;
    char bytes[];
} *SmallStringPtr;

typedef GC struct MediumString {
    uint16_t lengthInBytes;
    uint16_t lengthInCodePoints;
    char bytes[];
} *MediumStringPtr;

typedef GC struct LargeString {
    int64_t lengthInBytes;
    int64_t lengthInCodePoints;
    char bytes[];
} *LargeStringPtr;

static inline int smallStringSize(int lengthInBytes) {
    return ((lengthInBytes + 7 + 1) >> 3) << 3;
}

static inline int mediumStringSize(int lengthInBytes) {
    return ((lengthInBytes + 7 + 4) >> 3) << 3;
}

static inline uint64_t largeStringSize(int64_t lengthInBytes) {
    return (((uint64_t)lengthInBytes + 7 + 16) >> 3) << 3;
}

typedef struct {
    int64_t lengthInBytes;
    int64_t lengthInCodePoints;
    GC char *bytes;
} StringData;

// These should be shared with build.bal
#define PANIC_INDEX_OUT_OF_BOUNDS 5
#define PANIC_LIST_TOO_LONG 6
// XXX Make this a separate panic
#define PANIC_STRING_TOO_LONG 6

#define ALIGN_HEAP 8

extern UntypedPtr _bal_alloc(uint64_t nBytes);
extern NORETURN void _bal_panic(Error err);

extern void _Bio__println(TaggedPtr p);

static READNONE inline uint64_t taggedPtrBits(TaggedPtr p) {
    return (uint64_t)(char *)p;
}

static READNONE inline int getTag(TaggedPtr p) {
    return (int)((taggedPtrBits(p) >> TAG_SHIFT) & TAG_MASK);
}

static READNONE inline int taggedToBoolean(TaggedPtr p) {
    return (int)(taggedPtrBits(p) & 1);
}

static READNONE inline UntypedPtr taggedToPtr(TaggedPtr p) {
    return (UntypedPtr)(char *)(~((((uint64_t)TAG_MASK) << TAG_SHIFT) | 0x7) & taggedPtrBits(p));
}

static READNONE inline TaggedPtr ptrAddFlags(UntypedPtr p, uint64_t flags)  {
    char *p0 = (void *)p;
    p0 = (char *)((uint64_t)p0 | flags);
    return (TaggedPtr)p0;
}

extern TaggedPtr _bal_int_to_tagged(int64_t n);
extern READONLY int64_t _bal_tagged_to_int(TaggedPtr p);

extern READONLY StringData _bal_tagged_to_string(TaggedPtr p);
extern READONLY bool _bal_string_eq(TaggedPtr tp1, TaggedPtr tp2);
extern READONLY bool _bal_eq(TaggedPtr tp1, TaggedPtr tp2);
extern READONLY int64_t _bal_string_cmp(TaggedPtr tp1, TaggedPtr tp2);
extern READONLY uint64_t _bal_string_hash(TaggedPtr tp);
extern GC char *_bal_string_alloc(uint64_t lengthInBytes, uint64_t lengthInCodePoints, TaggedPtr *resultPtr);

#define TAGGED_PTR_SHIFT 3

extern void _bal_array_grow(GC GenericArray *ap, int64_t min_capacity, int shift);
extern Error _bal_list_set(TaggedPtr p, int64_t index, TaggedPtr val);

#define MAP_FIELD_SHIFT (TAGGED_PTR_SHIFT*2)

extern TaggedPtr _bal_mapping_construct(int64_t capacity);
extern void _bal_mapping_init_member(TaggedPtr mapping, TaggedPtr key, TaggedPtr val);
extern void _bal_mapping_set(TaggedPtr mapping, TaggedPtr key, TaggedPtr val);
extern READONLY TaggedPtr _bal_mapping_get(TaggedPtr mapping, TaggedPtr key);










