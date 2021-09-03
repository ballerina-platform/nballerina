#include <assert.h>
#include "string_utils.h"

HASH_DEFINE_KEY;

void func3() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func3 error"), 6);
    ErrorPtr er = (ErrorPtr)taggedToPtr(taggedErr);
    Frame *frames = (Frame *)er->frames;
    uint32_t nFrames = er->nFrames;
    assert(nFrames == 4);
    char *actual = (char *)(frames + nFrames);
    char *expected = "tests/error_backtrace1.c\0func3\0func2\0func1\0main\0";
    int lineNo[4] = {7, 38, 56, 60};
    for (size_t i = 0; i < nFrames; i++) {
        Frame *f = frames + i;
        assert(strstr(actual + f->fileOffset, expected + f->fileOffset));
        assert(strcmp(actual + f->functionOffset, expected + f->functionOffset) == 0);
        assert(f->lineno == lineNo[i]);
    }
}

void func2() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func2 error"), 6);
    ErrorPtr er = (ErrorPtr)taggedToPtr(taggedErr);
    Frame *frames = (Frame *)er->frames;
    uint32_t nFrames = er->nFrames;
    assert(nFrames == 3);
    char *actual = (char *)(frames + nFrames);
    char *expected = "tests/error_backtrace1.c\0func2\0func1\0main\0";
    int lineNo[4] = {24, 56, 60};
    for (size_t i = 0; i < nFrames; i++) {
        Frame *f = frames + i;
        assert(strstr(actual + f->fileOffset, expected + f->fileOffset));
        assert(strcmp(actual + f->functionOffset, expected + f->functionOffset) == 0);
        assert(f->lineno == lineNo[i]);
    }
    func3();
}

void func1() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 6);
    ErrorPtr er = (ErrorPtr)taggedToPtr(taggedErr);
    Frame *frames = (Frame *)er->frames;
    uint32_t nFrames = er->nFrames;
    assert(nFrames == 2);
    char *actual = (char *)(frames + nFrames);
    char *expected = "tests/error_backtrace1.c\0func1\0main\0";
    int lineNo[4] = {42, 60};
    for (size_t i = 0; i < nFrames; i++) {
        Frame *f = frames + i;
        assert(strstr(actual + f->fileOffset, expected + f->fileOffset));
        assert(strcmp(actual + f->functionOffset, expected + f->functionOffset) == 0);
        assert(f->lineno == lineNo[i]);
    }
    func2();
}

int main() {
    func1();
}
