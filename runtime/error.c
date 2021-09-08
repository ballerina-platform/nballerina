#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "balrt.h"
#include "third-party/libbacktrace/backtrace.h"

#define INITIAL_PC_COUNT 1
#define MAX_PC_COUNT 256
#define THREAD 0
#define SUCCESS 0
#define FAIL 1

struct backtrace_state *state = NULL;

typedef struct {
    uint32_t nPCs;
    uint32_t szPCs;
    bool errorOccurred;
    PC *pcs;
} SimpleBacktrace;

static void setBacktraceSimpleInternalError(void *data, const char *msg, int errnum);
static void setBacktracePCInfoInternalError(void *data, const char *msg, int errnum);
static int printBacktraceLine(void *data, PC pc, const char *filename, int lineno, const char *function);
static int setPC(void *data, PC pc);
static void getPCs(SimpleBacktrace *simpleBacktrace);

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    SimpleBacktrace simpleBacktrace = {0, INITIAL_PC_COUNT, false};
    void *p = malloc(sizeof(PC) * INITIAL_PC_COUNT);
    if (p == NULL) {
        simpleBacktrace.errorOccurred = true;
    }
    else {
        simpleBacktrace.pcs = p;
        getPCs(&simpleBacktrace);
    }

    uint32_t nPCs = simpleBacktrace.nPCs;
    uint64_t errorStructSize = sizeof(struct Error) + sizeof(PC) * nPCs;
    ErrorPtr ep = _bal_alloc(errorStructSize);
    ep->message = message;
    ep->lineNumber = lineNumber;
    ep->internalErrorOccured = simpleBacktrace.errorOccurred;
    ep->nPCs = nPCs;

    if (p != NULL) {
        PC *pcs = simpleBacktrace.pcs;
        memcpy(ep->pcs, pcs, sizeof(PC) * nPCs);
        free(pcs);
    }
    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

static void getPCs(SimpleBacktrace *simpleBacktrace) {
    if (state == NULL) {
        state = backtrace_create_state(NULL, THREAD, NULL, NULL);
        if (state == NULL) {
            simpleBacktrace->errorOccurred = true;
            return;
        }
    }
    backtrace_simple(state, 0, setPC, setBacktraceSimpleInternalError, simpleBacktrace);
}

// Implementation of backtrace_simple_callback
static int setPC(void *data, PC pc) {
    SimpleBacktrace *simpleBacktrace = data;
    uint32_t nPCs = simpleBacktrace->nPCs;
    uint32_t szPCs = simpleBacktrace->szPCs;
    if (nPCs == szPCs) {
        if (unlikely(szPCs == MAX_PC_COUNT)) {
            simpleBacktrace->errorOccurred = true;
            return FAIL;
        }
        szPCs = szPCs << 1;
        simpleBacktrace->szPCs = szPCs;
        void *p = realloc(simpleBacktrace->pcs, sizeof(PC) * szPCs);
        if (p == NULL) {
            simpleBacktrace->errorOccurred = true;
            return FAIL;
        }
        simpleBacktrace->pcs = p;
    }

    simpleBacktrace->pcs[nPCs] = pc;
    simpleBacktrace->nPCs = nPCs + 1;
    return SUCCESS;
}

// Implementation of backtrace_error_callback
static void setBacktraceSimpleInternalError(void *data, const char *msg, int errnum) {
    SimpleBacktrace *simpleBacktrace = data;
    simpleBacktrace->errorOccurred = true;
}

void _bal_error_backtrace_print(ErrorPtr ep) {
    GC PC *pcs = ep->pcs;
    uint32_t nPCs = ep->nPCs;
    bool errorOccured = ep->internalErrorOccured;
    for (uint32_t i = 0; i < nPCs; i++) {
        backtrace_pcinfo(state, pcs[i], printBacktraceLine, setBacktracePCInfoInternalError, &errorOccured);
    }
    if (errorOccured) {
        fputs("...", stderr);
        fflush(stderr);
    }
}

// Implementation of backtrace_full_callback
static int printBacktraceLine(void *data, PC pc, const char *filename, int lineno, const char *function) {
    if (function != NULL && filename != NULL) {
        fprintf(stderr, "%s %s:%" PRIi32 "\n", function, filename, lineno);
        fflush(stderr);
    }
    return SUCCESS;
}

// Implementation of backtrace_error_callback
static void setBacktracePCInfoInternalError(void *data, const char *msg, int errnum) {
    bool *errorOccured = (bool *)data;
    *errorOccured = true;
}

TaggedPtr _Berror__message(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->message;
}
