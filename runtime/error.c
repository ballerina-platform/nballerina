#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "balrt.h"
#include "third-party/libbacktrace/backtrace.h"

#define MIN_FRAME_COUNT 2
#define SKIP_FROM_END 1 // This number counts from the last stack frame
#define THREAD 0

typedef struct {
    uint32_t nFrames;
    uint32_t capacityOfFrames;
    uint32_t nBytes;
    uint32_t capacityOfBytes;
    Frame frames[];
} FramesInfo;

void on_error(void *vdata, const char *msg, int errnum) { printf("Error : %s\n", msg); }

int on_frame(void *data, uintptr_t pc, const char *filename, int lineno, const char *function) {
    // This check is valid if there is a posibility not to have debug info
    if (filename == NULL || function == NULL)
    {
        return 0;
    }

    FramesInfo *framesInfo = (FramesInfo *)data;
    Frame *frames = framesInfo->frames;
    uint32_t nFrames = framesInfo->nFrames;
    uint32_t capacityOfFrames = framesInfo->capacityOfFrames;
    uint32_t nBytes = framesInfo->nBytes;
    uint32_t capacityOfBytes = framesInfo->capacityOfBytes;

    uint64_t filenameLen = strlen(filename);
    uint64_t funcLen = strlen(function);

    if (nFrames == capacityOfFrames || (nBytes + filenameLen + funcLen + 2) >= capacityOfBytes)
    {
        // The current total memory size of bytes array and frames array is multiplied by two.
        // New allocation should be devided equally between bytes array and frames array.
        uint32_t newSize = sizeof(FramesInfo) + ((capacityOfFrames * sizeof(Frame) + capacityOfBytes) << 1);
        framesInfo = realloc(framesInfo, newSize);

        uint32_t newCapacityOfFrames = capacityOfFrames << 1;
        memcpy(frames + newCapacityOfFrames, frames + capacityOfFrames, nBytes);
        framesInfo->capacityOfFrames = newCapacityOfFrames;
        framesInfo->capacityOfBytes = capacityOfBytes << 1;
        capacityOfFrames = newCapacityOfFrames;
    }

    Frame *frame = frames + nFrames;
    frame->pc = pc;
    frame->lineno = lineno;

    char *bytes = (char *)(frames + capacityOfFrames) + nBytes;

    memcpy(bytes, filename, filenameLen);
    frame->fileOffset = nBytes;
    bytes = bytes + filenameLen;
    nBytes = nBytes + filenameLen;
    *bytes = '\0';
    bytes++;
    nBytes++;

    memcpy(bytes, function, funcLen);
    frame->functionOffset = nBytes;
    bytes = bytes + funcLen;
    nBytes = nBytes + funcLen;
    *bytes = '\0';
    bytes++;
    nBytes++;

    framesInfo->nBytes = nBytes;
    framesInfo->nFrames = nFrames + 1;

    return 0;
}

FramesInfo *getFramesInfo() {
    struct backtrace_state *state = backtrace_create_state(NULL, THREAD, on_error, NULL);

    // The memory size of bytes array and frames array are equal
    // Therefore minimum frame size is multiplied by 2
    FramesInfo *framesInfo = malloc(sizeof(FramesInfo) + MIN_FRAME_COUNT * sizeof(Frame) * 2);
    framesInfo->capacityOfFrames = MIN_FRAME_COUNT;
    framesInfo->nFrames = 0;
    framesInfo->capacityOfBytes = MIN_FRAME_COUNT * sizeof(Frame);
    framesInfo->nBytes = 0;

    backtrace_full(state, SKIP_FROM_END, on_frame, on_error, framesInfo);
    return framesInfo;
}

TaggedPtr _bal_error_construct(TaggedPtr message, int64_t lineNumber) {
    FramesInfo *framesInfo = getFramesInfo();
    uint32_t nFrames = framesInfo->nFrames;
    uint32_t nBytes = framesInfo->nBytes;
    Frame *frames = framesInfo->frames;

    uint64_t errStructSize = sizeof(struct Error) + sizeof(Frame) * nFrames + nBytes;
    ErrorPtr ep = _bal_alloc(errStructSize);

    ep->message = message;
    ep->lineNumber = lineNumber;
    ep->nFrames = nFrames;
    // Copy the frames
    memcpy(ep->frames, frames, sizeof(Frame) * nFrames);
    // Copy bytes
    memcpy(ep->frames + nFrames, frames + framesInfo->capacityOfFrames, nBytes);
    free(framesInfo);

    return ptrAddFlags(ep, (uint64_t)TAG_ERROR << TAG_SHIFT);
}

TaggedPtr _Berror__message(TaggedPtr error) {
    ErrorPtr ep = taggedToPtr(error);
    return ep->message;
}
