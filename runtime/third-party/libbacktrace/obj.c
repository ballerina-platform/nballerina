#include "config.h"

#ifdef __linux__
#include "elf.c"
#elif __APPLE__
#include "macho.c"
#endif
