#include "string_utils.h"

ListDesc DESC_INT = {10,
                     _bal_list_int_array_get_tagged,
                     _bal_list_int_array_set_tagged,
                     _bal_list_int_array_get_int,
                     _bal_list_int_array_set_int,
                     NULL,
                     _bal_list_int_array_set_float,
                     BITSET_MEMBER_TYPE(1 << TAG_INT)};

ListDesc DESC_STRING = {120,
                        _bal_list_generic_get_tagged,
                        _bal_list_generic_set_tagged,
                        _bal_list_generic_get_int,
                        _bal_list_generic_set_int,
                        _bal_list_generic_get_float,
                        _bal_list_generic_set_float,
                        BITSET_MEMBER_TYPE(1 << TAG_STRING)};

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
        _bal_list_generic_set_tagged(taggedLp, i, strs[i]);
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
