#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#include <inttypes.h>
#include <stdio.h>

#include "tag.h"
#include "panic.h"
#define TAG_MASK 0xFF
#define UT_MASK 0x1F
#define TAG_SHIFT 56

#define COMPARE_UN -1
#define COMPARE_LT 0
#define COMPARE_EQ 1
#define COMPARE_GT 2

#define HEAP_ALIGNMENT 8
#define POINTER_MASK (((uint64_t)1 << TAG_SHIFT) - 1)
#define ALIGN_MASK (~(uint64_t)(HEAP_ALIGNMENT - 1))

#define IMMEDIATE_FLAG (((uint64_t)0x20) << TAG_SHIFT)
#define EXACT_FLAG ((uint64_t)0x4)

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
#define UNUSED __attribute__((unused))
#else
#define NODEREF /* as nothing */
#define NORETURN /* as nothing */
#define GC /* as nothing */
#define COLD /* as nothing */
#define READONLY /* as nothing */
#define READNONE /* as nothing */
#define ALIGNED(n) /* as nothing */
#deifne UNUSED /* as nothing */
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

#define IMMEDIATE_INT_MIN -((int64_t)1 << (TAG_SHIFT - 1))
#define IMMEDIATE_INT_MAX  (((int64_t)1 << (TAG_SHIFT - 1)) - 1)
#define IMMEDIATE_INT_TRUNCATE(n) (n & (((int64_t)1 << TAG_SHIFT) - 1))

extern char *_bal_stack_guard;

typedef GC char NODEREF *TaggedPtr;
typedef GC void *UntypedPtr;
typedef GC int64_t *IntPtr;
typedef GC double *FloatPtr;

typedef uint64_t PanicCode;
// An internally-generated panic is currently represented as int with the error code in the lo byte
// and line number right-shifted 8.
typedef uint64_t PackedPanic;

typedef uintptr_t PC;

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

typedef struct {
    int64_t length;
    int64_t capacity;
    GC int64_t *members;
} IntArray;

typedef struct {
    int64_t length;
    int64_t capacity;
    GC double *members;
} FloatArray;

typedef uint32_t Tid;
// Represents the type of a member of a structure
// Either a ComplexTypePtr or a shifted bitset
// Shifted bitSet is shifted 1 and or'ed with 1
typedef uint64_t MemberType;

#define BITSET_MEMBER_TYPE(bitSet) (((uint64_t)(bitSet) << 1)|1)

// All mapping and list descriptors start with this.
typedef struct {
    Tid tid;
} StructureDesc, *StructureDescPtr;

// All mapping and list values start with this
typedef GC struct {
    StructureDescPtr desc;
} Structure, *StructurePtr;

// This extends StructureDesc
// i.e must start with tid
typedef struct {
    Tid tid;
    TaggedPtr (*get)(TaggedPtr lp, int64_t index);
    PanicCode (*set)(TaggedPtr lp, int64_t index, TaggedPtr val);
    int64_t (*getInt)(TaggedPtr lp, int64_t index);
    PanicCode (*setInt)(TaggedPtr lp, int64_t index, int64_t val);
    double (*getFloat)(TaggedPtr lp, int64_t index);
    PanicCode (*setFloat)(TaggedPtr lp, int64_t index, double val);
    MemberType memberType;
    StructureDescPtr fillerDesc;
} ListDesc, *ListDescPtr;

// Extends Structure
typedef GC struct List {
    ListDescPtr desc;
    // This isn't strictly portable because void* and TaggedPtr* might have different alignments/sizes
    // But we ain't writing portable code here
    union {
        GenericArray gArray;
        TaggedPtrArray tpArray;
        IntArray iArray;
        FloatArray fArray;
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

// This extends StructureDesc
// i.e must start with tid
typedef struct {
    Tid tid;
    uint32_t nFields;
    MemberType restType;
    MemberType fieldTypes[];
} MappingDesc, *MappingDescPtr;

// Extends Structure
typedef GC struct Mapping {
    MappingDescPtr desc;
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

typedef struct UniformSubtype {
    bool (*contains)(struct UniformSubtype *, TaggedPtr);
} UniformSubtype, *UniformSubtypePtr;

typedef struct {
    TaggedPtr fieldName;
    uint32_t fieldBitSet;
} RecordSubtypeField;

typedef struct {
    UniformSubtype uniform;
    uint32_t nFields;
    RecordSubtypeField fields[];
} *RecordSubtypePtr;

typedef struct {
    UniformSubtype uniform;
    uint32_t bitSet;
} *MapSubtypePtr, *ArraySubtypePtr;

typedef struct {
    UniformSubtype uniform;
    uint32_t nTids;
    uint32_t tids[];
} *PrecomputedSubtypePtr;

typedef struct {
   uint32_t all;
   uint32_t some;
   UniformSubtypePtr subtypes[];
} ComplexType, *ComplexTypePtr;

typedef struct EqStack {
    TaggedPtr p1;
    TaggedPtr p2;
    struct EqStack *next;
} EqStack;

typedef GC struct Error {
    TaggedPtr message;
    int64_t lineNumber;
    int backtraceErrorCode;
    char *backtraceErrorMessage;
    uint32_t nPCs;
    PC pcs[];
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

typedef struct {
    TaggedPtr ptr;
    PanicCode panicCode;
} TaggedPtrPanicCode;

#define ALIGN_HEAP 8

// Don't declare functions here if they are balrt_inline.c

extern UntypedPtr _bal_alloc(uint64_t nBytes);
extern NORETURN void _bal_panic(TaggedPtr tp);

extern bool _bal_float_eq(double, double);

// precondition is that both strings are on the heap and the pointers are not ==
extern READONLY bool _bal_string_heap_eq(TaggedPtr tp1, TaggedPtr tp2);

extern READONLY int64_t _bal_string_cmp(TaggedPtr tp1, TaggedPtr tp2);
extern READONLY TaggedPtr _bal_string_concat(TaggedPtr tp1, TaggedPtr tp2);
extern READONLY uint64_t _bal_string_hash(TaggedPtr tp);
extern char *_bal_string_alloc(uint64_t lengthInBytes, uint64_t lengthInCodePoints, TaggedPtr *resultPtr);

#define TAGGED_PTR_SHIFT 3

extern void _bal_array_grow(GC GenericArray *ap, int64_t min_capacity, int shift);
extern ListPtr _bal_list_construct(ListDescPtr desc, int64_t capacity);

extern TaggedPtr _bal_list_generic_get_tagged(TaggedPtr p, int64_t index);
extern int64_t _bal_list_generic_get_int(TaggedPtr p, int64_t index);
double _bal_list_generic_get_float(TaggedPtr p, int64_t index);
extern PanicCode _bal_list_generic_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val);
extern PanicCode _bal_list_generic_set_int(TaggedPtr p, int64_t index, int64_t val);
PanicCode _bal_list_generic_set_float(TaggedPtr p, int64_t index, double val);

extern TaggedPtr _bal_list_int_array_get_tagged(TaggedPtr p, int64_t index);
extern int64_t _bal_list_int_array_get_int(TaggedPtr p, int64_t index);
extern PanicCode _bal_list_int_array_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val);
extern PanicCode _bal_list_int_array_set_int(TaggedPtr p, int64_t index, int64_t val);
extern PanicCode _bal_list_int_array_set_float(TaggedPtr p, int64_t index, double val);

extern TaggedPtr _bal_list_float_array_get_tagged(TaggedPtr p, int64_t index);
extern double _bal_list_float_array_get_float(TaggedPtr p, int64_t index);
extern PanicCode _bal_list_float_array_set_tagged(TaggedPtr p, int64_t index, TaggedPtr val);
extern PanicCode _bal_list_float_array_set_int(TaggedPtr p, int64_t index, int64_t val);
extern PanicCode _bal_list_float_array_set_float(TaggedPtr p, int64_t index, double val);

extern READONLY bool _bal_list_eq(TaggedPtr p1, TaggedPtr p2);
extern READONLY bool _bal_list_eq_internal(TaggedPtr p1, TaggedPtr p2, EqStack *sp);

#define MAP_FIELD_SHIFT (TAGGED_PTR_SHIFT*2)

extern TaggedPtr _bal_mapping_construct(MappingDescPtr desc, int64_t capacity);
extern void _bal_mapping_init_member(TaggedPtr mapping, TaggedPtr key, TaggedPtr val);
extern PanicCode _bal_mapping_set(TaggedPtr mapping, TaggedPtr key, TaggedPtr val);
extern READONLY TaggedPtr _bal_mapping_get(TaggedPtr mapping, TaggedPtr key);
extern READONLY bool _bal_mapping_eq(TaggedPtr p1, TaggedPtr p2);
extern READONLY bool _bal_mapping_eq_internal(TaggedPtr p1, TaggedPtr p2, EqStack *sp);

extern READNONE UntypedPtr _bal_tagged_to_ptr(TaggedPtr p);
extern READNONE UntypedPtr _bal_tagged_to_ptr_exact(TaggedPtr p);
extern READNONE TaggedPtr _bal_tagged_clear_exact(TaggedPtr p);
extern READNONE UntypedPtr _bal_ptr_mask(TaggedPtr ptr, uint64_t mask);

extern TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber);
extern void _bal_error_backtrace_print(ErrorPtr ep, uint32_t start, FILE *fp);
extern void _bal_print_mangled_name(const char *mangledName, FILE *fp);
// Returns an error value
extern TaggedPtr COLD _bal_panic_construct(PackedPanic err);
extern NORETURN COLD void _bal_panic_internal(PanicCode code);

extern TaggedPtr _bal_decimal_const(const char *decString);
extern TaggedPtrPanicCode _bal_decimal_add(TaggedPtr tp1, TaggedPtr tp2);
extern TaggedPtrPanicCode _bal_decimal_sub(TaggedPtr tp1, TaggedPtr tp2);
extern TaggedPtrPanicCode _bal_decimal_mul(TaggedPtr tp1, TaggedPtr tp2);
extern TaggedPtrPanicCode _bal_decimal_div(TaggedPtr tp1, TaggedPtr tp2);
extern TaggedPtr _bal_decimal_neg(TaggedPtr tp);
extern TaggedPtrPanicCode _bal_decimal_rem(TaggedPtr tp1, TaggedPtr tp2);
extern int64_t _bal_decimal_cmp(TaggedPtr tp1, TaggedPtr tp2);
extern bool _bal_decimal_exact_eq(TaggedPtr tp1, TaggedPtr tp2);
extern double _bal_decimal_to_float(TaggedPtr tp);
extern TaggedPtr _bal_decimal_from_int(int64_t val);

// Library mangling
#define BAL_ROOT_NAME(sym) _B04root ## sym
#define BAL_LIB_IO_NAME(sym) _Bb02io ## sym
#define BAL_LANG_INT_NAME(sym) _Bb0m4lang3int ## sym
#define BAL_LANG_STRING_NAME(sym) _Bb0m4lang6string ## sym
#define BAL_LANG_ARRAY_NAME(sym) _Bb0m4lang5array ## sym
#define BAL_LANG_MAP_NAME(sym) _Bb0m4lang3map ## sym
#define BAL_LANG_ERROR_NAME(sym) _Bb0m4lang5error ## sym
// Library functions
extern TaggedPtr BAL_LANG_ERROR_NAME(message)(TaggedPtr p);
extern void BAL_LIB_IO_NAME(println)(TaggedPtr p);

static READNONE inline uint64_t taggedPtrBits(TaggedPtr p) {
    return (uint64_t)(char *)p;
}

static inline TaggedPtr bitsToTaggedPtr(uint64_t bits) {
    char *p = (char *)bits;
    return (TaggedPtr)p;
}

static READNONE inline int getTag(TaggedPtr p) {
    return (int)((taggedPtrBits(p) >> TAG_SHIFT) & TAG_MASK);
}

static READNONE inline int taggedToBoolean(TaggedPtr p) {
    return (int)(taggedPtrBits(p) & 1);
}

static READNONE inline UntypedPtr taggedToPtr(TaggedPtr p) {
    return _bal_ptr_mask(p, POINTER_MASK & ALIGN_MASK);
}

static READNONE inline UntypedPtr taggedToPtrExact(TaggedPtr p) {
    return _bal_ptr_mask(p, (POINTER_MASK & ALIGN_MASK)|EXACT_FLAG);
}

static READONLY inline bool memberTypeIsSubtypeSimple(MemberType memberType, uint32_t bitSet) {
    uint32_t memberBitSet;
    if (memberType & 1) {
        memberBitSet = (uint32_t)(memberType >> 1);
    }
    else {
        ComplexTypePtr ctp = (ComplexTypePtr)memberType;
        memberBitSet = ctp->all | ctp->some; 
    }
    return (memberBitSet & ~(uint64_t)bitSet) == 0;
}

static READONLY inline bool complexTypeContainsTagged(ComplexTypePtr ctp, TaggedPtr p) {
    int flag = 1 << ((getTag(p) & UT_MASK));
    if (ctp->all & flag) {
        return true;
    }
    if (!(ctp->some & flag)) {
        return false;
    }
    int i = __builtin_popcount(ctp->some & (flag - 1));
    UniformSubtypePtr vp = ctp->subtypes[i];
    return (vp->contains)(vp, p);
}

static READONLY inline bool memberTypeContainsTagged(MemberType memberType, TaggedPtr tp) {
    if (memberType & 1) {
        uint64_t flag =  (uint64_t)1 << (1 + (getTag(tp) & UT_MASK));
        return (memberType & flag) != 0;
    }
    else {
        return complexTypeContainsTagged((ComplexTypePtr)memberType, tp);
    }   
}

static READNONE inline PanicCode storePanicCode(TaggedPtr p, PanicCode code) {
    // If the exact bit is set, then these will be unequal and the error should not occur.
    return taggedToPtr(p) == taggedToPtrExact(p) ? code :  PANIC_INTERNAL_ERROR;
}

static READONLY inline int64_t taggedToInt(TaggedPtr p) {
    uint64_t n = taggedPtrBits(p);
    if (likely((n & IMMEDIATE_FLAG) != 0)) {
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

static READONLY inline int64_t taggedPrimitiveCompare(TaggedPtr lhs, TaggedPtr rhs, int64_t(*comparator)(TaggedPtr, TaggedPtr)) {
    if (lhs == rhs) {
        return COMPARE_EQ;
    }
    if (!lhs || !rhs) {
        return COMPARE_UN;
    }
    return (*comparator)(lhs, rhs);
}

static READONLY inline int64_t taggedIntComparator(TaggedPtr lhs, TaggedPtr rhs) {
    int64_t lhsVal = taggedToInt(lhs);
    int64_t rhsVal = taggedToInt(rhs);
    if (lhsVal == rhsVal) {
        return COMPARE_EQ;
    }
    if (lhsVal < rhsVal) {
        return COMPARE_LT;
    }
    if (lhsVal > rhsVal) {
        return COMPARE_GT;
    }
    return COMPARE_UN;
}

static READONLY inline int64_t taggedIntCompare(TaggedPtr lhs, TaggedPtr rhs) {
    return taggedPrimitiveCompare(lhs, rhs, &taggedIntComparator);
}

static READONLY inline double taggedToFloat(TaggedPtr p) {
    GC double *np = taggedToPtr(p);
    return *np;
}

static READONLY inline int64_t taggedFloatComparator(TaggedPtr lhs, TaggedPtr rhs) {
    double lhsVal = taggedToFloat(lhs);
    double rhsVal = taggedToFloat(rhs);
    if (lhsVal == rhsVal) {
        return COMPARE_EQ;
    }
    if (lhsVal < rhsVal) {
        return COMPARE_LT;
    }
    if (lhsVal > rhsVal) {
        return COMPARE_GT;
    }
    return COMPARE_UN;
}

static READONLY inline int64_t taggedFloatCompare(TaggedPtr lhs, TaggedPtr rhs) {
    return taggedPrimitiveCompare(lhs, rhs, &taggedFloatComparator);
}

static READONLY inline int64_t taggedBooleanComparator(TaggedPtr lhs, TaggedPtr rhs) {
    int lhsVal = taggedToBoolean(lhs);
    int rhsVal = taggedToBoolean(rhs);
    if (lhsVal == rhsVal) {
        return COMPARE_EQ;
    }
    if (lhsVal < rhsVal) {
        return COMPARE_LT;
    }
    else {
        return COMPARE_GT;
    }
}

static READONLY inline int64_t taggedBooleanCompare(TaggedPtr lhs, TaggedPtr rhs) {
    return taggedPrimitiveCompare(lhs, rhs, &taggedBooleanComparator);
}

static READONLY inline int64_t taggedStringCompare(TaggedPtr lhs, TaggedPtr rhs) {
    if (lhs == rhs) {
        return COMPARE_EQ;
    }
    if (!lhs || !rhs) {
        return COMPARE_UN;
    }
    return _bal_string_cmp(lhs, rhs) + 1;
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

static READONLY inline bool taggedPtrEq(TaggedPtr tp1, TaggedPtr tp2, EqStack *stackPtr) {
    if (tp1 == tp2) {
        return true;
    }
    int tag1 = getTag(tp1);
    int tag2 = getTag(tp2);
    if (tag1 != tag2) {
        return false;
    }
    switch (tag1) {
        case TAG_STRING:
            return taggedStringEqual(tp1, tp2);
        case TAG_INT:
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
        case TAG_MAPPING_RW:
            {  
                EqStack stack;
                for (EqStack *sp = stackPtr; sp; sp = sp->next) {
                    if (tp1 == sp->p1 && tp2 == sp->p2) {
                        return true;
                    }
                }
                stack.p1 = tp1;
                stack.p2 = tp2;
                stack.next = stackPtr;
                return (tag1 == TAG_LIST_RW
                        ? _bal_list_eq_internal(tp1, tp2, &stack)
                        : _bal_mapping_eq_internal(tp1, tp2, &stack));
            }
    }
    return false;
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

static READONLY inline int64_t arrayCompare(TaggedPtr lhs, TaggedPtr rhs, int64_t(*comparator)(TaggedPtr, TaggedPtr)) {
    if (lhs == rhs) {
        return COMPARE_EQ;
    }
    if (!lhs || !rhs) {
        return COMPARE_UN;
    }
    ListPtr lhsListPtr = taggedToPtr(lhs);
    ListPtr rhsListPtr = taggedToPtr(rhs);
    int64_t lhsLen = lhsListPtr->tpArray.length;
    int64_t rhsLen = rhsListPtr->tpArray.length;
    int64_t length = (lhsLen <= rhsLen) ? lhsLen : rhsLen;
    TaggedPtr (*lhsGet)(TaggedPtr lp, int64_t index) = lhsListPtr->desc->get;
    TaggedPtr (*rhsGet)(TaggedPtr lp, int64_t index) = rhsListPtr->desc->get;
    for (int64_t i = 0; i < length; i++) {
        int64_t result = (*comparator)(lhsGet(lhs, i), rhsGet(rhs, i));
        if (result != COMPARE_EQ) {
            return result;
        }
    }
    if (lhsLen == rhsLen) {
        return COMPARE_EQ;
    }
    return (lhsLen < rhsLen) ? COMPARE_LT : COMPARE_GT;
}

static READONLY inline int64_t intArrayCompare(TaggedPtr lhs, TaggedPtr rhs) {
    return arrayCompare(lhs, rhs, &taggedIntCompare);
}

static READONLY inline int64_t floatArrayCompare(TaggedPtr lhs, TaggedPtr rhs) {
    return arrayCompare(lhs, rhs, &taggedFloatCompare);
}

static READONLY inline int64_t stringArrayCompare(TaggedPtr lhs, TaggedPtr rhs) {
    return arrayCompare(lhs, rhs, &taggedStringCompare);
}

static READONLY inline int64_t booleanArrayCompare(TaggedPtr lhs, TaggedPtr rhs) {
    return arrayCompare(lhs, rhs, &taggedBooleanCompare);
}

static inline void initGenericArray(GC GenericArray *ap, int64_t capacity, int shift) {
    ap->length = 0;
    ap->capacity = capacity;
    if (capacity == 0) {
        ap->members = 0;
    }
    else {
        ap->members = _bal_alloc(capacity << shift);
    }
}

static inline TaggedPtr floatToTagged(double n) {
    GC double *p = _bal_alloc(sizeof(double));
    *p = n;
    return ptrAddShiftedTag(p, ((uint64_t)TAG_FLOAT) << TAG_SHIFT);
}

static inline TaggedPtr intToTagged(int64_t n) {
    if (likely(n >= IMMEDIATE_INT_MIN & n <= IMMEDIATE_INT_MAX)) {
        return bitsToTaggedPtr(IMMEDIATE_INT_TRUNCATE(n) | IMMEDIATE_FLAG | (((uint64_t)TAG_INT) << TAG_SHIFT));
    }
    else {
        GC int64_t *p = _bal_alloc(sizeof(int64_t));
        *p = n;
        return ptrAddShiftedTag(p, ((uint64_t)TAG_INT) << TAG_SHIFT);
    }
}
