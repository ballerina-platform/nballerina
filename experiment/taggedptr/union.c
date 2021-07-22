#include "taggedptr.h"

union u {
    char *ptr;
    uint64_t bits;
};


uint64_t unpackTag(char *ptr) {
    union u u;
    u.ptr = ptr;
    return u.bits & TAG_MASK;
}

char *unpackPtr(char *ptr) {
    union u u;
    u.ptr = ptr;
    u.bits &= ~TAG_MASK;
    return u.ptr;
}

char *pack(char *ptr, uint64_t tag) {
    return ptr + tag;
}

// This gets optimized into the wrong thing
int64_t extractInt(char *ptr) {
    int64_t n = ((int64_t)ptr) & TAG_MASK;
    // This is trying to sign extend the lo 48 bits
    // but doesn't work
    n <<= 16;
    return n >> 16;
}

char *packInt(char *ptr, int64_t n) {
    return (char *)(n & ((1L << 48) - 1));
}