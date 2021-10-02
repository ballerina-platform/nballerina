#include "string_utils.h"

void testStringHash() {
    for (int i = 0; i < NTESTS*NTESTS; i++)
        checkSmallStringHash(randSmallString());
    for (int i = 0; i < NTESTS; i++)
       checkMediumStringHash(randMediumString());
}


void testRandMapping(int len) {
    TaggedPtr *k = malloc(len * sizeof(TaggedPtr));
    TaggedPtr *v = malloc(len * sizeof(TaggedPtr));

    for (int i = 0; i < len; i++) {
        k[i] = randSmallString();
        v[i] = randSmallString();
    }
    static MappingDesc inherentType = { 1 << TAG_STRING };
    TaggedPtr m = _bal_mapping_construct(&inherentType, 0);
    for (int i = 0; i < len; i++) {
        bool dup = _bal_mapping_get(m, k[i]) != 0;
        _bal_mapping_set(m, k[i], v[i]);
        if (dup) {
            k[i] = 0;
        }
        else {
            k[i] = copyString(k[i]);
        }
    }
    for (int i = 0; i < len; i++) {
        if (k[i] != 0)
            assert(_bal_mapping_get(m, k[i]) == v[i]);
    }
}

void testMapping() {
    for (int i = 0; i < NTESTS; i++)
        testRandMapping(rand() & 2047);
    testRandMapping(65534);
    testRandMapping(65535);
    testRandMapping(65536);
    testRandMapping(65537);
    testRandMapping(500000);
}

HASH_DEFINE_KEY;

int main() {
    srand(1);
    testStringHash();
    testMapping();
    return 0;
}
