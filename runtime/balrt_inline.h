#include <stdbool.h>

struct FloatToIntResult {
    uint64_t value;
    // LLVM type is i1, no equalent in C. i1 gets lowered to 8-bits.
    // So using bool (which is also 8-bit) works.
    bool overflowed;
};

extern bool _bal_float_eq(double, double);
extern bool _bal_float_exact_eq(double, double);
extern struct FloatToIntResult _bal_float_to_int(double);
