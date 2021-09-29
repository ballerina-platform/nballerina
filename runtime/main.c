#include "balrt.h"
#include "hash.h"

char *_bal_stack_guard;
extern void _bal_main();

HASH_DEFINE_KEY;

int main() {
    _bal_stack_guard = __builtin_frame_address(0) - STACK_SIZE;
    _bal_main();
    return 0;
} 
