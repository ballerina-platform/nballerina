#include "balrt.h"
#include <stdio.h>
#include <stdlib.h>

// XXX should compute the size of the bytes array properly
// so that the size of the struct is a multiple of 8
// This definition only works if the length of the string (excluding '\0')
// is betweeen 13 and 19
#define DECL_MEDIUM_STRING_13_19(ident, str) \
    const static struct { \
        uint16_t lengthInBytes; \
        uint16_t lengthInCodePoints; \
        char bytes[20]; \
    } ident ALIGNED(8) = { \
        sizeof(str) - 1, \
        sizeof(str) - 1, \
        str \
    }

#define DECL_PANIC_MESSAGE(code, str) \
  DECL_MEDIUM_STRING_13_19(panic_msg_##code, str)
    
// The macro above needs fixing if any of the messages have a length
// that is not between 13 and 19
DECL_PANIC_MESSAGE(PANIC_ARITHMETIC_OVERFLOW, "arithmetic overflow");
DECL_PANIC_MESSAGE(PANIC_DIVIDE_BY_ZERO, "divide by zero");
DECL_PANIC_MESSAGE(PANIC_TYPE_CAST, "bad type cast");
DECL_PANIC_MESSAGE(PANIC_STACK_OVERFLOW, "stack overflow");
DECL_PANIC_MESSAGE(PANIC_INDEX_OUT_OF_BOUNDS, "index out of bounds");
DECL_PANIC_MESSAGE(PANIC_LIST_TOO_LONG, "list too long");
DECL_PANIC_MESSAGE(PANIC_STRING_TOO_LONG, "string too long");
DECL_PANIC_MESSAGE(PANIC_LIST_STORE, "bad list store");
DECL_PANIC_MESSAGE(PANIC_MAPPING_STORE, "bad mapping store");
DECL_PANIC_MESSAGE(PANIC_NO_FILLER, "no filler value");
DECL_PANIC_MESSAGE(PANIC_INTERNAL_ERROR, "internal error");
// This panic code is used in cases where a float operation would return NaN,
// notably for 0/0 and some cases of remainder. 
DECL_PANIC_MESSAGE(PANIC_INVALID_DECIMAL, "not a valid decimal");

#define PANIC_MESSAGE_ENTRY(code) [code] = (struct MediumString *)&(panic_msg_##code)

const struct MediumString *panicMessageStrings[] = {
    0,
    PANIC_MESSAGE_ENTRY(PANIC_ARITHMETIC_OVERFLOW),
    PANIC_MESSAGE_ENTRY(PANIC_DIVIDE_BY_ZERO),
    PANIC_MESSAGE_ENTRY(PANIC_TYPE_CAST),
    PANIC_MESSAGE_ENTRY(PANIC_STACK_OVERFLOW),
    PANIC_MESSAGE_ENTRY(PANIC_INDEX_OUT_OF_BOUNDS),
    PANIC_MESSAGE_ENTRY(PANIC_LIST_TOO_LONG),
    PANIC_MESSAGE_ENTRY(PANIC_STRING_TOO_LONG),
    PANIC_MESSAGE_ENTRY(PANIC_LIST_STORE),
    PANIC_MESSAGE_ENTRY(PANIC_MAPPING_STORE),
    PANIC_MESSAGE_ENTRY(PANIC_NO_FILLER),
    PANIC_MESSAGE_ENTRY(PANIC_INTERNAL_ERROR),
    PANIC_MESSAGE_ENTRY(PANIC_INVALID_DECIMAL)
};

#define BACKTRACE_START_INDEX 1

TaggedPtr COLD _bal_panic_construct(PackedPanic err) {
    int code = err & 0xFF;
    int64_t lineNumber = err >> 8;
    if (code <= 0 || code >= (int)(sizeof(panicMessageStrings)/sizeof(panicMessageStrings[0])))
        abort();
    MediumStringPtr sp = (MediumStringPtr)panicMessageStrings[code];
    TaggedPtr msg = ptrAddFlags(sp, (uint64_t)TAG_STRING << TAG_SHIFT);
    return _bal_error_construct(msg, lineNumber);
}

NORETURN COLD void _bal_panic_internal(PanicCode code) {
    _bal_panic(_bal_panic_construct(code));
}

NORETURN COLD void _bal_panic(TaggedPtr error) {
    fputs("panic: ", stderr);
    ErrorPtr ep = taggedToPtr(error);
    TaggedPtr msg = ep->message;
    StringLength len = taggedStringLength(msg);
    int64_t nBytes = len.nBytes;
    char *bytes = taggedStringBytes(&msg);            
    fwrite(bytes, 1, nBytes, stderr);
    putc('\n', stderr);
    fflush(stderr);
    _bal_error_backtrace_print(ep, BACKTRACE_START_INDEX, stderr);
    abort();
}

