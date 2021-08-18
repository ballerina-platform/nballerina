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
#include <string.h>

#include <sys/mman.h>

static uint64_t DEFAULT_HEAP_HALF_SIZE = 3221225472; // 1GB
static uint64_t ROOT_HEADER_SIZE = 8;                // in bytes

// TODO: Try to reduce these global vars
uint8_t *from_space_ptr;
uint8_t *to_space_ptr;
uint8_t *alloc_ptr;
uint8_t *scan_ptr;
uint8_t *heap_limit_ptr;

uint64_t heap_half_size;

typedef uint8_t *Root; // Denotes address of the heap
typedef void (*mark_roots)(Root *);
extern void get_roots(mark_roots);

void _bal_init_heap() {
    int page_size = getpagesize();
    const char *heap_env_val = getenv("BAL_HEAP");
    heap_half_size = (heap_env_val != NULL) ? atoi(heap_env_val) : DEFAULT_HEAP_HALF_SIZE;
    // Make sure heap size is a multiple of page size
    if (heap_half_size % page_size != 0) {
        heap_half_size = ((heap_half_size / page_size) + 1) * page_size;
    }

    heap_half_size = 108;
    // TODO: Removing MAP_ANONYMOUS fails the mmap(), check this
    from_space_ptr = mmap(NULL, heap_half_size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    // TODO: check order and alignemt.
    if (from_space_ptr == MAP_FAILED) {
        printf("Heap initialization Failed\n");
        abort();
    }
    alloc_ptr = from_space_ptr;
    heap_limit_ptr = from_space_ptr + heap_half_size;

    to_space_ptr = mmap(NULL, heap_half_size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    // TODO: check order and alignemt.
    if (to_space_ptr == MAP_FAILED) {
        printf("Heap initialization Failed\n");
        abort();
    }
}

// If o has no forwarding address
    // o' = allocPtr
    // allocPtr = allocPtr + size(o)
    // copy the contents of o to o'
    // forwarding-address(o) = o'
// EndIf
// return forwarding-address(o)
// argument should be the address of stack which points to a location on heap.
void copy(Root *root_ptr) {
    Root old_root = *root_ptr - ROOT_HEADER_SIZE;
    uint64_t *root_header = (uint64_t *)old_root;
    uint64_t old_root_size = *root_header;
    if (old_root_size ^ 1) { // last bit is 0, no forward pointer
        Root new_root = alloc_ptr;
        old_root_size = old_root_size + ROOT_HEADER_SIZE;
        alloc_ptr = alloc_ptr + old_root_size; // heap header contains the size of object,
                                               // alloc_ptr points to next new root
        memcpy(new_root, old_root, old_root_size);
        *root_header = (uint64_t)(new_root + ROOT_HEADER_SIZE) | 1; // set header and mark it as forward pointer
    }
    *root_ptr = (Root)(*root_header ^ 1);
}

void collect() {
    printf("%s\n", "Collect");
    alloc_ptr = to_space_ptr;
    scan_ptr = to_space_ptr;

    get_roots(copy);
    
    // TODO: scan objects in the to-space

    // swap from_space <-> to_space
    uint8_t* t = from_space_ptr;
    from_space_ptr = to_space_ptr;
    to_space_ptr = t;

    // update end of the heap
    heap_limit_ptr = from_space_ptr + heap_half_size;
}

UntypedPtr _bal_alloc(uint64_t nBytes) {
    printf("nBytes : %d\n", nBytes);
    if (nBytes % 8 != 0) {
        nBytes = ((nBytes / 8) + 1) * nBytes;
    }
    *((uint64_t *)alloc_ptr) = nBytes; // header contains the size of object with out header size
    nBytes = nBytes + ROOT_HEADER_SIZE;
    if (alloc_ptr + nBytes > heap_limit_ptr) {
        collect();
    }
    if (alloc_ptr + nBytes > heap_limit_ptr) {
        abort();
    }
    UntypedPtr p = (UntypedPtr)(alloc_ptr + ROOT_HEADER_SIZE);
    alloc_ptr = alloc_ptr + nBytes;
    return p;
}
