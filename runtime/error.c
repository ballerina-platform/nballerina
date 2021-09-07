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
    PC *pcs;
} PCVector;

static void onError(void *data, const char *msg, int errnum);
static int onFrame(void *data, PC pc, const char *filename, int lineno, const char *function);
static int onPC(void *data, PC pc);
static int getPCs(PCVector *trace);

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    PCVector trace = {0, INITIAL_PC_COUNT};
    int err = getPCs(&trace);
    if (err) {
        fprintf(stdout, "%s\n", "Error occured when getting backtrace for error value");
        fflush(stdout);
    }
    uint32_t nPCs = trace.nPCs;

    uint64_t errStructSize = sizeof(struct Error) + sizeof(PC) * nPCs;
    ErrorPtr ep = _bal_alloc(errStructSize);
    ep->message = message;
    ep->lineNumber = lineNumber;
    ep->nPCs = nPCs;

    PC *pcs = trace.pcs;
    memcpy(ep->pcs, pcs, sizeof(PC) * nPCs);
    free(pcs);

    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

static int getPCs(PCVector *pcVector) {
    if (state == NULL) {
        state = backtrace_create_state(NULL, THREAD, onError, NULL);
        if (state == NULL) {
            return FAIL;
        }
    }

    void *p = malloc(sizeof(PC) * INITIAL_PC_COUNT);
    if (p == NULL) {
        return FAIL;
    }
    pcVector->pcs = (PC *)p;
    return backtrace_simple(state, SKIP_FROM_END, onPC, onError, pcVector);
}

static int onPC(void *data, PC pc) {
    PCVector *pcVector = (PCVector *)data;
    uint32_t nPCs = pcVector->nPCs;
    uint32_t szPCs = pcVector->szPCs;
    if (nPCs == szPCs) {
        if (unlikely(szPCs == MAX_PC_COUNT)) {
            return FAIL;
        }
        szPCs = szPCs << 1;
        pcVector->szPCs = szPCs;
        void *p = realloc(pcVector->pcs, sizeof(PC) * szPCs);
        if (p == NULL) {
            return FAIL;
        }
        pcVector->pcs = (PC *)p;
    }

    pcVector->pcs[nPCs] = pc;
    pcVector->nPCs = nPCs + 1;
    return SUCCESS;
}

void _bal_error_backtrace_print(ErrorPtr ep) {
    PC *pcs = (PC *)ep->pcs;
    uint32_t nPCs = ep->nPCs;
    for (uint32_t i = 0; i < nPCs; i++) {
        backtrace_pcinfo(state, pcs[i], onFrame, onError, NULL);
    }
}

static int onFrame(void *data, PC pc, const char *filename, int lineno, const char *function) {
    if (function == NULL || filename == NULL) {
        return SUCCESS;
    }

    fprintf(stderr, "%s", function);
    fprintf(stderr, " %s", filename);
    fputs(":", stderr);
    fprintf(stderr, "%" PRIi32, lineno);
    putc('\n', stderr);
    fflush(stderr);
    return SUCCESS;
}

static void onError(void *data, const char *msg, int errnum) {
    fprintf(stdout, "Error : libbacktrace : %s\n", msg);
    fflush(stdout);
}

TaggedPtr _Berror__message(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->message;
}
