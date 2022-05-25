#include "test_utils.h"

HASH_DEFINE_KEY;

void validateDecimalConstruction(const char* decString) {
    TaggedPtr d1_ptr = _bal_decimal_const(decString);
    char decStr[DECQUAD_String];
    decQuadToString((decQuad *)taggedToPtr(d1_ptr), decStr);
    assert(strcmp(decString, decStr) == 0);
}

int	main() {
    validateDecimalConstruction("1.0");
    validateDecimalConstruction("0.01");
    validateDecimalConstruction("-1.0");
    validateDecimalConstruction("-0.01");
    validateDecimalConstruction("9.9E+23");
    validateDecimalConstruction("-9.9E+23");
    validateDecimalConstruction("9.9E-23");
    validateDecimalConstruction("-9.9E-23");
    return 0;
}
