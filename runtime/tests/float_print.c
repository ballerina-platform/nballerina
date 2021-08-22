#include "test_utils.h"
#include "../third-party/dtoa/emyg_dtoa.h"

void testFloatRoundTrip() {
    char buf[EMYG_DTOA_BUFFER_LEN];
    int len;
    char* usedBuf;
    for (int i = 0; i < NTESTS; i++) {
        double d = randDouble(false);
        if (d == 0.0 || isinf(d)) {
            continue;
        }
        emyg_dtoa_non_special(d, buf);
        len = strlen(buf);

        double roundTripD = strtod(buf, &usedBuf);

        assert(len <= 25);
        assert(usedBuf - buf == len);
        assert(roundTripD == d);
    }
}

int main() {
    srand(1);
    testFloatRoundTrip();
    return 0;
}
