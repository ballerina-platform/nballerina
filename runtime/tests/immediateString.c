#include "stringUtils.h"

HASH_DEFINE_KEY;

void validateImmediateStringLength(uint64_t bits, int nChars, int nCodePoints) {
	StringLength length = immediateStringLength(bits);
	assert(length.nBytes == nChars);
	assert(length.nCodePoints == nCodePoints);
}

void testImmediateStringLength() {
	// test ASCII
	validateImmediateStringLength(0xABFFFFFFFFFFFFFF, 0, 0); // ""
	validateImmediateStringLength(0xABFFFFFFFFFF4142, 2, 2); // "AB"
	validateImmediateStringLength(0xABFFFFFFFF613223, 3, 3); // "a2#"
	validateImmediateStringLength(0xABFFFFFF256C6420, 4, 4); // "%ld "
	validateImmediateStringLength(0xABFFFF6162606364, 5, 5); // "ab`cd"
	validateImmediateStringLength(0xABFF2A2625242C3F, 6, 6); // "*&%$,?"
	validateImmediateStringLength(0xAB61626364656667, 7, 7); // "abcdefg"
	// testUnicode 
	// validateImmediateStringLength(0xABFFFFFFFFFF265E, 2, 1); // "♞" //! : codePoints -> 2
	// validateImmediateStringLength(0xABFFFFFFFF01F917, 3, 1); // "🤗" //! : codePointes -> 3
	// validateImmediateStringLength(0xABFFFFFFFF01F980, 3, 1); // "🦀" //! : nBytes -> 1
}

int main() {
    testImmediateStringLength();
    return 0;
}

