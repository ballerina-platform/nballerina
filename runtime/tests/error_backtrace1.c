#include <assert.h>
#include "string_utils.h"

HASH_DEFINE_KEY;

void func3() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func3 error"), 7);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_trace_print(ep);
    PC *pcs = (PC *)ep->pcs;
    uint32_t npcs = ep->npcs;
    assert(npcs == 7);
}

void func2() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func2 error"), 16);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_trace_print(ep);
    PC *pcs = (PC *)ep->pcs;
    uint32_t npcs = ep->npcs;
    assert(npcs == 6);
    func3();
}

void func1() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("Func1 error"), 26);
    ErrorPtr ep = (ErrorPtr)taggedToPtr(taggedErr);
    _bal_error_trace_print(ep);
    PC *pcs = (PC *)ep->pcs;
    uint32_t npcs = ep->npcs;
    assert(npcs == 5);
    func2();
}

int main() {
    func1();
}
