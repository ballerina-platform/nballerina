#include "string_utils.h"

HASH_DEFINE_KEY;

void testErrorMsg() {
    TaggedPtr taggedErr = _bal_error_construct(makeString("ERROR MSG"), 64);
    checkStringEq(_bal_get_error_msg(taggedErr), makeString("ERROR MSG"), true);

    taggedErr = _bal_error_construct(makeString("message1, message2, message3"), 3);
    checkStringEq(_bal_get_error_msg(taggedErr), makeString("message1, message2, message3"), true);
}

int main() {
    testErrorMsg();
    return 0;
}
