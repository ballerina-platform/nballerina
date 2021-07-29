#include "balrt.h"
#include "string.h"

static bool makeString(char *s, unsigned lengthInBytes, unsigned lengthInCodePoints, TaggedPtr *pp) {
    if (lengthInBytes > 7) {
        return false;
    }
    if (lengthInCodePoints != 1 && lengthInBytes != lengthInCodePoints) {
        return false;
    }
    TaggedPtr p = bitsToTaggedPtr((((uint64_t)TAG_STRING) << TAG_SHIFT) | (((uint64_t)1 << (7*8)) -  1));
    *pp = p;
    memcpy(pp, s, lengthInBytes);
    return true;
}

StringLength stringLength(TaggedPtr p) {
    uint64_t bits = taggedPtrBits(p);
    StringLength len;
    unsigned loByte = bits & 0xFF;
    if (loByte == 0xFF) {
        len.nBytes = 0;
        len.nCodePoints = 0;
    }
    else if (loByte & 0x80) {
        len.nBytes = __builtin_clz((uint8_t)~loByte) - (sizeof(unsigned) - 1)*8;
        len.nCodePoints = 1;
    }
    else {
        bits = ~bits;
        bits &= ((uint64_t)1 << 56) - 1;
        len.nBytes = len.nCodePoints =  8 - (__builtin_clzl(bits) >> 3);
    }
    return len;
}

int stringCmp(TaggedPtr p1, TaggedPtr p2) {
    if (p1 == p2) {
        return 0;
    }
    uint64_t bits1 = taggedPtrBits(p1);
    uint64_t bits2 = taggedPtrBits(p2);

    for (int i = 0; i < 7; i++) {
        int byte1 = bits1 & 0xFF;
        int byte2 = bits2 & 0xFF;
        if (byte1 < byte2) {
            return byte2 == 0xFF ? 1 : -1;
        }
        else if (byte1 > byte2) {
            return byte1 == 0xFF ? -1 : 1;
        }
        bits1 >>= 8;
        bits2 >>= 8; 
    }
    // shouldn't happen
    return 0;
}

int stringCmp2(TaggedPtr p1, TaggedPtr p2) {
    if (p1 == p2) {
        return 0;
    }
    uint64_t bits1 = taggedPtrBits(p1);
    uint64_t bits2 = taggedPtrBits(p2);
    // how much to shift so that the first differing byte is the lo byte
    // ctzl counts the number of trailing zero bits
    int shift = __builtin_ctzl(bits1 ^ bits2) & ~3;
    int byte1 = (bits1 >> shift) & 0xFF;
    int byte2 = (bits2 >> shift) & 0xFF;
    if (byte1 < byte2) {
        return byte2 == 0xFF ? 1 : -1;
    }
    else {
        return byte1 == 0xFF ? -1 : 1;
    }
}

#if 0
int64_t stringCmpFast(TaggedPtr p1, TaggedPtr p2) {
    if (p1 == p2) {
        return 0;
    }
    uint64_t bits1 = taggedPtrBits(p1);
    uint64_t bits2 = taggedPtrBits(p2);
    int byte1 = bits1 & 0xFF;
    int byte2 = bits2 & 0xFF;
    if (byte1 < byte2) {
        return byte2 == 0xFF ? 1 : -1;
    }
    else if (byte1 > byte2) {
        return byte1 == 0xFF ? -1 : 1;
    }
    if (byte1 & 0x80) {
        // must be exactly one code point
        // number of bytes must also be the same (otherwise leading byte different)
        // case where both are 0xFF would mean both are the same
        return (int64_t)__builtin_bswap32(bits1) - (int64_t)__builtin_bswap32(bits2);
    }
    uint64_t xor = bits1 xor



}
#endif


#include <stdio.h>
#include <assert.h>

TaggedPtr makeString0(char *s) {
    int n = strlen(s);
    TaggedPtr tp;
    assert(makeString(s, n, (uint8_t)*s & 0x80 ? 1 : n, &tp));
    return tp;
}

void testLen(char *s) {
    TaggedPtr tp = makeString0(s);
    StringLength len = stringLength(tp);
    printf("length of \"%s\" is %ld bytes, %ld code points\n", s, len.nBytes, len.nCodePoints);
}

void testCmp(char *s1, char *s2) {
    int c = stringCmp2(makeString0(s1), makeString0(s2));
    printf("\"%s\" %s \"%s\"\n", s1, c == 0 ? "==" : (c < 0 ? "<" : ">"), s2);
}

static inline int64_t stringCmpImmediate(uint64_t bits1, uint64_t bits2) {
    // how much to shift so that the first differing byte is the lo byte
    // ctzl counts the number of trailing zero bits
    int shift = __builtin_ctzl(bits1 ^ bits2) & ~7;
    int byte1 = (bits1 >> shift) & 0xFF;
    int byte2 = (bits2 >> shift) & 0xFF;
    if (byte1 < byte2) {
        return byte2 == 0xFF ? 1 : -1;
    }
    else {
        return byte1 == 0xFF ? -1 : 1;
    }
}
int main() {
    int64_t result = stringCmpImmediate(0x2a734a4151464141UL, 0x2affffffffff0521UL);
    printf("%ld\n", result);
    // testLen("hello");
    // testLen("h");
    // testLen("1234567");
    // testLen("จ");
    // testLen("â");
    // testLen("");
    // testCmp("h", "h");
    // testCmp("a", "b");
    // testCmp("xy", "xyz");
    // testCmp("xyz", "xy");
    // testCmp("", "b");
    // testCmp("1234567", "");
    // testCmp("123456", "1234567");
    // testCmp("a", "จ");
    // testCmp("abc", "จ");
    // testCmp("", "จ");
    // testCmp("â", "จ");
    // testCmp("น", "จ");

}
