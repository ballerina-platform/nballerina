#include <stdint.h>
#include <stdlib.h>

#define TAG_MASK 0xFF00000000000000UL

extern char *pack(char *ptr, uint64_t tag);
extern char *unpackPtr(char *);
extern uint64_t unpackTag(char *);
extern int64_t extractInt(char *);


