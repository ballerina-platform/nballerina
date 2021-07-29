#include "stringUtils.h"

void validateStringSizeInt64(const uint64_t stringSize, const uint64_t headerSize, const uint64_t lengthInBytes) {
    uint64_t size = lengthInBytes + headerSize;
    uint64_t multiple = size / 8;
    if (size % 8  != 0) 
        multiple++;
    uint64_t expectedSize = 8 * multiple; 
    assert(expectedSize == stringSize);
}

void validateStringSizeInt(const int stringSize, const int headerSize, const int lengthInBytes) {
    uint64_t size = lengthInBytes + headerSize;
    uint64_t multiple = size / 8;
    if (size % 8  != 0) 
        multiple++;
    uint64_t expectedSize = 8 * multiple; 
    assert(expectedSize == stringSize);
}

void testLargeStringSize(){
    validateStringSizeInt64(largeStringSize(0), 16, 0);
    validateStringSizeInt64(largeStringSize(UINT64_MAX), 16, UINT64_MAX);
    for (int i = 0; i < NTESTS; i++){
        uint64_t val = rand();
        validateStringSizeInt64(largeStringSize(val), 16, val);
    }
}

void testMediumStringSize(){
    validateStringSizeInt(mediumStringSize(0), 4, 0);
    validateStringSizeInt(mediumStringSize(INT32_MAX), 4, INT32_MAX);
    for (int i = 0; i < NTESTS; i++){
        int val = rand();
        validateStringSizeInt(mediumStringSize(val), 4, val);
    }
}

HASH_DEFINE_KEY;

int main() {
    srand(1);
    testLargeStringSize();
    testMediumStringSize();
    return 0;
}