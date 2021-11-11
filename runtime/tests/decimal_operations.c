#include <string.h>
#include <assert.h>
#include "../balrt.h"
#include "../hash.h"
#include "../third-party/decNumber/decQuad.h"

HASH_DEFINE_KEY;

void validate(TaggedPtr tp, const char *decStr) {
    char str[DECQUAD_String];
    decQuadToString((decQuad *)taggedToPtr(tp), str);
    assert(strcmp(decStr, str) == 0);
}

void genAndValidateConstDec(const char *decStr, const char *dec) {
    TaggedPtr tp = _bal_decimal_const(decStr);
    validate(tp, dec);
}

void testConst() {
    genAndValidateConstDec("1", "1");
    genAndValidateConstDec("543", "543");
    genAndValidateConstDec("1234567890123456789012345678901234", "1234567890123456789012345678901234");
    genAndValidateConstDec("12345678901234567890123456789012345", "1.234567890123456789012345678901234E+34");
    genAndValidateConstDec("123456789123456789123456789123456789", "1.234567891234567891234567891234568E+35");
    genAndValidateConstDec("99999999999999999999999999999999999", "1.000000000000000000000000000000000E+35");
    genAndValidateConstDec("123456789123456789123456789123456750", "1.234567891234567891234567891234568E+35");
}

void genAndValidateDecAdd(const char *decStr1, const char *decStr2, const char *sum) {
    TaggedPtr tp1 = _bal_decimal_const(decStr1);
    TaggedPtr tp2 = _bal_decimal_const(decStr2);
    TaggedPtrPanicCode tp = _bal_decimal_add(tp1, tp2);
    validate(tp.ptr, sum);
}

// TODO: Should validate errorCode
void testAdd() {
    genAndValidateDecAdd("1", "1", "2");
    genAndValidateDecAdd("1000", "1", "1001");
    genAndValidateDecAdd("1234567890123456789012345678901234", "1234567890123456789012345678901231", "2469135780246913578024691357802465");
    genAndValidateDecAdd("12345678901234567890123456789012341", "12345678901234567890123456789012312", "2.469135780246913578024691357802465E+34");
    genAndValidateDecAdd("1234567890123456789012345678901234", "12345678901234567890123456789012312", "1.358024679135802467913580246791354E+34");
}

int main() {
    testConst();
    testAdd();
}
