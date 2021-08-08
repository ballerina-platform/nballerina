#include "test_utils.h"

void validateBitsToTaggedPtrAndBack(uint64_t bits) {
    TaggedPtr ptr = bitsToTaggedPtr(bits);
    uint64_t currentBits = taggedPtrBits(ptr);
    assert((bits ^ currentBits) == 0);
}

void testBitsToTaggedPtrAndBack() {
    for (int i = 0; i < NTESTS; i++) {
        validateBitsToTaggedPtrAndBack(rand());
    }
    validateBitsToTaggedPtrAndBack(0);
    validateBitsToTaggedPtrAndBack(UINT64_MAX);
}

void testGetTag() {
    for (uint64_t tag=0; tag < UINT8_MAX; tag++) {
        uint64_t val = tag << 56;
        TaggedPtr ptr = bitsToTaggedPtr(val);
        assert(getTag(ptr) == tag);
    }
}

void testTaggedToBoolean() {
    uint64_t tag = TAG_BOOLEAN;
    uint64_t t = (tag << TAG_SHIFT) | 1;
    TaggedPtr tPtr = bitsToTaggedPtr(t);
    uint64_t f = (tag << TAG_SHIFT) | 0;
    TaggedPtr fPtr = bitsToTaggedPtr(f);
    assert(taggedToBoolean(tPtr) == 1);
    assert(taggedToBoolean(fPtr) == 0);
}

void testAddFlags() {
    for (uint64_t flag=0; flag < UINT8_MAX; flag++) {
        uint64_t bits = 0;
        TaggedPtr tPtr = bitsToTaggedPtr(bits);
        TaggedPtr flagedPtr = ptrAddFlags(taggedToPtr(tPtr), (flag << TAG_SHIFT));
        assert(getTag(flagedPtr) == flag);
    }
}

void testTaggedToInt() {
    // int on stack
    for(int64_t i=0; i <= NTESTS; i ++) {
        int64_t val = rand();
        TaggedPtr ptr = bitsToTaggedPtr(val);
        int64_t prtVal = taggedToInt(ptr); //? work only with positive values
        assert(prtVal == val);
    }
    // int on heap
    int64_t** addrs = malloc(sizeof(int64_t*) * NTESTS); 
    for(int64_t i=0; i <= NTESTS; i ++) {
        int64_t* val = malloc(sizeof(int64_t));
	int expectedValue = rand();
        *val = expectedValue;
        uint64_t addr = (uint64_t) val;
        addr = addr | ((uint64_t)FLAG_INT_ON_HEAP << TAG_SHIFT);
        TaggedPtr ptr = bitsToTaggedPtr(addr);
        uint64_t ptrVal = taggedToInt(ptr);
        assert(ptrVal == expectedValue);
        //to prevent reusing same address for each test delay deallocation
        addrs[i] = val;
    }
    for (int i = 0; i < NTESTS; i++)
    {
        free(addrs[i]);
    }
    free(addrs);
}

int main() {
    testBitsToTaggedPtrAndBack();
    testGetTag();
    testTaggedToBoolean();
    testAddFlags();
    testTaggedToInt();
    return 0;
}
