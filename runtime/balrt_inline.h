struct FloatToIntResult {
    uint64_t value;
    // LLVM type is i1, no equalent in C. i1 gets lowered to 8-bits.
    // So using bool (which is also 8-bit) works.
    bool overflowed;
};

extern bool _bal_float_exact_eq(double, double);
extern struct FloatToIntResult _bal_float_to_int(double);


TaggedPtr _bal_float_to_tagged(double n);
int64_t _bal_float_compare(TaggedPtr lhs, TaggedPtr rhs);

TaggedPtr _bal_int_to_tagged(int64_t n);
int64_t _bal_int_compare(TaggedPtr lhs, TaggedPtr rhs);

int64_t _bal_string_compare(TaggedPtr lhs, TaggedPtr rhs);

void _Barray__push(TaggedPtr p, TaggedPtr val);
int64_t _bal_array_int_compare(TaggedPtr lhs, TaggedPtr rhs);
int64_t _bal_array_float_compare(TaggedPtr lhs, TaggedPtr rhs);
int64_t _bal_array_string_compare(TaggedPtr lhs, TaggedPtr rhs);