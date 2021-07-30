#include "stringUtils.h"

HASH_DEFINE_KEY;

void validateImmediateStringLength(uint64_t bits, int nChars, int nCodePoints) {
	StringLength length = immediateStringLength(bits);
	assert(length.nBytes == nChars);
	assert(length.nCodePoints == nCodePoints);
	StringLength taggedLength = taggedStringLength(bitsToTaggedPtr(bits));
	assert(taggedLength.nBytes == length.nBytes);
	assert(taggedLength.nCodePoints == length.nCodePoints);
}

void validateTaggedStringEquals(uint64_t lhs, uint64_t rhs, bool expected) {
	TaggedPtr lhsPtr = bitsToTaggedPtr(lhs);
	TaggedPtr rhsPtr = bitsToTaggedPtr(rhs);
	bool result = taggedStringEqual(lhsPtr, rhsPtr);
	assert(result == expected);
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

void testTaggedStringEquals() {
	// test ASCII
	validateTaggedStringEquals(0xABFFFF6162606364, 0xABFFFF6162606364, true);
	validateTaggedStringEquals(0xABFFFF6162606364, 0xAB61626364656667, false);
	validateTaggedStringEquals(0xABFFFF6162606364, 0xABFFFFFFFFFF265E, false);
	// test Unicode
	validateTaggedStringEquals(0xABFFFFFFFFFF265E, 0xABFFFFFFFFFF265E, true);
	validateTaggedStringEquals(0xABFFFFFFFFFF265E, 0xABFFFFFFFF01F980, false);
	validateTaggedStringEquals(0xABFFFFFFFFFF265E, 0xABFFFF6162606364, false);
	validateTaggedStringEquals(0x8FFFFFFFFFFF265E, 0xABFFFF6162606364, false);
}

int main() {
    testImmediateStringLength();
    testTaggedStringEquals();
    return 0;
}

