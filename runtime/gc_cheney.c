/**
 * Here we are implementing the Cheney's algorithm as explained in
 * https://en.wikipedia.org/wiki/Cheney%27s_algorithm.
 *
 */

#include "balrt.h"

#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/mman.h>

static uint64_t DEFAULT_HEAP_HALF_SIZE = 3221225472; // 1GB
static uint64_t HEAP_HEADER_SIZE = 8;                // in bytes

uint8_t *from_space_ptr;
uint8_t *to_space_ptr;
uint8_t *alloc_ptr;
uint8_t *scan_ptr;
uint8_t *heap_limit_ptr;

typedef uint8_t *Root; // Denotes address of the heap
typedef void (*mark_roots)(Root *);
extern void get_roots(mark_roots);

void _bal_init_heap() {
    int page_size = getpagesize();
    const char *heap_env_val = getenv("BAL_HEAP");
    uint64_t heap_half_size = (heap_env_val != NULL) ? atoi(heap_env_val) : DEFAULT_HEAP_HALF_SIZE;
    // Make sure heap size is a multiple of page size
    if (heap_half_size % page_size != 0) {
        heap_half_size = ((heap_half_size / page_size) + 1) * page_size;
    }

    // Removing MAP_ANONYMOUS fails the mmap(), check this
    from_space_ptr = mmap(NULL, heap_half_size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    if (from_space_ptr == MAP_FAILED) {
        printf("Heap initialization Failed\n");
        abort();
    }
    alloc_ptr = from_space_ptr;
    heap_limit_ptr = from_space_ptr + heap_half_size;

    to_space_ptr = mmap(NULL, heap_half_size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    if (to_space_ptr == MAP_FAILED) {
        printf("Heap initialization Failed\n");
        abort();
    }
}

// argument should be the address of stack.
// i.e. 0x7fffffffdb90
// 0x7fffffffdb90 contains the address of the heap
// This content should be pointed to new location
void copy(Root* root) {
    uint64_t *heap_header = (uint64_t *)(*root - HEAP_HEADER_SIZE);
    if (*heap_header ^ 1) { // last bit is 0, no forward pointer
        // set forward pointer
    }
    **root = heap_header;
}

void collect() {
    printf("%s\n", "Collect");
    get_roots(copy);
    // get_roots needs to take a function pointer that it will call for each root found

    // get_roots() -> calls function in gc-roots, should pass rsp as parameter
    // swap from_space <-> to_space
    // should update heap_limit_ptr
}

UntypedPtr _bal_alloc(uint64_t nBytes) {
    if (nBytes % 8 != 0) {
        nBytes = ((nBytes / 8) + 1) * nBytes;
    }
    nBytes = nBytes + HEAP_HEADER_SIZE;
    if (alloc_ptr + nBytes > heap_limit_ptr) {
        collect();
    }
    if (alloc_ptr + nBytes > heap_limit_ptr) {
        abort();
    }
    UntypedPtr p = (UntypedPtr)(alloc_ptr + HEAP_HEADER_SIZE);
    alloc_ptr = alloc_ptr + nBytes;
    return p;
}
