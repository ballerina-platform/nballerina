#include <assert.h>
#include <stdio.h>

#include "string_utils.h"

HASH_DEFINE_KEY;

void func2(int);
void func1(int);

int decrement(int i) {
    return --i;
}

void func1(int j) {
    func2(decrement(j));
}

void func2(j) {
    if (j >= 0) {
        func1(decrement(j));
    } 
    else {
        TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 24);
        ErrorPtr er = (ErrorPtr)taggedToPtr(taggedErr);
        Frame *frames = (Frame *)er->frames;
        uint32_t nFrames = er->nFrames;
        char *act = (char *)(frames + nFrames);        
        assert(nFrames == 7);
        char *actual = (char *)(frames + nFrames);
        char *expected = "tests/error_backtrace2.c\0func2\0func1\0main\0";
        int exp_idx = 0;
        int act_idx = 0;
        assert(strstr(actual, expected));
        for (size_t i = 0; i < 3; i++) {
            exp_idx = nextStrLocationFrom(exp_idx, expected);
            act_idx = nextStrLocationFrom(act_idx, actual);
            assert(strstr(actual + act_idx, expected + exp_idx));
        }
    }
}

int main() {
    func1(3);
}
