#include "string_utils.h"

ListDesc DESC_INT = { 0, _bal_list_get, _bal_list_set, 129 };
ListDesc DESC_STRING = { 1, _bal_list_get, _bal_list_set, 1025 };

HASH_DEFINE_KEY;

void testListConstructEmpty() {
    ListPtr lp = _bal_list_construct(&DESC_INT, 0);
    assert(lp->desc == &DESC_INT);
    assert(lp->tpArray.length == 0);
    assert(lp->tpArray.capacity == 0);
    assert(lp->tpArray.members == NULL);
}

void testListConstruct() {
    int64_t capacity = 10;
    ListPtr lp = _bal_list_construct(&DESC_INT, capacity);
    assert(lp->desc == &DESC_INT);
    assert(lp->tpArray.length == 0);
    assert(lp->tpArray.capacity == capacity);
    assert(lp->tpArray.members != NULL);
}

void testListSet(int64_t capacity, int64_t length) {
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * length);
    int i;
    for (i = 0; i < length; i++) {
        strs[i] = randSmallString();
    }

    ListPtr lp = _bal_list_construct(&DESC_STRING, capacity);
    assert(lp->tpArray.capacity == capacity);
    TaggedPtr taggedLp = ptrAddFlags(lp, ((uint64_t)TAG_LIST_RW << TAG_SHIFT)|EXACT_FLAG);
    for (i = 0; i < length; i++) {
        _bal_list_set(taggedLp, i, strs[i]);
    }

    assert(lp->desc == &DESC_STRING);
    assert(lp->tpArray.length == length);
    assert(lp->tpArray.capacity >= length);
    GC TaggedPtr *members = lp->tpArray.members;
    for (i = 0; i < length; i++) {
        assert(members[i] == strs[i]);
    }
}

int main() {
    testListConstructEmpty();
    testListConstruct();
    testListSet(4, 4);
    testListSet(8, 5);
    testListSet(3, 6);
    return 0;
}
