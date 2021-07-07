#include "balrt.h"
#include <stdio.h>
#include <stdlib.h>

const char *panicMessages[] = {
    0,
    "arithmetic overflow",
    "divide by zero",
    "bad type cast",
    "stack overflow",
    "index out of bounds",
    "list too long"
};

NORETURN void _bal_panic(Error err) {
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

