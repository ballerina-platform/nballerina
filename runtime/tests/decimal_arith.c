#include <string.h>
#include <assert.h>
#include "../balrt.h"
#include "../hash.h"
#include "../third-party/decNumber/decQuad.h"

HASH_DEFINE_KEY;

void validateDec(TaggedPtr tp, const char *decStr) {
    char str[DECQUAD_String];
    decQuadToString((decQuad *)taggedToPtr(tp), str);
    assert(strcmp(decStr, str) == 0);
}

void genAndValidateConstDec(const char *decStr, const char *dec) {
    TaggedPtr tp = _bal_decimal_const(decStr);
    validateDec(tp, dec);
}

void validate(TaggedPtrPanicCode tp, const char *decStr, PanicCode code) {
    if (tp.panicCode > 0) {
        assert(tp.panicCode == code);
    }
    else {
        validateDec(tp.ptr, decStr);
    }
}

void testConst() {
    genAndValidateConstDec("1", "1");
    genAndValidateConstDec("543", "543");
    genAndValidateConstDec("1234567890123456789012345678901234", "1234567890123456789012345678901234");
    genAndValidateConstDec("12345678901234567890123456789012345", "1.234567890123456789012345678901234E+34");
    genAndValidateConstDec("123456789123456789123456789123456789", "1.234567891234567891234567891234568E+35");
    genAndValidateConstDec("99999999999999999999999999999999999", "1.000000000000000000000000000000000E+35");
    genAndValidateConstDec("123456789123456789123456789123456750", "1.234567891234567891234567891234568E+35");
    genAndValidateConstDec("1e6", "1E+6");
    genAndValidateConstDec("10e6", "1.0E+7");
    genAndValidateConstDec("9999999999999E6", "9.999999999999E+18");
}

void genAndValidateDecAdd(const char *decStr1, const char *decStr2, const char *sum, PanicCode code) {
    TaggedPtrPanicCode tp = _bal_decimal_add(_bal_decimal_const(decStr1), _bal_decimal_const(decStr2));
    validate(tp, sum, code);
}

// Max = 9.999999999999999999999999999999999E6144
// Min = -9.999999999999999999999999999999999E6144
// Min Magnitude = 1E-6143 (normal)
void testAdd() {
    genAndValidateDecAdd("1", "1", "2", 0);
    genAndValidateDecAdd("1000", "1", "1001", 0);
    genAndValidateDecAdd("1234567890123456789012345678901234", "1234567890123456789012345678901231", "2469135780246913578024691357802465", 0);
    genAndValidateDecAdd("12345678901234567890123456789012341", "12345678901234567890123456789012312", "2.469135780246913578024691357802465E+34", 0);
    genAndValidateDecAdd("1234567890123456789012345678901234", "12345678901234567890123456789012312", "1.358024679135802467913580246791354E+34", 0);
    genAndValidateDecAdd("9e6144", "1e6144", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecAdd("-9e6144", "-1e6144", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecAdd("9.999999999999999999999999999999998E6144", "0.000000000000000000000000000000001E6144", "9.999999999999999999999999999999999E+6144", 0);
    genAndValidateDecAdd("9.999999999999999999999999999999995E6144", "0.000000000000000000000000000000002E6144", "9.999999999999999999999999999999997E+6144", 0);
    genAndValidateDecAdd("9.999999999999999999999999999999999E6144", "0.000000000000000000000000000000001E6144", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecAdd("9.999999999999999999999999999999999E6144", "0.000000000000000000000000000000002E6144", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecAdd("-9.999999999999999999999999999999998E6144", "-0.000000000000000000000000000000001E6144", "-9.999999999999999999999999999999999E+6144", 0);
    genAndValidateDecAdd("-9.999999999999999999999999999999999E6144", "-0.000000000000000000000000000000001E6144", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecAdd("-9.999999999999999999999999999999999E6144", "0.000000000000000000000000000000001E6144", "-9.999999999999999999999999999999998E+6144", 0);
    genAndValidateDecAdd("2E-6143", "1E-6143", "3E-6143", 0);
    genAndValidateDecAdd("0.000000000000000000000000000000001E-6110", "0.000000000000000000000000000000002E-6110", "3E-6143", 0);
    genAndValidateDecAdd("2E-6143", "-1E-6143", "1E-6143", 0);
    genAndValidateDecAdd("9E-6143", "1E-6143", "1.0E-6142", 0);
    genAndValidateDecAdd("1E-6143", "-1E-6143", "0", 0);
}

void genAndValidateDecSub(const char *decStr1, const char *decStr2, const char *sub, PanicCode code) {
    TaggedPtrPanicCode tp = _bal_decimal_sub(_bal_decimal_const(decStr1), _bal_decimal_const(decStr2));
    validate(tp, sub, code);
}

void testSub() {
    genAndValidateDecSub("2", "1", "1", 0);
    genAndValidateDecSub("1", "2", "-1", 0);
    genAndValidateDecSub("1000", "1", "999", 0);
    genAndValidateDecSub("1000", "-1", "1001", 0);
    genAndValidateDecSub("1234567890123456789012345678901234", "1234567890123456789012345678901231", "3", 0);
    genAndValidateDecSub("1234567890123456789012345678901234", "-1234567890123456789012345678901231", "2469135780246913578024691357802465", 0);
    genAndValidateDecSub("-1234567890123456789012345678901234", "1234567890123456789012345678901231", "-2469135780246913578024691357802465", 0);
    genAndValidateDecSub("9e6144", "-1e6144", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecSub("9.999999999999999999999999999999998E6144", "-0.000000000000000000000000000000001E6144", "9.999999999999999999999999999999999E+6144", 0);
    genAndValidateDecSub("-9.999999999999999999999999999999998E6144", "0.000000000000000000000000000000001E6144", "-9.999999999999999999999999999999999E+6144", 0);
    genAndValidateDecSub("-9.999999999999999999999999999999999E6144", "0.000000000000000000000000000000001E6144", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecSub("2E-6143", "1E-6143", "1E-6143", 0);
}

void genAndValidateDecMul(const char *decStr1, const char *decStr2, const char *mul, PanicCode code) {
    TaggedPtrPanicCode tp = _bal_decimal_mul(_bal_decimal_const(decStr1), _bal_decimal_const(decStr2));
    validate(tp, mul, code);
}

void testMul() {
    genAndValidateDecMul("1", "1", "1", 0);
    genAndValidateDecMul("-1", "1", "-1", 0);
    genAndValidateDecMul("-1", "0", "0", 0);
    genAndValidateDecMul("1E-6000", "1E-143", "1E-6143", 0);
    genAndValidateDecMul("1E6000", "1E144", "1.000000000000000000000000000000000E+6144", 0);
    genAndValidateDecMul("9.999999999999999999999999999999999E6000", "1E144", "9.999999999999999999999999999999999E+6144", 0);
    genAndValidateDecMul("9.999999999999999999999999999999999E6000", "-1E144", "-9.999999999999999999999999999999999E+6144", 0);
    genAndValidateDecMul("9.999999999999999999999999999999999E6000", "-2E143", "-2.000000000000000000000000000000000E+6144", 0);
    genAndValidateDecMul("-1E-6143", "0", "0", 0);
    genAndValidateDecMul("1E-6143", "0", "0", 0);
    genAndValidateDecMul("0", "0", "0", 0);
    genAndValidateDecMul("1E-6001", "1E-143", "0", 0);
    genAndValidateDecMul("9.999999999999999999999999999999999E-6001", "1E-143", "0", 0);
    genAndValidateDecMul("9.999999999999999999999999999999999E-6001", "2E-143", "2.000000000000000000000000000000000E-6143", 0);
    genAndValidateDecMul("1E6144", "1E1", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecMul("1E6143", "1E2", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecMul("1E-6143", "1E-1", "0", 0);
    genAndValidateDecMul("-9.999999999999999999999999999999999E6144", "2", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecMul("1E-6143", "1E6143", "1.00000000000000000000000000000000", 0);
    genAndValidateDecMul("9.999999999999999999999999999999999E-6001", "0.2E-143", "0", 0);
    genAndValidateDecMul("9.999999999999999999999999999999999E6144", "9.999999999999999999999999999999999E6144", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecMul("1E-6143", "1E-6143", "0", 0);
}

void genAndValidateDecDiv(const char *decStr1, const char *decStr2, const char *div, PanicCode code) {
    TaggedPtrPanicCode tp = _bal_decimal_div(_bal_decimal_const(decStr1), _bal_decimal_const(decStr2));
    validate(tp, div, code);    
}

void testDiv() {
    genAndValidateDecDiv("1", "1", "1", 0);
    genAndValidateDecDiv("-1", "1", "-1", 0);
    genAndValidateDecDiv("1", "0", "", PANIC_DIVIDE_BY_ZERO);
    genAndValidateDecDiv("9.999999999999999999999999999999999E6144", "0", "", PANIC_DIVIDE_BY_ZERO);
    genAndValidateDecDiv("0", "-1", "0", 0);
    genAndValidateDecDiv("1E6144", "1E-1", "", PANIC_ARITHMETIC_OVERFLOW);
    genAndValidateDecDiv("9.999999999999999999999999999999999E6144", "9.999999999999999999999999999999999E6144", "1", 0);
    genAndValidateDecDiv("9.999999999999999999999999999999999E-6001", "0.5E143", "2.000000000000000000000000000000000E-6143", 0);
}

void genAndValidateDecNeg(const char *dec, const char *decMinus) {
    TaggedPtr tp = _bal_decimal_neg(_bal_decimal_const(dec));
    validateDec(tp, decMinus);
}

void testNeg() {
    genAndValidateDecNeg("0", "0");
    genAndValidateDecNeg("1", "-1");
    genAndValidateDecNeg("-1", "1");
    genAndValidateDecNeg("1E-6143", "-1E-6143");
    genAndValidateDecNeg("99999999999999999999999999999999999", "-1.000000000000000000000000000000000E+35");
    genAndValidateDecNeg("9.999999999999999999999999999999998E6144", "-9.999999999999999999999999999999998E+6144");
}

void genAndValidateDecRem(const char *decStr1, const char *decStr2, const char *rem, PanicCode code) {
    TaggedPtrPanicCode tp = _bal_decimal_rem(_bal_decimal_const(decStr1), _bal_decimal_const(decStr2));
    validate(tp, rem, code);
}

void testRem() {
    genAndValidateDecRem("1", "1", "0", 0);
    genAndValidateDecRem("1", "2", "1", 0);
    genAndValidateDecRem("-1", "2", "-1", 0);
    genAndValidateDecRem("-10", "3", "-1", 0);
    genAndValidateDecRem("10", "-3", "1", 0);
    genAndValidateDecRem("-16.3", "4.1", "-4.0", 0);
    genAndValidateDecRem("17.8", "-4.1", "1.4", 0);
    genAndValidateDecRem("-17.8", "-4.1", "-1.4", 0);
    genAndValidateDecRem("27", "4", "3", 0);
    genAndValidateDecRem("28", "5", "3", 0);
    genAndValidateDecRem("10", "3", "1", 0);
    genAndValidateDecRem("1E-6143", "1E-6143", "0", 0);
    genAndValidateDecRem("1E-6143", "1E-6142", "1E-6143", 0);
    genAndValidateDecRem("1E-6143", "-1E-6142", "1E-6143", 0);
    genAndValidateDecRem("1E-3", "1E-2", "0.001", 0);
    genAndValidateDecRem("9.999999999999999999999999999999998E6144", "1E-2", "", PANIC_INVALID_DECIMAL);
    genAndValidateDecRem("9.05", "0.1", "0.05", 0);
    genAndValidateDecRem("9.0E31", "1E-2", "0", 0);
    genAndValidateDecRem("9.0E32", "1E-2", "0", PANIC_INVALID_DECIMAL);
    genAndValidateDecRem("9.05E-6142", "0.1E-6142", "0", 0);
    genAndValidateDecRem("9.00005", "0.0001", "0.00005", 0);
}

void cmpDecsAndValidate(const char *decStr1, const char *decStr2, int64_t res) {
    assert(_bal_decimal_cmp(_bal_decimal_const(decStr1), _bal_decimal_const(decStr2)) == res);
}

void testCmp() {
    cmpDecsAndValidate("1", "1", 0);
    cmpDecsAndValidate("-1", "1", -1);
    cmpDecsAndValidate("1", "-1", 1);
    cmpDecsAndValidate("0", "0", 0);
    cmpDecsAndValidate("9.999999999999999999999999999999999E6144", "0.000000000000000000000000000000001E6144", 1);
    cmpDecsAndValidate("9.999999999999999999999999999999999E6144", "-0.000000000000000000000000000000001E6144", 1);
    cmpDecsAndValidate("-9.999999999999999999999999999999999E6144", "0.000000000000000000000000000000001E6144", -1);
    cmpDecsAndValidate("0.999999999999999999999999999999999E6144", "9.999999999999999999999999999999999E6143", -1);
    cmpDecsAndValidate("0.999999999999999999999999999999999E6144", "9.999999999999999999999999999999990E6143", 0);
    cmpDecsAndValidate("9.999999999999999999999999999999999E6144", "9.999999999999999999999999999999999E6144", 0);
    cmpDecsAndValidate("-9.999999999999999999999999999999999E6144", "-9.999999999999999999999999999999998E6144", -1);
    cmpDecsAndValidate("0", "1E-6143", -1);
    cmpDecsAndValidate("0", "-1E-6143", 1);
    cmpDecsAndValidate("1E-6143", "1E-6143", 0);
    cmpDecsAndValidate("1E-6142", "1E-6143", 1);
    cmpDecsAndValidate("9.999999999999999999999999999999999E6144", "1E-6143", 1);
}

void exactEq(const char *decStr1, const char *decStr2) {
    assert(_bal_decimal_exact_eq(_bal_decimal_const(decStr1), _bal_decimal_const(decStr2)));
}

void notExactEq(const char *decStr1, const char *decStr2) {
    assert(!_bal_decimal_exact_eq(_bal_decimal_const(decStr1), _bal_decimal_const(decStr2)));
}

void testExactEq() {
    exactEq("1.0", "1.0");
    exactEq("9.999999999999999999999999999999999E6144", "9.999999999999999999999999999999999E6144");
    exactEq("-9.999999999999999999999999999999999E6144", "-9.999999999999999999999999999999999E6144");
    exactEq("1E-6143", "1E-6143");
    exactEq("-1E-6143", "-1E-6143");
    exactEq("0", "0");
    exactEq("01", "1");
    exactEq("0.000001", "0.000001");
    exactEq("00000123", "123");
    exactEq("100E3", "0100E3");
    exactEq("0.1E-6142", "1E-6143");
    exactEq("0.1", "1E-1");
    notExactEq("1.0", "1.00");
    notExactEq("0.0", "0");
    notExactEq("1.0", "01.00");
    notExactEq("0.00000100", "0.000001");
    notExactEq("9.999999999999999999999999999999999E6143", "0.999999999999999999999999999999999E6144");
    notExactEq("-9.999999999999999999999999999999999E6143", "-0.999999999999999999999999999999999E6144");
    notExactEq("9.999999999999999999999999999999999E6144", "9.999999999999999999999999999999998E6144");
    notExactEq("100E3", "10E30");
    notExactEq("1E-6142", "1E-6143");
}

int main() {
    testConst();
    testAdd();
    testSub();
    testMul();
    testDiv();
    testNeg();
    testRem();
    testCmp();
    testExactEq();
}
