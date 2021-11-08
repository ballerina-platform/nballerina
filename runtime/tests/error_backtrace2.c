#include <assert.h>
#include <stdio.h>

#include "string_utils.h"

HASH_DEFINE_KEY;

// We have to check the function and filename seperately
// because filepath is not a constant
static const ExpectedTrace expectedTrace1[] = {
    { "    func2 ", "error_backtrace2.c:48" },
    { "    func1 ", "error_backtrace2.c:40" },
    { "    func2 ", "error_backtrace2.c:45" },
    { "    func1 ", "error_backtrace2.c:40" },
    { "    func2 ", "error_backtrace2.c:45" },
    { "    func1 ", "error_backtrace2.c:40" },
    { "    genAndCmpTrace ", "error_backtrace2.c:57" },
    { "    main ", "error_backtrace2.c:65" }
};

static const ExpectedTrace expectedTrace2[] = {
    { "    func2 ", "error_backtrace2.c:48" },
    { "    func1 ", "error_backtrace2.c:40" },
    { "    func2 ", "error_backtrace2.c:45" },
    { "    func1 ", "error_backtrace2.c:40" },
    { "    func2 ", "error_backtrace2.c:45" },
    { "    func1 ", "error_backtrace2.c:40" },
    { "    genAndCmpTrace ", "error_backtrace2.c:57" },
    { "    main ", "error_backtrace2.c:66" }
};

void func2(int, FILE *fp, uint32_t traceStart);
void func1(int, FILE *fp, uint32_t traceStart);

int decrement(int i) {
    return --i;
}

void func1(int j, FILE *fp, uint32_t traceStart) {
    func2(decrement(j), fp, traceStart);
}

void func2(int j, FILE *fp, uint32_t traceStart) {
    if (j >= 0) {
        func1(decrement(j), fp, traceStart);
    } 
    else {
        TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 48);
        ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
        _bal_error_backtrace_print(ep, traceStart, fp);
    }
}

bool genAndCmpTrace(uint32_t traceStart, const ExpectedTrace expectedTrace[]) {
    FILE *fp = tmpfile();
    assert(fp != NULL);
    func1(3, fp, traceStart);
    rewind(fp);
    bool res = cmpTrace(fp, expectedTrace);
    fclose(fp);
    return res;
}

int main() {
    if (!genAndCmpTrace(1, expectedTrace1)) {
        assert(genAndCmpTrace(2, expectedTrace2));
    }
}
