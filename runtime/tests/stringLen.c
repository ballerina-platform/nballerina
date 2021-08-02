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

void validateTaggedStringLength(const TaggedPtr ptr, const uint64_t lengthInBytes, const uint64_t lengthInCodePoints) {
    const StringLength actual = taggedStringLength(ptr);
    assert(lengthInBytes == actual.nBytes);
    assert(lengthInCodePoints == actual.nCodePoints);
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

TaggedPtr createMediumString(uint16_t lengthInBytes, uint16_t lengthInCodePoints) {
    int size = mediumStringSize(lengthInBytes);
    UntypedPtr p = _bal_alloc(size);
    ((GC uint64_t *)((GC char *)p + size))[-1] = 0;
    MediumStringPtr ptr = p;
    ptr->lengthInBytes = lengthInBytes;
    ptr->lengthInCodePoints = lengthInCodePoints;
    TaggedPtr tPtr = ptrAddFlags(ptr, (uint64_t)TAG_STRING << TAG_SHIFT);
    return tPtr;
}

TaggedPtr createLargeString(int64_t lengthInBytes, int64_t lengthInCodePoints) {
    int size = largeStringSize(lengthInBytes);
    UntypedPtr p = _bal_alloc(size);
    ((GC uint64_t *)((GC char *)p + size))[-1] = 0;
    LargeStringPtr ptr = p;
    ptr->lengthInBytes = lengthInBytes;
    ptr->lengthInCodePoints = lengthInCodePoints;
    TaggedPtr tPtr = ptrAddFlags(ptr, ((uint64_t)TAG_STRING << TAG_SHIFT) | STRING_LARGE_FLAG);
    return tPtr;
}

void testTaggedLargeStringLength() {
    validateTaggedStringLength(createLargeString(7, 7), 7, 7);
    validateTaggedStringLength(createLargeString(INT64_MAX, INT64_MAX), INT64_MAX, INT64_MAX);
    for (int i = 0; i < NTESTS; i++)
    {
        int64_t byteLen = rand();
        int64_t codePointLen = rand();
        validateTaggedStringLength(createLargeString(byteLen, codePointLen), byteLen, codePointLen);
    }
}

void testTaggedMediumStringLength() {
    validateTaggedStringLength(createMediumString(7, 7), 7, 7);
    validateTaggedStringLength(createMediumString(UINT16_MAX, UINT16_MAX), UINT16_MAX, UINT16_MAX);
    for (int i = 0; i < NTESTS; i++)
    {
        int64_t byteLen = rand() % UINT16_MAX;
        int64_t codePointLen = rand() % UINT16_MAX;
        validateTaggedStringLength(createMediumString(byteLen, codePointLen), byteLen, codePointLen);
    }
}

HASH_DEFINE_KEY;

int main() {
    srand(1);
    testLargeStringSize();
    testMediumStringSize();
    testTaggedLargeStringLength();
    testTaggedMediumStringLength();
    return 0;
}
