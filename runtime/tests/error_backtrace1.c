#include <assert.h>
#include "string_utils.h"

HASH_DEFINE_KEY;

void func3() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func3 error"), 7);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_backtrace_print(ep, 1, stdout);
}

void func2() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func2 error"), 13);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_backtrace_print(ep, 1, stdout); 
    func3();
}

void func1() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 20);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_backtrace_print(ep, 1, stdout);
    func2();
}

int main() {
    func1();
}
