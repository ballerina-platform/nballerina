extern bool _bal_float_exact_eq(double, double);
extern IntWithOverflow _bal_float_to_int(double);

TaggedPtr _bal_float_to_tagged(double n);
TaggedPtr _bal_int_to_tagged(int64_t n);

CompareResult _bal_opt_int_compare(TaggedPtr lhs, TaggedPtr rhs);
CompareResult _bal_opt_float_compare(TaggedPtr lhs, TaggedPtr rhs);
CompareResult _bal_opt_decimal_compare(TaggedPtr lhs, TaggedPtr rhs);
CompareResult _bal_opt_string_compare(TaggedPtr lhs, TaggedPtr rhs);

void BAL_LANG_ARRAY_NAME(push)(TaggedPtr p, TaggedPtr val);
