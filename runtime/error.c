#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "balrt.h"
#include "third-party/libbacktrace/backtrace.h"

#define INITIAL_FRAME_COUNT 1
#define MAX_FRAME_COUNT 200
#define MAX_BYTES_COUNT INT32_MAX / 10
#define INITIAL_BYTES_COUNT 8
#define BACKWARD_FRAMES_COUNT 4
#define SKIP_FROM_END 1 // This number counts from the last stack frame
#define THREAD 0

struct backtrace_state *state;

typedef struct {
    bool err;
    uint32_t nFrames;
    uint32_t szFrames;
    uint32_t nBytes;
    uint32_t szBytes;
    Frame *frames;
    char *bytes;
} Trace;

typedef struct {
    int fileOffset;
    int functionOffset;
} Offset;

void checkForSameStr(Frame *frame, uint32_t nFrames, const char *filename, const char *function, char *bytes, Offset* result) {
    int i = 1;
    bool filenameFound = false;
    bool functionFound = false;
    while (i <= nFrames && i <= BACKWARD_FRAMES_COUNT) {
        Frame *f = frame - i++;
        if (!filenameFound && strcmp(filename, bytes + f->fileOffset) == 0) {
            result->fileOffset = f->fileOffset;
            filenameFound = true;
        }
        if (!functionFound && strcmp(function, bytes + f->functionOffset) == 0) {
            result->functionOffset = f->functionOffset;
            functionFound = true;
        }
        if (filenameFound && functionFound) {
            return;
        }
    }
}

static void *memAlloc(uint64_t nBytes) {
    void *p = malloc(nBytes);
    if (p != 0)
        return p;
    fprintf(stderr, "out of memory\n");
    fflush(stderr);
    abort();    
}

static void *memReAlloc(void *ptr, uint64_t nBytes) {
    void *p = realloc(ptr, nBytes);
    if (p != 0) {
        return p;
    }
    fprintf(stderr, "out of memory\n");
    fflush(stderr);
    abort();
}

static void onError(void *data, const char *msg, int errnum) {
    fprintf(stderr, "Error : %s\n", msg);
    fflush(stderr);
    abort();
}

static int onFrame(void *data, uintptr_t pc, const char *filename, int lineno, const char *function) {
    // This check is valid if there is a posibility not to have debug info
    if (filename == NULL || function == NULL) {
        return 0;
    }
    Trace *trace = (Trace *)data;
    uint32_t nFrames = trace->nFrames;
    uint32_t szFrames = trace->szFrames;
    if (nFrames >= MAX_FRAME_COUNT) {
        trace->err = true;
        return 1;
    }
    else if (nFrames == szFrames) {
        szFrames = szFrames * 2;
        trace->szFrames = szFrames;
        void *p = realloc(trace->frames, sizeof(Frame) * szFrames);
        if (p == 0) {
            trace->err = true;
            return 1;
        }
        trace->frames = (Frame *)p;
    }

    uint32_t nBytes = trace->nBytes;
    uint32_t szBytes = trace->szBytes;
    uint64_t filenameLen = strlen(filename);
    uint64_t funcnameLen = strlen(function);
    uint32_t nBytesPerFrame = filenameLen + funcnameLen + 2;
    if (nBytes + nBytesPerFrame >= MAX_BYTES_COUNT) {
        trace->err = true;
        return 1;
    }
    else if (nBytes + nBytesPerFrame > szBytes) {
        szBytes = szBytes * 2 + nBytesPerFrame;
        trace->szBytes = szBytes;
        void *p = realloc(trace->bytes, szBytes);   
        if (p == 0) {
            trace->err = true;
            return 1;
        }
        trace->bytes = (char *)p;
    }

    Frame *frame = trace->frames + nFrames;
    frame->pc = pc;
    frame->lineno = lineno;

    Offset offset = {-1, -1};
    char *bytes = trace->bytes;
    checkForSameStr(frame, nFrames, filename, function, bytes, &offset);

    if (offset.fileOffset >= 0) {
        frame->fileOffset = offset.fileOffset;
    }
    else {
        frame->fileOffset = nBytes;
        memcpy(bytes + nBytes, filename, filenameLen);
        nBytes = nBytes + filenameLen;
        *(bytes + nBytes) = '\0';
        nBytes++;
    }

    if (offset.functionOffset >= 0) {
        frame->functionOffset = offset.functionOffset;
    } 
    else {
        frame->functionOffset = nBytes;
        memcpy(bytes + nBytes, function, funcnameLen);
        nBytes = nBytes + funcnameLen;
        *(bytes + nBytes) = '\0';
        nBytes++;
    }

    trace->nBytes = nBytes;
    trace->nFrames = nFrames + 1;

    return 0;
}

static void getBackTrace(Trace* trace) {
    state = backtrace_create_state(NULL, THREAD, onError, NULL);

    void *p = malloc(sizeof(Frame) * INITIAL_FRAME_COUNT);
    if (p == 0) {
        trace->err = true;
        return;
    }
    trace->frames = (Frame *)p;
    p = malloc(INITIAL_BYTES_COUNT);
    if (p == 0) {
        return;
    }
    trace->bytes = (char *)p;

    backtrace_full(state, SKIP_FROM_END, onFrame, onError, trace);
}

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    Trace trace = {false, 0, INITIAL_FRAME_COUNT, 0, INITIAL_BYTES_COUNT};
    getBackTrace(&trace);
    if (trace.err == true) {
        fprintf(stderr, "Error : %s\n", "Error occured when generating backtrace for error value");
        fflush(stderr);
    }
    uint32_t nFrames = trace.nFrames;
    uint32_t nBytes = trace.nBytes;

    uint64_t errStructSize = sizeof(struct Error) + sizeof(Frame) * nFrames + nBytes;
    ErrorPtr ep = _bal_alloc(errStructSize);
    ep->message = message;
    ep->lineNumber = lineNumber;
    ep->nFrames = nFrames;

    Frame *frames = trace.frames;
    char *bytes = trace.bytes;
    memcpy(ep->frames, frames, sizeof(Frame) * nFrames);
    memcpy(ep->frames + nFrames, bytes, nBytes);

    free(frames);
    free(bytes);

    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

TaggedPtr _Berror__message(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->message;
}
