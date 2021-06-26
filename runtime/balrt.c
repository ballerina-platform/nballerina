#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

#ifndef STACK_SIZE
#ifdef STACK_DEBUG
#define STACK_SIZE 1024
#else
#define STACK_SIZE (1024*1024)
#endif
#endif

#define TAG_MASK 0xFF
#define TAG_SHIFT 56
#define TAG_BOOLEAN 1
#define TAG_INT 2
#define ALIGN_HEAP 8

extern void _B_main();
char *_bal_stack_guard;

typedef char *TaggedPtr;

static inline int getTag(TaggedPtr p) {
    return (int)((((uint64_t)p) >> TAG_SHIFT) & TAG_MASK);
}

static inline int taggedToBoolean(TaggedPtr p) {
    return (int)(((uint64_t)p) & 1);
}

static inline int64_t taggedToInt(TaggedPtr p) {
    return *(int64_t *)(char *)(~(((uint64_t)TAG_MASK) << TAG_SHIFT) & (uint64_t)p);
}

static void printTagged(FILE *fp, TaggedPtr p) {
    int tag = getTag(p);
    switch (tag) {
        case 0:
            if (p != 0) {
                fprintf(stderr, "zero tag with non-zero payload %p\n", p);
                abort();
            }
            break;
        case TAG_BOOLEAN:
            fprintf(fp, "%s", taggedToBoolean(p) ? "true" : "false");
            break;
        case TAG_INT:
            fprintf(fp, "%ld", (long)taggedToInt(p));
            break;
        default:
            fprintf(stderr, "unknown tag %d\n", tag);
            abort();
    }
}

void _Bio__println(TaggedPtr p) {
#ifdef STACK_DEBUG
    fprintf(stderr, "Used stack %ld bytes\n", (long)((_bal_stack_guard + STACK_SIZE) - (char *)__builtin_frame_address(0)));
#endif
    printTagged(stdout, p);
    putchar('\n');
}

const char *panicMessages[] = {
    0,
    "arithmetic overflow",
    "divide by zero",
    "bad type cast",
    "stack overflow"
};

void _bal_panic(int64_t code) {
    fprintf(stderr, "panic: %s\n", panicMessages[code]);
    fflush(stderr);
    abort();
}

char *_bal_alloc(int64_t nBytes) {
    void *p = malloc(nBytes);
    if (p != 0)
        return p;
    fprintf(stderr, "out of memory\n");
    abort();
}

int main() {
    _bal_stack_guard = __builtin_frame_address(0) - STACK_SIZE;
    _B_main();
    return 0;
} 
