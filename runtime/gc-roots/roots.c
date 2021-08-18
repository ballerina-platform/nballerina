#include "third-party-lib/libbacktrace/backtrace.h"
#include "include/api.h"

#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

#define SKIP_FROM_END 3
#define SKIP_FROM_BEGINING 4
#define FRAME_MIN_SIZE SKIP_FROM_BEGINING + 5
#define THREAD 0

statepoint_table_t* table;

void set_statepoint_table(statepoint_table_t *tb) {
    table = tb;
}

typedef struct {
    uintptr_t pc;
} Frame;

typedef struct {
    int length;
    int capacity;
    Frame *frames;
} FrameArray;

void on_error(void *vdata, const char *msg, int errnum) { printf("Error : %s\n", msg); }

int on_frame(void *data, uintptr_t pc, const char *filename, int lineno, const char *function) {
    FrameArray *frameArray = (FrameArray *)data;
    int length = frameArray->length;

    if (frameArray->capacity == 0) {
        frameArray->frames = calloc(FRAME_MIN_SIZE, sizeof(Frame));
        frameArray->capacity = FRAME_MIN_SIZE;
    } else if (length == frameArray->capacity) {
        int new_cap = frameArray->capacity * 2;
        frameArray->capacity = new_cap;
        frameArray->frames = realloc(frameArray->frames, new_cap * sizeof(Frame));
    }

    Frame *frame = frameArray->frames + length;
    frame->pc = pc + 1;
    frameArray->length = length + 1;
    return 0;
}

void get_frames(FrameArray *frameArray) {
    // TODO : check whether this can be called outside
    struct backtrace_state *state = backtrace_create_state(NULL, THREAD, on_error, NULL);

    backtrace_full(state, SKIP_FROM_END, on_frame, on_error, frameArray);
}

typedef uint8_t *Root;

void get_roots(void (*mark_roots)(Root *)) {
    FrameArray frameArray = {0, 0};
    get_frames(&frameArray);

    Frame *f = frameArray.frames;
    Frame *lastFrame = f + frameArray.length - SKIP_FROM_BEGINING;

    // 2 is used to get the rbp of _bal_alloc
    // 16 is the offset for function
    uint8_t *rsp = (uint8_t*)__builtin_frame_address(2) + 16;

    // Find roots using stack map
    // 1. Iterate over frames and consider one frame_address here the frame corresponds to one call site
    // 2. Lookup the table for frame information for given frame address
    // 3. Interate over records of that frame and find heap references(roots)
    for (; f < lastFrame; f++) {
        printf("f->pc : %p\n", f->pc);
        frame_info_t* frame = lookup_return_address(table, f->pc);
        for (size_t p = 0; p < frame->numSlots; p++) {
            pointer_slot_t* psl = frame->slots + p;
            Root* ptr = (Root*)(rsp + psl->offset);
            printf("root taken from stack map : %p\n", *ptr);
            Root root = *ptr;
            // For testing values
            printf("actual val -16 : %p\n", *(uint64_t *)(root - 16));
            printf("actual val -8: %d\n", *(uint64_t *)(root - 8));
            printf("actual val 0 : %d\n", *(uint64_t *)root);
            printf("actual val +8 : %d\n", *(uint64_t *)(root + 8));
            printf("actual val +16 : %p\n", *(uint64_t *)(root + 16));
            mark_roots(ptr);
        }
        // TODO: check whether we remove libbacktrace
        rsp = rsp + frame->frameSize + 8;
    }
    free(frameArray.frames);
}