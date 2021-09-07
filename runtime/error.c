#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "balrt.h"
#include "third-party/libbacktrace/backtrace.h"

#define INITIAL_PC_COUNT 1
#define MAX_PC_COUNT 256
#define SKIP_FROM_END 1 // This number counts from the last stack frame
#define THREAD 0
#define SUCCESS 0
#define FAIL 1

struct backtrace_state *state = NULL;

typedef struct {
    uint32_t nPCs;
    uint32_t szPCs;
    bool errorOccurred;
    PC *pcs;
} PCVector;

static void setBackTraceSimpleInternalError(void *data, const char *msg, int errnum);
static void setBackTracePCInfoInternalError(void *data, const char *msg, int errnum);
static int printBacktraceLine(void *data, PC pc, const char *filename, int lineno, const char *function);
static int updatePCVector(void *data, PC pc);
static void getPCs(PCVector *pcVector);

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    PCVector pcVector = {0, INITIAL_PC_COUNT, false};
    getPCs(&pcVector);

    uint32_t nPCs = pcVector.nPCs;
    uint64_t errStructSize = sizeof(struct Error) + sizeof(PC) * nPCs;
    ErrorPtr ep = _bal_alloc(errStructSize);
    ep->message = message;
    ep->lineNumber = lineNumber;
    ep->internalErrorOccured = pcVector.errorOccurred;
    ep->nPCs = nPCs;

    PC *pcs = pcVector.pcs;
    memcpy(ep->pcs, pcs, sizeof(PC) * nPCs);
    free(pcs);

    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

static void getPCs(PCVector *pcVector) {
    if (state == NULL) {
        state = backtrace_create_state(NULL, THREAD, NULL, NULL);
        if (state == NULL) {
            pcVector->errorOccurred = true;
            return;
        }
    }

    void *p = malloc(sizeof(PC) * INITIAL_PC_COUNT);
    if (p == NULL) {
        pcVector->errorOccurred = true;
        return;
    }
    pcVector->pcs = (PC *)p;
    backtrace_simple(state, SKIP_FROM_END, updatePCVector, setBackTraceSimpleInternalError, pcVector);
}

// Implementation of backtrace_simple_callback
static int updatePCVector(void *data, PC pc) {
    PCVector *pcVector = (PCVector *)data;
    uint32_t nPCs = pcVector->nPCs;
    uint32_t szPCs = pcVector->szPCs;
    if (nPCs == szPCs) {
        if (unlikely(szPCs == MAX_PC_COUNT)) {
            pcVector->errorOccurred = true;
            return FAIL;
        }
        szPCs = szPCs << 1;
        pcVector->szPCs = szPCs;
        void *p = realloc(pcVector->pcs, sizeof(PC) * szPCs);
        if (p == NULL) {
            pcVector->errorOccurred = true;
            return FAIL;
        }
        pcVector->pcs = (PC *)p;
    }

    pcVector->pcs[nPCs] = pc;
    pcVector->nPCs = nPCs + 1;
    return SUCCESS;
}

// Implementation of backtrace_error_callback
static void setBackTraceSimpleInternalError(void *data, const char *msg, int errnum) {
    PCVector *pcVector = (PCVector *)data;
    pcVector->errorOccurred = true;
}

void _bal_error_backtrace_print(ErrorPtr ep) {
    PC *pcs = (PC *)ep->pcs;
    uint32_t nPCs = ep->nPCs;
    bool errorOccured = ep->internalErrorOccured;
    for (uint32_t i = 0; i < nPCs; i++) {
        backtrace_pcinfo(state, pcs[i], printBacktraceLine, setBackTracePCInfoInternalError, &errorOccured);
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
static void setBackTracePCInfoInternalError(void *data, const char *msg, int errnum) {
    bool *errorOccured = (bool *)data;
    *errorOccured = true;
}

TaggedPtr _Berror__message(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->message;
}
