#include <assert.h>
#include "string_utils.h"

HASH_DEFINE_KEY;

// We have to check the function and filename seperately
// because filepath is not a constant
static const ExpectedTrace expectedTrace1[] = {
    { "    func1 ", "error_backtrace1.c:56" },
    { "    main ", "error_backtrace1.c:66" }
};

static const ExpectedTrace expectedTrace2[] = {
    { "    func2 ", "error_backtrace1.c:46" },
    { "    func1 ", "error_backtrace1.c:62" },
    { "    main ", "error_backtrace1.c:66" }
};

static const ExpectedTrace expectedTrace3[] = {
    { "    func3 ", "error_backtrace1.c:37" },
    { "    func2 ", "error_backtrace1.c:52" },
    { "    func1 ", "error_backtrace1.c:62" },
    { "    main ", "error_backtrace1.c:66" }
};

bool genAndCmpTrace(ErrorPtr ep, const ExpectedTrace expectedTrace[], uint32_t traceStart) {
    FILE *fp = tmpfile();
    assert(fp != NULL);
    _bal_error_backtrace_print(ep, traceStart, fp);
    rewind(fp);
    bool res = cmpTrace(fp, expectedTrace);
    fclose(fp);
    return res;    
}

void func3() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func3 error"), 37);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);

    if (!genAndCmpTrace(ep, expectedTrace3, 1)) {
        assert(genAndCmpTrace(ep, expectedTrace3, 2));
    }
}

void func2() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func2 error"), 46);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);

    if (!genAndCmpTrace(ep, expectedTrace2, 1)) {
        assert(genAndCmpTrace(ep, expectedTrace2, 2));
    }   
    func3();
}

void func1() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 56);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);

    if (!genAndCmpTrace(ep, expectedTrace1, 1)) {
        assert(genAndCmpTrace(ep, expectedTrace1, 2));
    }
    func2();
}

int main() {
    func1();
}
