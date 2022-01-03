extern bool _bal_float_exact_eq(double, double);
extern IntWithOverflow _bal_float_to_int(double);

TaggedPtr _bal_float_to_tagged(double n);
int64_t _bal_float_compare(TaggedPtr lhs, TaggedPtr rhs);

TaggedPtr _bal_int_to_tagged(int64_t n);
int64_t _bal_int_compare(TaggedPtr lhs, TaggedPtr rhs);

int64_t _bal_string_compare(TaggedPtr lhs, TaggedPtr rhs);

void BAL_LANG_ARRAY_NAME(push)(TaggedPtr p, TaggedPtr val);

int64_t _bal_decimal_compare(TaggedPtr lhs, TaggedPtr rhs);
