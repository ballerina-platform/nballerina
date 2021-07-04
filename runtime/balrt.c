#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tag.h"

#ifndef STACK_SIZE
#ifdef STACK_DEBUG
#define STACK_SIZE 1024
#else
#define STACK_SIZE (1024*1024)
#endif
#endif

#define TAG_MASK 0xFF
#define TAG_SHIFT 56
#define ALIGN_HEAP 8

extern void _B_main();
char *_bal_stack_guard;

#ifdef __clang__
#define NODEREF __attribute__((noderef))
#else
#define NODEREF /* as nothing */
#endif

typedef char NODEREF *TaggedPtr;

// An error is currently represented as int with the error code in the lo byte
typedef uint64_t Error;

typedef struct {
    int64_t length;
    // capacity is always >= length
    int64_t capacity;
    TaggedPtr *members;
} *ListPtr;

extern void *_bal_alloc(int64_t nBytes);
static void array_grow(ListPtr lp);

static inline int getTag(TaggedPtr p) {
    return (int)((((uint64_t)p) >> TAG_SHIFT) & TAG_MASK);
}

static inline int taggedToBoolean(TaggedPtr p) {
    return (int)(((uint64_t)p) & 1);
}

static inline int64_t taggedToInt(TaggedPtr p) {
    return *(int64_t *)(char *)(~(((uint64_t)TAG_MASK) << TAG_SHIFT) & (uint64_t)p);
}

static inline ListPtr taggedToList(TaggedPtr p) {
    return (ListPtr)(char *)(~(((uint64_t)TAG_MASK) << TAG_SHIFT) & (uint64_t)p);
}

#define STYLE_DIRECT 0
#define STYLE_INFORMAL 1

static void printTagged(FILE *fp, TaggedPtr p, int style) {
    int tag = getTag(p);
    switch (tag) {
        case 0:
            if (p != 0) {
                fprintf(stderr, "zero tag with non-zero payload %p\n", p);
                abort();
            }
            if (style == STYLE_INFORMAL) {
                fputs("null", fp);
            }
            break;
        case TAG_BOOLEAN:
            fprintf(fp, "%s", taggedToBoolean(p) ? "true" : "false");
            break;
        case TAG_INT:
            fprintf(fp, "%ld", (long)taggedToInt(p));
            break;
        case TAG_LIST_RW:
            {
                ListPtr lp = taggedToList(p);
                fputs("[", fp);
                int i;
                for (i = 0; i < lp->length; i++) {
                    if (i > 0) {
                        fputs(",", fp);
                    }
                    printTagged(fp, lp->members[i], STYLE_INFORMAL);
                }
                fputs("]", fp);
                break;
            }
        default:
            fprintf(stderr, "unknown tag %d\n", tag);
            abort();
    }
}
 
int64_t _Barray__length(TaggedPtr p) {
    ListPtr lp = taggedToList(p);
    return lp->length;
}

void _Barray__push(TaggedPtr p, TaggedPtr val) {
    ListPtr lp = taggedToList(p);
    int64_t len = lp->length;
    if (len >= lp->capacity) {
        array_grow(lp);
    }
    // note that array_grow does not change length
    lp->members[len] = val;
    lp->length = len + 1;
}

#define INITIAL_LIST_SIZE 4
#define ARRAY_LENGTH_MAX (INT64_MAX/sizeof(TaggedPtr))

// Increase the capacity by at least 1
static void array_grow(ListPtr lp) {
    int64_t old_capacity = lp->capacity;
    // Deal with case where capacity is 0
    // Implies length is also 0
    if (old_capacity == 0) {
        lp->members = _bal_alloc(sizeof(TaggedPtr) * INITIAL_LIST_SIZE);
        lp->capacity = INITIAL_LIST_SIZE;
        return;
    }
    // Increase capacity by a factor of 1.5
    int64_t extra_capacity = lp->capacity >> 1;
    int64_t new_capacity; 
    if (old_capacity <= ARRAY_LENGTH_MAX - extra_capacity) {
        // we know that this addition cannot overflow
        // and that new_capacity <= ARRAY_LENGTH_MAX
        new_capacity = old_capacity + extra_capacity;
    }
    else {
        new_capacity = ARRAY_LENGTH_MAX;
        if (new_capacity == old_capacity)
            abort(); // we cannot grow any more; implies we allocated INT64_MAX bytes successfully! XXX should handle this better
    }
    // we know the multiplication cannot overflow because new_capacity <= ARRAY_MAX
    TaggedPtr *new_members = _bal_alloc(sizeof(TaggedPtr) * new_capacity);
    // lp->length may be zero, but lp->members will not be null in this case
    // because we checked at the beginning that capacity was not zero
    memcpy(new_members, lp->members, lp->length * sizeof(TaggedPtr));
    lp->members = new_members;
    lp->capacity = new_capacity;
}

void _Bio__println(TaggedPtr p) {
#ifdef STACK_DEBUG
    fprintf(stderr, "Used stack %ld bytes\n", (long)((_bal_stack_guard + STACK_SIZE) - (char *)__builtin_frame_address(0)));
#endif
    printTagged(stdout, p, STYLE_DIRECT);
    putchar('\n');
}

const char *panicMessages[] = {
    0,
    "arithmetic overflow",
    "divide by zero",
    "bad type cast",
    "stack overflow",
    "index out of bounds"
};

void _bal_panic(Error err) {
    int code = err & 0xFF;
    int64_t lineNumber = err >> 8;
    fputs("panic: ", stderr);
    if (code <= 0 || code >= sizeof(panicMessages)/sizeof(panicMessages[0]))
        abort();
    if (lineNumber > 0) {
        fprintf(stderr, "line %ld: ", (long)lineNumber);
    }
    fprintf(stderr, "%s\n", panicMessages[code]);
    fflush(stderr);
    abort();
}

void *_bal_alloc(int64_t nBytes) {
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
