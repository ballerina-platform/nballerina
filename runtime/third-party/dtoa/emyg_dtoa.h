/* emyg_dtoa.h */

// 25 + 1 should be enough, 40 just to be safe, and align
#define EMYG_DTOA_BUFFER_LEN 40

void emyg_dtoa (double value, char* buffer);
void emyg_dtoa_non_special (double value, char* buffer);
