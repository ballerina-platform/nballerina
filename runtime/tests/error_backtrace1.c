#include <assert.h>
#include "string_utils.h"

HASH_DEFINE_KEY;

// We have to check the function and filename seperately
// because filepath is not a constant
static const ExpectedTrace expectedTrace1[] = {
    { "    func1 ", "error_backtrace1.c:52" },
    { "    main ", "error_backtrace1.c:65" }
};

static const ExpectedTrace expectedTrace2[] = {
    { "    func2 ", "error_backtrace1.c:39" },
    { "    func1 ", "error_backtrace1.c:61" },
    { "    main ", "error_backtrace1.c:65" }
};

static const ExpectedTrace expectedTrace3[] = {
    { "    func3 ", "error_backtrace1.c:27" },
    { "    func2 ", "error_backtrace1.c:48" },
    { "    func1 ", "error_backtrace1.c:61" },
    { "    main ", "error_backtrace1.c:65" }
};

void func3() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func3 error"), 27);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);

    FILE *fp = tmpfile();
    assert(fp != NULL);
    _bal_error_backtrace_print(ep, 1, fp);
    rewind(fp);
    compareBacktrace(fp, expectedTrace3);
    fclose(fp);
}

void func2() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func2 error"), 39);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);

    FILE *fp = tmpfile();
    assert(fp != NULL);
    _bal_error_backtrace_print(ep, 1, fp);
    rewind(fp);
    compareBacktrace(fp, expectedTrace2);
    fclose(fp);
    func3();
}

void func1() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 52);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);

    FILE *fp = tmpfile();
    assert(fp != NULL);
    _bal_error_backtrace_print(ep, 1, fp);
    rewind(fp);
    compareBacktrace(fp, expectedTrace1);
    fclose(fp);
    func2();
}

int main() {
    func1();
}
