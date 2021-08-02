#include "stringUtils.h"

void testStringCmp() {
    TaggedPtr *strs = malloc(sizeof(TaggedPtr) * NTESTS * 3);
    int i;
    int j = 0;
    for (i = 0; i < NTESTS; i++) {
        strs[j] = randSmallString();
        strs[j + 1] = copyString(strs[j]);
        j += 2;
        strs[j++] = randMediumString();
    }
    for (i = 0; i < NTESTS*3; i++) {
        for (j = i; j < NTESTS*3; j++) {
            TaggedPtr s1 = strs[i];
            TaggedPtr s2 = strs[j];
            int cmp = stringCmpRef(s1, s2);
            int expect = sign(cmp);
            checkStringCmp(s1, s2, expect);
            checkStringCmp(s2, s1, -expect);
        }
    }
    free(strs);
}

void testStringEq() {
    checkStringEq(makeString("\xC2\x80"), makeString("\xC2\x80"), true);
    checkStringEq(makeString("\xC2\x80"), makeString("\xC2\x81"), false);

    checkStringEq(makeString("abce"), makeString("abce"), true);
    checkStringEq(makeString("abce"), makeString("abcd"), false);


    checkStringEq(makeString("\xF0\x9F\xA6\x80"), makeString("\xF0\x9F\xA6\x80"), true);
    checkStringEq(makeString("\xF0\x9F\xA6\x80"), makeString("\xF0\x9F\xA4\x97"), false);
    checkStringEq(makeString("\xF0\x9F\xA6\x80"), makeString("abcd"), false);

    checkStringEq(makeString("abcedefghi+=?*#"), makeString("abcedefghi+=?*#"), true);
    checkStringEq(makeString("abcedefghi+=?*#"), makeString("abcedefghi+=?*"), false);

    checkStringEq(makeString("123\xF0\x9F\xA4\x97"), makeString("123\xF0\x9F\xA4\x97"), true);
    checkStringEq(makeString("123\xF0\x9F\xA4\x97"), makeString("123\xF0\x9F\xA6\x80"), false);

    checkStringEq(makeString("\xF0\x9F\xA4\x97\xE2\x99\x9E"), makeString("\xF0\x9F\xA4\x97\xE2\x99\x9E"), true);
    checkStringEq(makeString("\xF0\x9F\xA4\x97\xE2\x99\x9E"), makeString("\xF0\x9F\xA4\x97\xF0\x9F\xA6\x80"), false);
}

HASH_DEFINE_KEY;

int main() {
    srand(1);
    testStringCmp();
    testStringEq();
    return 0;
}
