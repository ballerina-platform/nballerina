#include <assert.h>
#include "string_utils.h"

HASH_DEFINE_KEY;

void func3() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func3 error"), 7);
    ErrorPtr er = (ErrorPtr)taggedToPtr(taggedErr);
    Frame *frames = (Frame *)er->frames;
    uint32_t nFrames = er->nFrames;
    assert(nFrames == 4);
    char *actual = (char *)(frames + nFrames);
    char *expected = "tests/error_backtrace1.c\0func3\0func2\0func1\0main\0";
    int exp_idx = 0;
    int act_idx = 0;
    assert(strstr(actual, expected));
    for (size_t i = 0; i < 4; i++) {
        exp_idx = nextStrLocationFrom(exp_idx, expected);
        act_idx = nextStrLocationFrom(act_idx, actual);
        assert(strstr(actual + act_idx, expected + exp_idx));
    }
}

void func2() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func2 error"), 25);
    ErrorPtr er = (ErrorPtr)taggedToPtr(taggedErr);
    Frame *frames = (Frame *)er->frames;
    uint32_t nFrames = er->nFrames;
    assert(nFrames == 3);
    char *actual = (char *)(frames + nFrames);
    char *expected = "tests/error_backtrace1.c\0func2\0func1\0main\0";
    int exp_idx = 0;
    int act_idx = 0;
    assert(strstr(actual, expected));
    for (size_t i = 0; i < 3; i++) {
        exp_idx = nextStrLocationFrom(exp_idx, expected);
        act_idx = nextStrLocationFrom(act_idx, actual);
        assert(strstr(actual + act_idx, expected + exp_idx));
    }
    func3();
}

void func1() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 44);
    ErrorPtr er = (ErrorPtr)taggedToPtr(taggedErr);
    Frame *frames = (Frame *)er->frames;
    uint32_t nFrames = er->nFrames;
    assert(nFrames == 2);
    char *actual = (char *)(frames + nFrames);
    char *expected = "tests/error_backtrace1.c\0func1\0main\0";
    int exp_idx = 0;
    int act_idx = 0;
    assert(strstr(actual, expected));
    for (size_t i = 0; i < 2; i++) {
        exp_idx = nextStrLocationFrom(exp_idx, expected);
        act_idx = nextStrLocationFrom(act_idx, actual);
        assert(strstr(actual + act_idx, expected + exp_idx));
    }
    func2();
}

int main() {
    func1();
}
