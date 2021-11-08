#include <assert.h>
#include <stdio.h>
#include "string_utils.h"

HASH_DEFINE_KEY;

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
        TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 23);
        ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
        _bal_error_backtrace_print(ep, 1, fp);
    }
}

int main() {
    FILE *fp = fopen("backtrace.txt", "w+");
    assert(fp != NULL);
    func1(3, fp);
    fclose(fp);
}
