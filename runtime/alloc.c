#include "balrt.h"
#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>

UntypedPtr _bal_alloc(uint64_t nBytes) {
    void *p = malloc(nBytes);
    if (p != 0)
        return (UntypedPtr)p;
    fprintf(stderr, "out of memory\n");
    fflush(stderr);
    abort();
}

UntypedExecPtr _bal_alloc_exec(uint64_t nBytes) {
    int protection = PROT_READ | PROT_WRITE | PROT_EXEC;
    int flags = MAP_ANONYMOUS | MAP_PRIVATE;
    void *p = mmap(NULL, nBytes, protection, flags, -1, 0);
    if (p != MAP_FAILED)
        return (UntypedExecPtr)p;
    fprintf(stderr, "failed to allocate executable memory\n");
    fflush(stderr);
    abort();
}
