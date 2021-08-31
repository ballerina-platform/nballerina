#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "balrt.h"
#include "third-party/libbacktrace/backtrace.h"

#define INITIAL_FRAME_COUNT 1
#define MAX_FRAME_COUNT 200
#define MAX_BYTES_COUNT INT32_MAX
#define INITIAL_BYTES_COUNT 8
#define SKIP_FROM_END 1 // This number counts from the last stack frame
#define THREAD 0

typedef struct {
    uint32_t nFrames;
    uint32_t cFrames;
    uint32_t nBytes;
    uint32_t cBytes;
    Frame *frames;
    char *bytes;
} FramesInfo;

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

static void on_error(void *data, const char *msg, int errnum) { 
    fprintf(stderr, "Error : %s\n", msg);
    fflush(stderr);
    abort();
}

static int on_frame(void *data, uintptr_t pc, const char *filename, int lineno, const char *function) {
    // This check is valid if there is a posibility not to have debug info
    if (filename == NULL || function == NULL) {
        return 0;
    }
    FramesInfo *info = (FramesInfo *)data;
    uint32_t nFrames = info->nFrames;
    uint32_t cFrames = info->cFrames;
    if (nFrames >= MAX_FRAME_COUNT) {
        fprintf(stderr, "reach maximum frame count\n");
        fflush(stderr);
        abort();
    }
    else if (nFrames == cFrames) {
        cFrames = cFrames * 2;
        info->cFrames = cFrames;
        info->frames = (void *)memReAlloc(info->frames, sizeof(Frame) * cFrames);
    }

    uint32_t nBytes = info->nBytes;
    uint32_t cBytes = info->cBytes;
    uint64_t filenameLen = strlen(filename);
    uint64_t funcNameLen = strlen(function);
    uint32_t nBytesPerFrame = filenameLen + funcNameLen + 2;
    if (nBytes + nBytesPerFrame >= MAX_BYTES_COUNT) {
        fprintf(stderr, "reach maximum character array length\n");
        fflush(stderr);
        abort();
    }
    else if (nBytes + nBytesPerFrame > cBytes) {
        cBytes = cBytes * 2 + nBytesPerFrame;
        info->cBytes = cBytes;
        info->bytes = (void *)memReAlloc(info->bytes, cBytes);   
    }

    Frame *frame = info->frames + nFrames;
    frame->pc = pc;
    frame->lineno = lineno;

    char *bytes = info->bytes;
    frame->fileOffset = nBytes;
    memcpy(bytes + nBytes, filename, filenameLen);
    nBytes = nBytes + filenameLen;
    *(bytes + nBytes) = '\0';
    nBytes++;

    frame->functionOffset = nBytes;
    memcpy(bytes + nBytes, function, funcNameLen);
    nBytes = nBytes + funcNameLen;
    *(bytes + nBytes) = '\0';
    nBytes++;

    info->nBytes = nBytes;
    info->nFrames = nFrames + 1;

    return 0;
}

static void getFramesInfo(FramesInfo* info) {
    struct backtrace_state *state = backtrace_create_state(NULL, THREAD, on_error, NULL);

    info->frames = (Frame *)memAlloc(sizeof(Frame) * INITIAL_FRAME_COUNT);
    info->bytes = (char *)memAlloc(INITIAL_BYTES_COUNT);

    backtrace_full(state, SKIP_FROM_END, on_frame, on_error, info);
}

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    FramesInfo info = {0, INITIAL_FRAME_COUNT, 0, INITIAL_BYTES_COUNT};
    getFramesInfo(&info);
    uint32_t nFrames = info.nFrames;
    uint32_t nBytes = info.nBytes;

    uint64_t errStructSize = sizeof(struct Error) + sizeof(Frame) * nFrames + nBytes;
    ErrorPtr ep = _bal_alloc(errStructSize);
    ep->message = message;
    ep->lineNumber = lineNumber;
    ep->nFrames = nFrames;

    Frame *frames = info.frames;
    char *bytes = info.bytes;
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
