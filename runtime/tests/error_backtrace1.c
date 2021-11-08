#include <assert.h>
#include "string_utils.h"

HASH_DEFINE_KEY;

void func3(FILE *fp) {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func3 error"), 7);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_backtrace_print(ep, 1, fp);
}

void func2(FILE *fp) {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func2 error"), 13);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_backtrace_print(ep, 1, fp); 
    func3(fp);
}

void func1(FILE *fp) {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 20);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_backtrace_print(ep, 1, fp);
    func2(fp);
}

int main() {
    FILE *fp = fopen("backtrace.txt", "w+");
    assert(fp != NULL);
    func1(fp);
    fclose(fp);
}
