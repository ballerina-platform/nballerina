#include "balrt.h"
#include "hash.h"

char *_bal_stack_guard;
extern void _B_main();

HASH_DEFINE_KEY;

int main() {
    _bal_stack_guard = __builtin_frame_address(0) - STACK_SIZE;
    _B_main();
    return 0;
} 
