#include <stdint.h>
#include <stdbool.h>
#include <inttypes.h>

#include "tag.h"
#include "panic.h"
#define TAG_MASK 0xFF
#define UT_MASK 0x1F
#define TAG_SHIFT 56

#define POINTER_MASK ((1L << TAG_SHIFT) - 1)

#define FLAG_INT_ON_HEAP 0x20
#define IMMEDIATE_FLAG (((uint64_t)0x20) << TAG_SHIFT)

#define STRING_LARGE_FLAG 1

#ifdef __clang__
#define NODEREF __attribute__((noderef))
#define NORETURN __attribute__((noreturn))
#define GC __attribute__((address_space(1)))
#define COLD __attribute__((cold))
// LLVM readonly attribute corresponds to clang pure
#define READONLY __attribute__((pure))
// LLVM readnone attribute corresponds to clang const
#define READNONE __attribute__((const))
#define ALIGNED(n) __attribute__((aligned(n)))
#else
#define NODEREF /* as nothing */
#define NORETURN /* as nothing */
#define GC /* as nothing */
#define COLD /* as nothing */
#define READONLY /* as nothing */
#define READNONE /* as nothing */
#define ALIGNED(n) /* as nothing */
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
typedef GC double *FloatPtr;

typedef int PanicCode;
// An internally-generated panic is currently represented as int with the error code in the lo byte
// and line number right-shifted 8.
typedef uint64_t PackedPanic;

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

typedef int64_t ListDesc;

typedef GC struct List {
    ListDesc desc;
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

typedef int64_t MappingDesc;

typedef GC struct Mapping {
    MappingDesc desc;
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

typedef GC struct Error {
    TaggedPtr message;
    int64_t lineNumber;
} *ErrorPtr;

// Both of these are 8-byte aligned and zero-padded so the total size is a multiple of 8

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

// Roundup to multiple of 8
static inline int roundUpInt(int n) {
    return (n + 7) & ~7;
}

static inline int mediumStringSize(int lengthInBytes) {
    return roundUpInt(lengthInBytes + sizeof(struct MediumString));
}

static inline uint64_t roundUpUint64(uint64_t n) {
    return (n + 7) & ~(uint64_t)7;
}

static inline uint64_t largeStringSize(int64_t lengthInBytes) {
    return roundUpUint64(lengthInBytes + sizeof(struct LargeString));
}

typedef struct {
    int64_t nBytes;
    int64_t nCodePoints;
} StringLength;

typedef struct {
    int64_t lengthInBytes;
    int64_t lengthInCodePoints;
    GC char *bytes;
} StringData;

#define ALIGN_HEAP 8

// Don't declare functions here if they are balrt_inline.c

extern UntypedPtr _bal_alloc(uint64_t nBytes);
extern NORETURN void _bal_panic(TaggedPtr tp);

extern void _Bio__println(TaggedPtr p);
extern TaggedPtr _Berror__message(TaggedPtr p);

extern bool _bal_float_eq(double, double);

// precondition is that both strings are on the heap and the pointers are not ==
extern READONLY bool _bal_string_heap_eq(TaggedPtr tp1, TaggedPtr tp2);

extern READONLY int64_t _bal_string_cmp(TaggedPtr tp1, TaggedPtr tp2);
extern READONLY TaggedPtr _bal_string_concat(TaggedPtr tp1, TaggedPtr tp2);
extern READONLY uint64_t _bal_string_hash(TaggedPtr tp);
extern char *_bal_string_alloc(uint64_t lengthInBytes, uint64_t lengthInCodePoints, TaggedPtr *resultPtr);

#define TAGGED_PTR_SHIFT 3

extern void _bal_array_grow(GC GenericArray *ap, int64_t min_capacity, int shift);
extern PanicCode _bal_list_set(TaggedPtr p, int64_t index, TaggedPtr val);
extern READONLY bool _bal_list_eq(TaggedPtr p1, TaggedPtr p2);

#define MAP_FIELD_SHIFT (TAGGED_PTR_SHIFT*2)

extern TaggedPtr _bal_mapping_construct(MappingDesc desc, int64_t capacity);
extern void _bal_mapping_init_member(TaggedPtr mapping, TaggedPtr key, TaggedPtr val);
extern PanicCode _bal_mapping_set(TaggedPtr mapping, TaggedPtr key, TaggedPtr val);
extern READONLY TaggedPtr _bal_mapping_get(TaggedPtr mapping, TaggedPtr key);
extern READONLY bool _bal_mapping_eq(TaggedPtr p1, TaggedPtr p2);

extern READNONE UntypedPtr _bal_tagged_to_ptr(TaggedPtr p);
extern TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber);
// Returns an error value
extern TaggedPtr COLD _bal_panic_construct(PackedPanic err);

static READNONE inline uint64_t taggedPtrBits(TaggedPtr p) {
    return (uint64_t)(char *)p;
}

static inline TaggedPtr bitsToTaggedPtr(uint64_t bits) {
    char *p = (char *)0 + bits;
    return (TaggedPtr)p;
}

static READNONE inline int getTag(TaggedPtr p) {
    return (int)((taggedPtrBits(p) >> TAG_SHIFT) & TAG_MASK);
}

static READNONE inline int taggedToBoolean(TaggedPtr p) {
    return (int)(taggedPtrBits(p) & 1);
}

static READNONE inline UntypedPtr taggedToPtr(TaggedPtr p) {
    return _bal_tagged_to_ptr(p);
}

static READONLY inline int64_t taggedToInt(TaggedPtr p) {
    int t = getTag(p);
    if (likely(t & FLAG_INT_ON_HEAP) == 0) {
        uint64_t n = taggedPtrBits(p);
        n &= POINTER_MASK;
        // sign extend
        n <<= 8;
        return ((int64_t)n) >> 8;
    }
    else {
        GC int64_t *np = taggedToPtr(p);
        return *np;
    }
}

static READONLY inline double taggedToFloat(TaggedPtr p) {
    GC double *np = taggedToPtr(p);
    return *np;
}

static READNONE inline StringLength immediateStringLength(uint64_t bits) {
    StringLength len;
    unsigned loByte = bits & 0xFF;
    if (loByte == 0xFF) {
        len.nBytes = 0;
        len.nCodePoints = 0;
    }
    else if (loByte & 0x80) {
        len.nBytes = __builtin_clz((uint8_t)~loByte) - (sizeof(unsigned) - 1)*8;
        len.nCodePoints = 1;
    }
    else {
        bits = ~bits;
        bits &= ((uint64_t)1 << 56) - 1;
        len.nBytes = len.nCodePoints =  8 - (__builtin_clzl(bits) >> 3);
    }
    return len;
}

static READONLY inline StringLength taggedStringLength(TaggedPtr p) {
    uint64_t bits = taggedPtrBits(p);
    if (bits & IMMEDIATE_FLAG) {
        return immediateStringLength(bits);
    }
    if (likely((bits & STRING_LARGE_FLAG) == 0)) {
        MediumStringPtr sp = taggedToPtr(p);
        StringLength len = { sp->lengthInBytes, sp->lengthInCodePoints };
        return len;
    }
    else {
        LargeStringPtr sp = taggedToPtr(p);
        StringLength len = { sp->lengthInBytes, sp->lengthInCodePoints };
        return len;
    }
}

static READONLY inline char *taggedStringBytes(TaggedPtr *p) {
     uint64_t bits = taggedPtrBits(*p);
    if (bits & IMMEDIATE_FLAG) {
        return (char *)p;
    }
    if (likely((bits & STRING_LARGE_FLAG) == 0)) {
        MediumStringPtr sp = taggedToPtr(*p);
        // cast away address space
        return (char *)sp->bytes;
    }
    else {
        LargeStringPtr sp = taggedToPtr(*p);
        return (char *)sp->bytes;
    }
}

static READONLY inline bool taggedStringEqual(TaggedPtr tp1, TaggedPtr tp2) {    
    uint64_t bits1 = taggedPtrBits(tp1);
    uint64_t bits2 = taggedPtrBits(tp2);
    if (bits1 == bits2) {
        return true;
    }
    if (bits1 & IMMEDIATE_FLAG) {
        return false;
    }
    if (bits2 & IMMEDIATE_FLAG) {
        // one of them is immediate and the bits are not equal
        // so they are not equal        
        return false;
    }
    return _bal_string_heap_eq(tp1, tp2);
}

static READONLY inline bool taggedPtrEqual(TaggedPtr tp1, TaggedPtr tp2) {
    if (tp1 == tp2) {
        return 1;
    }
    int tag1 = getTag(tp1);
    int tag2 = getTag(tp2);
    if (tag1 != tag2) {
        return 0;
    }
    switch (tag1) {
        case TAG_STRING:
            return taggedStringEqual(tp1, tp2);
        case (TAG_INT|FLAG_INT_ON_HEAP):
            {
                IntPtr p1 = taggedToPtr(tp1);
                IntPtr p2 = taggedToPtr(tp2);
                return *p1 == *p2;
            }
        case TAG_FLOAT:
            {
                FloatPtr p1 = taggedToPtr(tp1);
                FloatPtr p2 = taggedToPtr(tp2);
                return _bal_float_eq(*p1, *p2);
            }
        case TAG_LIST_RW:
            return _bal_list_eq(tp1, tp2);
        case TAG_MAPPING_RW:
            return _bal_mapping_eq(tp1, tp2);
    }
    return 0;
}

static READNONE inline TaggedPtr ptrAddFlags(UntypedPtr p, uint64_t flags)  {
    char *p0 = (void *)p;
    p0 = (char *)((uint64_t)p0 | flags);
    return (TaggedPtr)p0;
}

// We are trying to avoid doing inttoptr or ptrtoint in address space 1
static inline TaggedPtr ptrAddShiftedTag(UntypedPtr tp, uint64_t shiftedTag) {
    char *p = (char *)tp;
    uint64_t bits = (uint64_t)p;
    bits |= shiftedTag;
    p = (char *)bits;
    return (TaggedPtr)p;
}








