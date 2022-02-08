
#define LIST_DESC_FUNC_GET(kind,suffix) _bal_list_ ## kind ## _get_ ## suffix
#define LIST_DESC_FUNC_SET(kind,suffix) _bal_list_ ## kind ## _set_ ## suffix

#define _bal_list_int_array_get_float NULL
#define _bal_list_float_array_get_int NULL

#define LIST_DESC_VTABLE(kind) \
    LIST_DESC_FUNC_GET(kind, tagged),\
    LIST_DESC_FUNC_SET(kind, tagged),\
    LIST_DESC_FUNC_GET(kind, int),\
    LIST_DESC_FUNC_SET(kind, int),\
    LIST_DESC_FUNC_GET(kind, float),\
    LIST_DESC_FUNC_SET(kind, float)

#define LIST_DESC_INIT_GENERIC(tid, bitSet) {\
    tid,\
    LIST_DESC_VTABLE(generic),\
    BITSET_MEMBER_TYPE(bitSet)\
}

#define LIST_DESC_INIT_INT_ARRAY(tid) {\
    tid,\
    LIST_DESC_VTABLE(int_array),\
    BITSET_MEMBER_TYPE(1 << TAG_INT)\
}

#define LIST_DESC_INIT_FLOAT_ARRAY(tid) {\
    tid,\
    LIST_DESC_VTABLE(float_array),\
    BITSET_MEMBER_TYPE(1 << TAG_FLOAT)\
}
