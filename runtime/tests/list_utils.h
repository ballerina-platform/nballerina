
#define LIST_DESC_FUNC(kind,mid,suffix) _bal_list_ ## kind ## mid ## suffix

#define _bal_list_int_array_get_float NULL
#define _bal_list_byte_array_get_float NULL
#define _bal_list_float_array_get_int NULL

#define LIST_DESC_VTABLE(kind, inexact_set) \
    LIST_DESC_FUNC(kind, _get_, tagged),\
    LIST_DESC_FUNC(kind, _set_, tagged),\
    LIST_DESC_FUNC(kind, inexact_set, tagged),\
    LIST_DESC_FUNC(kind, _get_, int),\
    LIST_DESC_FUNC(kind, _set_, int),\
    LIST_DESC_FUNC(kind, inexact_set, int),\
    LIST_DESC_FUNC(kind, _get_, float),\
    LIST_DESC_FUNC(kind, _set_, float),\
    LIST_DESC_FUNC(kind, inexact_set, float)

#define LIST_DESC_INIT_GENERIC(tid, bitSet) {\
    tid, 0, 0,\
    LIST_DESC_VTABLE(generic, _inexact_set_),\
    BITSET_MEMBER_TYPE(bitSet)\
}

#define LIST_DESC_INIT_INT_ARRAY(tid) {\
    tid, 0, 0,\
    LIST_DESC_VTABLE(int_array, _set_),\
    BITSET_MEMBER_TYPE(1 << TAG_INT)\
}

#define LIST_DESC_INIT_BYTE_ARRAY(tid, byteType) {\
    tid, 0, 0,\
    LIST_DESC_VTABLE(byte_array, _set_),\
    byteType\
}

#define LIST_DESC_INIT_FLOAT_ARRAY(tid) {\
    tid, 0, 0,\
    LIST_DESC_VTABLE(float_array, _set_),\
    BITSET_MEMBER_TYPE(1 << TAG_FLOAT)\
}
