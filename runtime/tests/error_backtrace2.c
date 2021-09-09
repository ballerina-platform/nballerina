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
        ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
        _bal_error_backtrace_print(ep, 1);
        PC *pcs = (PC *)ep->pcs;
        uint32_t nPCs = ep->nPCs;
        assert(nPCs >= 7);
    }
}

int main() {
    func1(3);
}
