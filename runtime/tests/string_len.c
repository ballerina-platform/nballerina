#include "string_utils.h"

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

void testTaggedImmeidateStringLength() {
	// test ASCII
	validateTaggedStringLength(bitsToTaggedPtr(0x2AFFFFFFFFFFFFFF), 0, 0); // ""
	validateTaggedStringLength(bitsToTaggedPtr(0x2AFFFFFFFFFF4142), 2, 2); // "BA"
	validateTaggedStringLength(bitsToTaggedPtr(0x2AFFFFFFFF613223), 3, 3); // "#2a"
	validateTaggedStringLength(bitsToTaggedPtr(0x2AFFFFFF256C6420), 4, 4); // " dl%"
	validateTaggedStringLength(bitsToTaggedPtr(0x2AFFFF6162606364), 5, 5); // "cd`ba"
	validateTaggedStringLength(bitsToTaggedPtr(0x2AFF2A2625242C3F), 6, 6); // "?,$%&*"
	validateTaggedStringLength(bitsToTaggedPtr(0x2A61626364656667), 7, 7); // "gfedcab"
	// testUnicode 

	validateTaggedStringLength(bitsToTaggedPtr(0x2AFFFFFFFFFFA2C2), 2, 1); // "¢"
	validateTaggedStringLength(bitsToTaggedPtr(0x2AFFFFFFFF9E99E2), 3, 1); // "♞"
	validateTaggedStringLength(bitsToTaggedPtr(0x2AFFFFFF97A49FF0), 4, 1); // "🤗"
	validateTaggedStringLength(bitsToTaggedPtr(0x2AFFFFFF90A69FF0), 4, 1); // "🦀"
}

HASH_DEFINE_KEY;

int main() {
    srand(1);
    testLargeStringSize();
    testMediumStringSize();
    testTaggedLargeStringLength();
    testTaggedMediumStringLength();
    testTaggedImmeidateStringLength();
    return 0;
}
