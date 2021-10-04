#include "third-party/libbacktrace/backtrace.h"
#include "third-party/llvm-statepoint-utils/include/api.h"
#include "balrt.h"

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

// TODO: check the method name
void get_roots(void (*mark_roots)(Root *, Root), uint8_t* rsp) {
    FrameArray frameArray = {0, 0};
    get_frames(&frameArray);

    Frame *f = frameArray.frames;
    Frame *lastFrame = f + frameArray.length - SKIP_FROM_BEGINING;
    // Find roots using stack map
    // Here the return address or program counter(pc) means the next address of caller's
    // call instruction.
    // If bar() calls foo(), 4011f1 is considered are return address or pc.
    //
    // 4011ec:	callq  401290 <foo>
    // 4011f1:	mov    %rax,%rbx
    //
    // 1. Iterate over frames taken from backtrace
    // 2. Lookup the table for frame information for given pc
    // 3. Interate over locations of that frame and find heap references(roots)
    for (; f < lastFrame; f++) {
        frame_info_t* frame = lookup_return_address(table, f->pc);
        // printf("f->pc : %p\n", f->pc);
        if (frame == NULL) {
            // We have to make sure that all the functions in all possible calling paths to
            // _bal_alloc() method, have statepoints.
            // Otherwise we will loose the track of roots.
            fprintf(stderr, "frame cannot be null\n");
            abort();
        }
        // printf("frame->numSlots : %d\n", frame->numSlots);
        // printf("BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\n");
        for (size_t p = 0; p < frame->numSlots; p++) {
            // printf("\nCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC : %p\n", rsp);
            
            pointer_slot_t* psl = frame->slots + p;
            // printf("kind : %d\n", psl->kind);
            // printf("slotSize : %d\n", psl->slotSize);
            // printf("offset : %d\n", psl->offset);

            // TODO: Check whether this loop can be arranged properly
            for (size_t i = 0; i < psl->slotSize; i = i + sizeof(void *)) {
                uint64_t offset = psl->offset + i;
                Root *root_ptr = (Root *)(rsp + offset);
                Root root = *root_ptr;
                // printf("root x : %p\n", root);
                int tag = getTag((TaggedPtr)root);
                switch (tag & UT_MASK)
                {
                case 0: // Raw pointer
                    mark_roots(root_ptr, NULL);
                    break;
                case TAG_INT:
                    // TODO: handle if integer is heap allocated
                    break;
                case TAG_LIST_RW:
                    mark_roots(root_ptr, (Root)taggedToPtr((TaggedPtr)root));
                    *root_ptr = (Root)ptrAddShiftedTag((UntypedPtr)*root_ptr, ((uint64_t)tag) << TAG_SHIFT);
                    break;
                default:
                    fprintf(stderr, "2 unknown tag %d\n", tag);
                    abort();
                }
            }
        }
        // TODO: check whether we remove libbacktrace
        rsp = rsp + frame->frameSize + 8;
    }
    free(frameArray.frames);
}