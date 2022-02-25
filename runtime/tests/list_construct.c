#include "string_utils.h"
#include "list_utils.h"

ListDesc DESC_INT = LIST_DESC_INIT_INT_ARRAY(10);
ListDesc DESC_STRING = LIST_DESC_INIT_GENERIC(120, 1 << TAG_STRING);

HASH_DEFINE_KEY;

void testListConstructEmpty() {
    ListPtr lp = _bal_list_construct_8(&DESC_INT, 0);
    assert(lp->desc == &DESC_INT);
    assert(lp->tpArray.length == 0);
    assert(lp->tpArray.capacity == 0);
    assert(lp->tpArray.members == NULL);
}

void testListConstruct() {
    int64_t capacity = 10;
    ListPtr lp = _bal_list_construct_8(&DESC_INT, capacity);
    assert(lp->desc == &DESC_INT);
    assert(lp->tpArray.length == 0);
    assert(lp->tpArray.capacity == capacity);
    assert(lp->tpArray.members != NULL);
}

bool isByte(struct UniformSubtype * ut, TaggedPtr tp) {
    if ((getTag(tp) & UT_MASK) != TAG_INT) {
        return false;
    }
    int64_t i = taggedToInt(tp);
    return i < 0 || UINT8_MAX < i;
}

typedef struct {
   uint32_t all;
   uint32_t some;
   UniformSubtypePtr subtypes[1];
} ByteComplexType;

void testByteList() {
    UniformSubtype byteSubtype = { isByte };
    ByteComplexType byteComplexType = { 0, 1 << TAG_INT, { &byteSubtype } };
    MemberType byteType = (MemberType)&byteComplexType;
    ListDesc descByte = LIST_DESC_INIT_BYTE_ARRAY(84, byteType);
    int64_t capacity = 10;
    ListPtr lp = _bal_list_construct_1(&descByte, capacity);
    assert(lp->desc == &descByte);
    assert(lp->tpArray.length == 0);
    assert(lp->tpArray.capacity == capacity);
    assert(lp->tpArray.members != NULL);

    TaggedPtr tp = ptrAddFlags(lp, ((uint64_t)TAG_LIST_RW << TAG_SHIFT)|EXACT_FLAG);

    PanicCode err;
    err = _bal_list_byte_array_set_int(tp, 4, 256);
    assert(err);

    err = _bal_list_byte_array_set_tagged(tp, 24, randSmallString());
    assert(err);

    int i;
    for (i = 0; i < 50; i++) {
        err = _bal_list_byte_array_set_int(tp, i, i);
        assert(!err);
    }
    for (i = 50; i < 100; i++) {
        err = _bal_list_byte_array_set_tagged(tp, i, intToTagged(i));
        assert(!err);
    }
    for (i = 0; i < 100; i++) {
        assert(_bal_list_byte_array_get_int(tp, i) == i);
    }
}

void testListSet(int64_t capacity, int64_t length) {
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * length);
    int i;
    for (i = 0; i < length; i++) {
        strs[i] = randSmallString();
    }

    ListPtr lp = _bal_list_construct_8(&DESC_STRING, capacity);
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
    testByteList();
    testListSet(4, 4);
    testListSet(8, 5);
    testListSet(3, 6);
    return 0;
}
