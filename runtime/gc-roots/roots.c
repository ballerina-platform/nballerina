#include "third-party-lib/libbacktrace/backtrace.h"
#include "include/api.h"

#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

#define SKIP_FROM_END 2 // skip : print_backtrace, mark_roots, call_mark_roots, dummy_func
#define SKIP_FROM_BEGINING 4 // skip : main, ...
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

void get_roots() {
    FrameArray frameArray = {0, 0};
    get_frames(&frameArray);

    Frame *f = frameArray.frames;
    Frame *lastFrame = f + frameArray.length - SKIP_FROM_BEGINING;

    // Find roots using stack map
    // 1. Iterate over frames and consider one frame_address here the frame corresponds to one call site
    // 2. Lookup the table for frame information for given frame address
    // 3. Interate over records of that frame and find heap references(roots)
    for (; f < lastFrame; f++) {
        printf("%p\n", f->pc);
    }
    free(frameArray.frames);
}