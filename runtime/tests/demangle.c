#include "../balrt.h"
#include "../hash.h"
#include <stdio.h>
#include <assert.h>

#define NAMES_COUNT 28

HASH_DEFINE_KEY;

typedef struct {
    char subject[60];
    char expected[60];
} DemangleTestCase;

static const DemangleTestCase tests[] = {
    { "_Bb02ioprintln", "io:println" },
    { "_B_foo", "foo" },                               
    { "_B_foo_bar_baz", "foo_bar_baz" },
    { "_B_foo23", "foo23" },
    { "_Bb1x6choreohello", "choreo:hello" },
    { "_Bb0m4lang5valuetoString", "lang.value:toString" },
    { "_B4wso2m10nballerinam5front6syntaxparse", "nballerina.front.syntax:parse" },
    { "_B0m7foo_bar3bazhello", "foo_bar.baz:hello" },
    { "_Bb1__2ioprintln", "io:println" },
    { "_Bb1_22ioprintln", "io:println" },
    { "_Bb2_232ioprintln", "io:println" },
    { "_Bb10_1234_x12342ioprintln", "io:println" },
    { "_Bb10_1234_x1234m10nballerinam5front6syntaxparse", "nballerina.front.syntax:parse" },
    { "_B10_1234_x1234m10nballerinam5front6syntaxparse", "nballerina.front.syntax:parse" },
    { "_B1__m10nballerinam5front6syntaxparse", "nballerina.front.syntax:parse" },
    { "_Bb0m1__2ioprintln", "_.io:println" },
    { "_Bb0m1_22ioprintln", "2.io:println" },
    { "_Bb0m7foo_bar2ioprintln", "foo_bar.io:println" },
    { "_Bb0m7foo_barm4__bar2ioprintln", "foo_bar._bar.io:println" },
    { "_Bb0m7foo_barm4_2bar2ioprintln", "foo_bar.2bar.io:println" },
    { "_Bb0m7foo_barm4_2bar3__ioprintln", "foo_bar.2bar._io:println" },
    { "_Bb0m7foo_barm4_2bar2io_println", "foo_bar.2bar.io:_println" },
    { "_Bb0m7foo_barm4_2bar2io_3println", "foo_bar.2bar.io:_3println" },
    { "_Bb0m7foo_barm4_2bar21new_nballerina_module_3println", "foo_bar.2bar.new_nballerina_module:_3println" },
    { "_Bb0m7foo_barm4_2bar20new_ballerina_module_3println", "foo_bar.2bar.new_ballerina_module:_3println" },
    { "foo", "foo" },
    { "_bal_rt_func", "_bal_rt_func" },
    { "", "" }
};

int main() {
    FILE *fp = fopen("/tmp/demangle.txt", "w+");
    assert(fp != NULL);

    for (int i = 0; i < NAMES_COUNT; i++) {
        _bal_print_mangled_name(tests[i].subject, fp);
        fputc('\n', fp);
    }
    
    rewind(fp);
    int i = 0;
    int j = 0;
    while (true) {
        char c = fgetc(fp);
        if (c == EOF) {
            break;
        }
        if (c == '\n') {
            assert(tests[i].expected[j] == '\0');
            i++;
            j = 0;
            continue;
        }
        assert(tests[i].expected[j] == c);
        j++;
    }
    fclose(fp);
}
