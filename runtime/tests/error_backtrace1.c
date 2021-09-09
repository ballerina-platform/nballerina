#include <assert.h>
#include "string_utils.h"

HASH_DEFINE_KEY;

void func3() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func3 error"), 7);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_backtrace_print(ep, 1);
    PC *pcs = (PC *)ep->pcs;
    uint32_t nPCs = ep->nPCs;
    assert(nPCs >= 4);
}

void func2() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func2 error"), 16);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_backtrace_print(ep, 1);
    PC *pcs = (PC *)ep->pcs;
    uint32_t nPCs = ep->nPCs;
    assert(nPCs >= 3);
    func3();
}

void func1() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 26);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_backtrace_print(ep, 1);
    PC *pcs = (PC *)ep->pcs;
    uint32_t nPCs = ep->nPCs;
    assert(nPCs >= 2);
    func2();
}

int main() {
    func1();
}
