#include <stdio.h>

#include "balrt.h"
#include "hash.h"
#include "gc-roots/include/api.h"

char *_bal_stack_guard;
extern void _bal_main();
extern void _bal_init_heap();
extern void set_statepoint_table(statepoint_table_t*);
extern uint8_t __LLVM_StackMaps;

HASH_DEFINE_KEY;

void gc_init() {
    statepoint_table_t* table = generate_table((void*) &__LLVM_StackMaps, 0.5);
    set_statepoint_table(table);
    // print_table(stdout, table, true);
    // printf("\n\n");
}

int main() {
    _bal_stack_guard = __builtin_frame_address(0) - STACK_SIZE;
    gc_init();
    _bal_init_heap();
    _bal_main();
    return 0;
}
