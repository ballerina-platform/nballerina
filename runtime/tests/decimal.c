#include <string.h>
#include <assert.h>
#include "../balrt.h"
#include "../hash.h"
#include "../third-party/decNumber/decQuad.h"

HASH_DEFINE_KEY;

void genAndValidateConstDec(const char *decStr, const char *dec) {
    TaggedPtr d = _bal_decimal_const(decStr);
    char str[DECQUAD_String];
    decQuadToString((decQuad *)taggedToPtr(d), str);
    assert(strcmp(dec, str) == 0);
}

void testConstDec() {
    genAndValidateConstDec("1", "1");
    genAndValidateConstDec("543", "543");
    genAndValidateConstDec("1234567891234567891234567891234567", "1234567891234567891234567891234567");
    genAndValidateConstDec("123456789123456789123456789123456789", "1.234567891234567891234567891234568E+35");
    genAndValidateConstDec("99999999999999999999999999999999999", "1.000000000000000000000000000000000E+35");
}

int main() {
    testConstDec();
}
