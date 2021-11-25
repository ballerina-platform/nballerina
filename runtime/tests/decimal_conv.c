#include "test_utils.h"

HASH_DEFINE_KEY;

void validatDecToFloat(const char *decStr, double val) {
    assert(_bal_decimal_to_float(_bal_decimal_const(decStr)) == val);
}

void testDecToFloat() {
    validatDecToFloat("1", 1);
    validatDecToFloat("1.000000000000000000000000000000000", 1);
    validatDecToFloat("1.1", 1.1);
    validatDecToFloat("9.0", 9);
    validatDecToFloat("9.1", 9.1);
    validatDecToFloat("9.999999999999999999999999999999999", 10.0);
    validatDecToFloat("9.99999999999999999999999999999999", 10.0);
    validatDecToFloat("9.9999999999999999999999999999999", 10.0);
    validatDecToFloat("10.00000000000000000000000000", 10.0);
    validatDecToFloat("10.00000000000000000000000001", 10.0);
    validatDecToFloat("10.00000000000000000000000001", 10.0);
    validatDecToFloat("99.99999999999999999999999999999999", 100.0);
    validatDecToFloat("1e2", 1e2);
    validatDecToFloat("1.9e2", 1.9e2);
    validatDecToFloat("9.999999999999999999999999999999999e100", 1.0e101);
    validatDecToFloat("9999999999999999999999999999999999e100", 1.0e134);
    validatDecToFloat("1e308", 1.0e308);
    validatDecToFloat("1.7976931348623158e+308", 1.7976931348623158e+308);
    validatDecToFloat("1.79769313486231571e+308", 1.79769313486231571e+308);
    validatDecToFloat("1.79769313486231570e+308", 1.79769313486231570e+308);
    validatDecToFloat("1.7976931348623156e+308", 1.7976931348623156e+308);
    validatDecToFloat("-1.7976931348623157e+308", -1.7976931348623157e+308);
    validatDecToFloat("-1.79769313486231571e308", -1.79769313486231571e308);
    validatDecToFloat("-1.7976931348623158e308", -1.7976931348623158e308);
    validatDecToFloat("-1.7976931348623156e+308", -1.7976931348623156e+308);
    validatDecToFloat("0", 0.0);
    validatDecToFloat("1e-322", 1e-322);
    validatDecToFloat("1e-323", 1e-323);
    validatDecToFloat("1e-324", 0.0);
    validatDecToFloat("-1e-324", 0.0);
    validatDecToFloat("1e-6143", 0.0);
    validatDecToFloat("-1e-6143", 0.0);
    validatDecToFloat("1e309", INFINITY);
    validatDecToFloat("1.7976931348623156e+309", INFINITY);
    validatDecToFloat("9.999999999999999999999999999999999E6144", INFINITY);
    validatDecToFloat("-1e309", -INFINITY);
    validatDecToFloat("-2e309", -INFINITY);
    validatDecToFloat("-9.999999999999999999999999999999999E6144", -INFINITY);
    validatDecToFloat("-1.7976931348623156e+309", -INFINITY);
}

void validateIntToDec(int64_t val, const char *decStr) {
    validateDec(_bal_decimal_from_int(val), decStr);
}

void testIntToDec() {
    validateIntToDec(1, "1");
    validateIntToDec(0, "0");
    validateIntToDec(-1, "-1");
    validateIntToDec(2147483647, "2147483647");
    validateIntToDec(2147483646, "2147483646");
    validateIntToDec(2147483648, "2147483648");
    validateIntToDec(-2147483648, "-2147483648");
    validateIntToDec(-2147483647, "-2147483647");
    validateIntToDec(-2147483649, "-2147483649");
    validateIntToDec(INT64_MAX, "9223372036854775807");
    validateIntToDec(INT64_MAX - 1, "9223372036854775806");
    validateIntToDec(INT64_MIN, "-9223372036854775808");
    validateIntToDec(INT64_MIN + 1, "-9223372036854775807");
}

void validateFloatToDec(double val, const char *decStr, PanicCode code) {
    validate(_bal_decimal_from_float(val), decStr, code);
}

void testFloatToDec() {
    validateFloatToDec(0.0, "0", 0);
    validateFloatToDec(1.0, "1", 0);
    validateFloatToDec(1.00000, "1", 0);
    validateFloatToDec(1234567891.0, "1234567891", 0);
    validateFloatToDec(1234567890123456.0, "1234567890123456", 0);
    validateFloatToDec(1234567890123456.1, "1234567890123456", 0);
    validateFloatToDec(1234567890123456.2, "1234567890123456.3", 0);
    validateFloatToDec(1234567890123456.9, "1234567890123457", 0);
    validateFloatToDec(1.7976931348623157e+308, "1.7976931348623157E+308", 0);
    validateFloatToDec(1.7976931348623156e+308, "1.7976931348623155E+308", 0);
    validateFloatToDec(1.7976931348623157e+307, "1.7976931348623158E+307", 0);
    validateFloatToDec(INFINITY, "", PANIC_ARITHMETIC_OVERFLOW);
    validateFloatToDec(-INFINITY, "", PANIC_ARITHMETIC_OVERFLOW);
    validateFloatToDec(NAN, "", PANIC_INVALID_DECIMAL);
    validateFloatToDec(0.7976931348623157e+308, "7.976931348623157E+307", 0);
    validateFloatToDec(0.0000000000000009e+308, "9E+292", 0);
    validateFloatToDec(2.2250738585072014e-308, "2.2250738585072014E-308", 0);
    validateFloatToDec(2.2250738585072014e-309, "2.225073858507203E-309", 0);
    validateFloatToDec(0.0000000000000000000000000000000001, "1E-34", 0);
    validateFloatToDec(0.00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001, "1E-323", 0);
    validateFloatToDec(4.9406564584124654E-324, "5E-324", 0);
}

int main() {
    testDecToFloat();
    testIntToDec();
    testFloatToDec();
}
