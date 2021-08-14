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

static uint64_t DEFAULT_HEAP_HALF_SIZE = 1073741824; // 1GB
static uint64_t HEAP_HEADER_SIZE = 8; // in bytes

uint8_t *from_space_ptr;
uint8_t *to_space_ptr;
uint8_t *alloc_ptr;
uint8_t *heap_limit_ptr;

void _bal_init_heap()
{
    int page_size = getpagesize();
    const char *heap_env = getenv("BAL_HEAP");
    uint64_t heap_half_size = (heap_env != NULL) ? atoi(heap_env) : DEFAULT_HEAP_HALF_SIZE;
    // Make sure heap size is a multiple of page size
    heap_half_size = (heap_half_size / page_size) * page_size;

    // Removing MAP_ANONYMOUS fails the mmap(), check this
    from_space_ptr = mmap(NULL, heap_half_size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    if (from_space_ptr == MAP_FAILED)
    {
        printf("Heap initialization Failed\n");
        abort();
    }
    alloc_ptr = from_space_ptr;
    heap_limit_ptr = from_space_ptr + heap_half_size;

    to_space_ptr = mmap(NULL, heap_half_size, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, 0, 0);
    if (to_space_ptr == MAP_FAILED)
    {
        printf("Heap initialization Failed\n");
        abort();
    }
}

void collect()
{
    printf("%s\n", "Collect");
}

UntypedPtr _bal_alloc(uint64_t nBytes)
{
    nBytes = nBytes + HEAP_HEADER_SIZE;

    if (alloc_ptr + nBytes > heap_limit_ptr)
    {
        collect();
    }
    if (alloc_ptr + nBytes > heap_limit_ptr)
    {
        abort();
    }
    UntypedPtr p = (UntypedPtr) (alloc_ptr + HEAP_HEADER_SIZE);
    alloc_ptr = alloc_ptr + nBytes;
    return p;
}
