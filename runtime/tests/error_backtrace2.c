#include <assert.h>
#include <stdio.h>

#include "string_utils.h"

HASH_DEFINE_KEY;

// We have to check the function and filename seperately
// because filepath is not a constant
static const ExpectedTrace expectedTrace[] = {
    { "    func2 ", "error_backtrace2.c:36" },
    { "    func1 ", "error_backtrace2.c:28" },
    { "    func2 ", "error_backtrace2.c:33" },
    { "    func1 ", "error_backtrace2.c:28" },
    { "    func2 ", "error_backtrace2.c:33" },
    { "    func1 ", "error_backtrace2.c:28" },
    { "    main ", "error_backtrace2.c:45" }
};

void func2(int, FILE *fp);
void func1(int, FILE *fp);

int decrement(int i) {
    return --i;
}

void func1(int j, FILE *fp) {
    func2(decrement(j), fp);
}

void func2(int j, FILE *fp) {
    if (j >= 0) {
        func1(decrement(j), fp);
    } 
    else {
        TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 36);
        ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
        _bal_error_backtrace_print(ep, 1, fp);
    }
}

int main() {
    FILE *fp = fopen("/tmp/backtrace.txt", "w+");
    assert(fp != NULL);
    func1(3, fp);
    rewind(fp);
    compareBacktrace(fp, expectedTrace);
    fclose(fp);
}
