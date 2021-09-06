#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "balrt.h"
#include "third-party/libbacktrace/backtrace.h"

#define INITIAL_PC_COUNT 1
#define MAX_PC_COUNT 256
#define SKIP_FROM_END 1 // This number counts from the last stack frame
#define THREAD 0

struct backtrace_state *state;

typedef struct {
    uint32_t npcs;
    uint32_t szpcs;
    PC *pcs;
} Trace;

static void onError(void *data, const char *msg, int errnum) {
    fprintf(stdout, "Error : libbacktrace : %s\n", msg);
    fflush(stdout);
}

static int onFrame(void *data, PC pc, const char *filename, int lineno, const char *function) {
    if (function == NULL || filename == NULL)
        return 0;

    fprintf(stdout, "%s", function);
    fprintf(stdout, " %s", filename);
    fputs(":", stdout);
    fprintf(stdout, "%" PRIi32, lineno);
    putc('\n', stdout);
    fflush(stdout);
    return 0;
}

static int onPC(void *data, PC pc) {
    Trace *trace = (Trace *)data;
    uint32_t npcs = trace->npcs;
    uint32_t szpcs = trace->szpcs;
    if (unlikely(npcs == MAX_PC_COUNT))
        return 1;
    if (npcs == szpcs) {
        szpcs = szpcs << 1;
        trace->szpcs = szpcs;
        void *p = realloc(trace->pcs, sizeof(PC) * szpcs);
        if (p == 0)
            return 1;
        trace->pcs = (PC *)p;
    }

    PC *pcs = trace->pcs;
    *(pcs + npcs) = pc;

    trace->npcs = npcs + 1;
    return 0;
}

static int getPCs(Trace *trace) {
    state = backtrace_create_state(NULL, THREAD, onError, NULL);

    void *p = malloc(sizeof(PC) * INITIAL_PC_COUNT);
    if (p == 0)
        return 1;
    trace->pcs = (PC *)p;
    return backtrace_simple(state, SKIP_FROM_END, onPC, onError, trace);
}

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    Trace trace = {0, INITIAL_PC_COUNT};
    int err = getPCs(&trace);
    if (err) {
        fprintf(stdout, "%s\n", "Error occured when getting backtrace for error value");
        fflush(stdout);
    }
    uint32_t npcs = trace.npcs;

    uint64_t errStructSize = sizeof(struct Error) + sizeof(PC) * npcs;
    ErrorPtr ep = _bal_alloc(errStructSize);
    ep->message = message;
    ep->lineNumber = lineNumber;
    ep->npcs = npcs;

    PC *pcs = trace.pcs;
    memcpy(ep->pcs, pcs, sizeof(PC) * npcs);
    free(pcs);

    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

void _bal_error_trace_print(ErrorPtr er) {
    PC *pcs = (PC *)er->pcs;
    uint32_t npcs = er->npcs;
    for (size_t i = 0; i < npcs; i++) {
        backtrace_pcinfo(state, *(pcs + i), onFrame, onError, NULL);
    }
}

TaggedPtr _Berror__message(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->message;
}
