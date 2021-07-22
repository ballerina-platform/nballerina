
#include <stdio.h>
#include "taggedptr.h"

#define INT_TAG ((uint64_t)0x3 << 56)

char *newInt(int64_t n) {
    char *ptr = malloc(sizeof(n));
    printf("Allocated %p\n", ptr);
    return pack(ptr, INT_TAG);
}

int main() {
    char *taggedPtr = newInt(5);
    printf("With tag: %p\n", taggedPtr);
    printf("Unpacked: 0x%lx (tag), %p (ptr)\n", unpackTag(taggedPtr), unpackPtr(taggedPtr));
    return 0;
}