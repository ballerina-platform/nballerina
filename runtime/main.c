#include "balrt.h"

char *_bal_stack_guard;
extern void _B_main();

int main() {
    _bal_stack_guard = __builtin_frame_address(0) - STACK_SIZE;
    _B_main();
    return 0;
} 
