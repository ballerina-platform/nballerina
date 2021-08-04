#include "stringUtils.h"

HASH_DEFINE_KEY;

void validateImmediateStringLength(uint64_t bits, int nBytes, int nCodePoints) {
	StringLength length = immediateStringLength(bits);
	assert(length.nBytes == nBytes);
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
	validateImmediateStringLength(0x2AFFFFFFFFFFFFFF, 0, 0); // ""
	validateImmediateStringLength(0x2AFFFFFFFFFF4142, 2, 2); // "BA"
	validateImmediateStringLength(0x2AFFFFFFFF613223, 3, 3); // "#2a"
	validateImmediateStringLength(0x2AFFFFFF256C6420, 4, 4); // " dl%"
	validateImmediateStringLength(0x2AFFFF6162606364, 5, 5); // "cd`ba"
	validateImmediateStringLength(0x2AFF2A2625242C3F, 6, 6); // "?,$%&*"
	validateImmediateStringLength(0x2A61626364656667, 7, 7); // "gfedcab"
	// testUnicode 
	validateImmediateStringLength(0x2AFFFFFFFFFFA2C2, 2, 1); // "¢"
	validateImmediateStringLength(0x2AFFFFFFFF9E99E2, 3, 1); // "♞"
	validateImmediateStringLength(0x2AFFFFFF97A49FF0, 4, 1); // "🤗"
	validateImmediateStringLength(0x2AFFFFFF90A69FF0, 4, 1); // "🦀"
}

void testTaggedStringEquals() {
	// test ASCII
	validateTaggedStringEquals(0x2AFFFF6162606364, 0x2AFFFF6162606364, true); // ASCII - ASCII
	validateTaggedStringEquals(0x2AFFFF6162606364, 0x2A61626364656667, false); // ASCII - ASCII
	validateTaggedStringEquals(0x2AFFFF6162606364, 0x2AFFFFFFFFFF265E, false); // ASCII - UNICODE
	// test Unicode
	validateTaggedStringEquals(0x2AFFFFFFFF9E99E2, 0x2AFFFFFFFF9E99E2, true); // UNICODE - UNICODE
	validateTaggedStringEquals(0x2AFFFFFFFF9E99E2, 0x2AFFFFFF97A49FF0, false); // UNICODE - UNICODE
	validateTaggedStringEquals(0x2AFFFFFFFF9E99E2, 0x2AFFFF6162606364, false); // UNICODE - ASCII
	// One not immediate
	validateTaggedStringEquals(0x8FFFFFFFFF9E99E2, 0x2AFFFFFFFF9E99E2, false); // NON-IMMEDIATE - UNICODE
	validateTaggedStringEquals(0x8FFFFFFFFF9E99E2, 0x2AFFFF6162606364, false); // NON-IMMEDIATE - ASCII
	validateTaggedStringEquals(0x2AFFFFFFFF9E99E2, 0x8FFFFFFFFF9E99E2, false); // UNICODE - NON-IMMEDIATE
	validateTaggedStringEquals(0x2AFFFF6162606364, 0x8FFFFFFFFF9E99E2, false); // ASCII - NON-IMMEDIATE

	// neither immediate strings
	assert(taggedStringEqual(makeString("123\xF0\x9F\xA4\x97"), makeString("123\xF0\x9F\xA4\x97")) == true);
	assert(taggedStringEqual(makeString("123\xF0\x9F\xA4\x97"), makeString("123\xF0\x9F\xA4\x80")) == false);
}

int main() {
    testImmediateStringLength();
    testTaggedStringEquals();
    return 0;
}

