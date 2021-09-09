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

// The reason to pick these negative numbers is that 
// the libstacktrace already has error codes starting from -1
#define NO_ERROR -2
#define EXCEEDS_MAX_PC_COUNT -3
#define NOT_ENOUGH_MEMORY_AVAILABLE -4

struct backtrace_state *state = NULL;

typedef struct {
    int errorCode;
    char *errorMessage;
} InternalError;

typedef struct {
    uint32_t nPCs;
    uint32_t szPCs;
    int errorCode;
    char *errorMessage;
    PC *pcs;
} SimpleBacktrace;

static void setBacktraceInternalError(void *data, const char *msg, int errnum);
static void setBacktracePCInfoInternalError(void *data, const char *msg, int errnum);
static int printBacktraceLine(void *data, PC pc, const char *filename, int lineno, const char *function);
static int setPC(void *data, PC pc);
static void getPCs(SimpleBacktrace *simpleBacktrace);

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    SimpleBacktrace simpleBacktrace = {0, INITIAL_PC_COUNT, NO_ERROR};
    void *p = malloc(sizeof(PC) * INITIAL_PC_COUNT);
    if (p == NULL) {
        simpleBacktrace.errorCode = NOT_ENOUGH_MEMORY_AVAILABLE;
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
    ep->internalErrorCode = simpleBacktrace.errorCode;

    if (p != NULL) {
        ep->internalErrorMessage = simpleBacktrace.errorMessage;
        ep->nPCs = nPCs;
        PC *pcs = simpleBacktrace.pcs;
        memcpy(ep->pcs, pcs, sizeof(PC) * nPCs);
        free(pcs);
    }
    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

static void getPCs(SimpleBacktrace *simpleBacktrace) {
    if (state == NULL) {
        state = backtrace_create_state(NULL, THREAD, setBacktraceInternalError, simpleBacktrace);
        if (state == NULL) {
            return;
        }
    }
    backtrace_simple(state, 0, setPC, setBacktraceInternalError, simpleBacktrace);
}

// Implementation of backtrace_simple_callback
static int setPC(void *data, PC pc) {
    SimpleBacktrace *simpleBacktrace = data;
    uint32_t nPCs = simpleBacktrace->nPCs;
    uint32_t szPCs = simpleBacktrace->szPCs;
    if (nPCs == szPCs) {
        if (unlikely(szPCs == MAX_PC_COUNT)) {
            simpleBacktrace->errorCode = EXCEEDS_MAX_PC_COUNT;
            return FAIL;
        }
        szPCs = szPCs << 1;
        simpleBacktrace->szPCs = szPCs;
        void *p = realloc(simpleBacktrace->pcs, sizeof(PC) * szPCs);
        if (p == NULL) {
            simpleBacktrace->errorCode = NOT_ENOUGH_MEMORY_AVAILABLE;
            return FAIL;
        }
        simpleBacktrace->pcs = p;
    }

    simpleBacktrace->pcs[nPCs] = pc;
    simpleBacktrace->nPCs = nPCs + 1;
    return SUCCESS;
}

// Implementation of backtrace_error_callback
static void setBacktraceInternalError(void *data, const char *msg, int errnum) {
    SimpleBacktrace *simpleBacktrace = data;
    // the error that is created first is tracked
    if (simpleBacktrace->errorCode != NO_ERROR) {
        return;
    }
    simpleBacktrace->errorCode = errnum;
    uint64_t messageLength = strlen(msg);
    simpleBacktrace->errorMessage = malloc(messageLength);
    if (simpleBacktrace->errorMessage == NULL) {
        return;
    }
    memcpy(simpleBacktrace->errorMessage, msg, messageLength);
}

void _bal_error_backtrace_print(ErrorPtr ep) {
    GC PC *pcs = ep->pcs;
    uint32_t nPCs = ep->nPCs;
    InternalError internalError = {ep->internalErrorCode, ep->internalErrorMessage};
    for (uint32_t i = 0; i < nPCs; i++) {
        backtrace_pcinfo(state, pcs[i], printBacktraceLine, setBacktracePCInfoInternalError, &internalError);
    }
    ep->internalErrorCode = internalError.errorCode;
    ep->internalErrorMessage = internalError.errorMessage;

    int errorCode = ep->internalErrorCode;
    if (errorCode == NO_ERROR) {
        return;
    }
    else if (errorCode == EXCEEDS_MAX_PC_COUNT) {
        fputs("...\n", stderr);
        fflush(stderr);
        return;
    }
    else if (errorCode == NOT_ENOUGH_MEMORY_AVAILABLE) {
        fputs("not enough memory available\n", stderr);
        fflush(stderr);
        return;
    }
    else {
        fputs("libbacktrace", stderr);
        if (ep->internalErrorMessage != NULL) {
            fprintf(stderr, ": %s", ep->internalErrorMessage);
        }
        if (errorCode > 0) {
            fprintf (stderr, ": %s", strerror(errorCode));
        }
        fputc('\n', stderr);
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
    InternalError *internalError = data;
    // the error that is created first is tracked
    if (internalError->errorCode != NO_ERROR) {
        return;
    }
    internalError->errorCode = errnum;
    uint64_t messageLength = strlen(msg);
    internalError->errorMessage = malloc(messageLength);
    if (internalError->errorMessage == NULL) {
        return;
    }
    memcpy(internalError->errorMessage, msg, messageLength);
}

TaggedPtr _Berror__message(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->message;
}
