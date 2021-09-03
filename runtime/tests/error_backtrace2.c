#include <assert.h>
#include <stdio.h>

#include "string_utils.h"

HASH_DEFINE_KEY;

int i = 0;
void func2();

void func1() {
    func2();
}

void func2() {
    if (i == 0) {
        i++;
        func1();
    } 
    else {
        TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 6);
        ErrorPtr er = (ErrorPtr)taggedToPtr(taggedErr);
        Frame *frames = (Frame *)er->frames;
        uint32_t nFrames = er->nFrames;
        assert(nFrames == 5);
        char *actual = (char *)(frames + nFrames);
        char *expected = "tests/error_backtrace2.c\0func2\0func1\0main\0";
        int lineNo[5] = {21, 12, 18, 12, 39};
        for (size_t i = 0; i < nFrames; i++) {
            Frame *f = frames + i;
            assert(strstr(actual + f->fileOffset, expected + f->fileOffset));
            assert(strcmp(actual + f->functionOffset, expected + f->functionOffset) == 0);
            assert(f->lineno == lineNo[i]);
        }
    }
}

int main() {
    func1();
}
