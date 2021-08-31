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
    char *expected = "tests/error_backtrace.c\0func3\0tests/error_backtrace.c\0func2\0tests/error_backtrace.c\0func1\0tests/error_backtrace.c\0main\0";
    int fileOffset[4] = {0, 30, 60, 90};
    int funcOffset[4] = {24, 54, 84, 114};
    int lineNo[4] = {7, 44, 65, 69};
    for (size_t i = 0; i < nFrames; i++)
    {
        Frame *f = frames + i;
        assert(strstr(actual + f->fileOffset, expected + fileOffset[i]));
        assert(strcmp(actual + f->functionOffset, expected + funcOffset[i]) == 0);
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
    char *expected = "tests/error_backtrace.c\0func2\0tests/error_backtrace.c\0func1\0tests/error_backtrace.c\0main\0";
    int fileOffset[3] = {0, 30, 60};
    int funcOffset[3] = {24, 54, 84};
    int lineNo[4] = {27, 65, 69};
    for (size_t i = 0; i < nFrames; i++)
    {
        Frame *f = frames + i;
        assert(strstr(actual + f->fileOffset, expected + fileOffset[i]));
        assert(strcmp(actual + f->functionOffset, expected + funcOffset[i]) == 0);
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
    char *expected = "tests/error_backtrace.c\0func1\0tests/error_backtrace.c\0main\0";
    int fileOffset[2] = {0, 30};
    int funcOffset[2] = {24, 54};
    int lineNo[4] = {48, 69};
    for (size_t i = 0; i < nFrames; i++)
    {
        Frame *f = frames + i;
        assert(strstr(actual + f->fileOffset, expected + fileOffset[i]));
        assert(strcmp(actual + f->functionOffset, expected + funcOffset[i]) == 0);
        assert(f->lineno == lineNo[i]);
    }
    func2();
}

int main() {
    func1();
}
