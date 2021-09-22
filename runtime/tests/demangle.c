#include "../balrt.h"
#include "../hash.h"
#include <stdio.h>
#include <assert.h>

#define NAMES_COUNT 30

HASH_DEFINE_KEY;

typedef struct {
    char subject[60];
    char expected[60];
} DemangleTestCase;

static const DemangleTestCase tests[] = {
    { "_Bb02ioprintln", "println (ballerina/io)" },
    { "_B_foo", "foo" },                               
    { "_B_foo_bar_baz", "foo_bar_baz" },
    { "_B_foo23", "foo23" },
    { "_Bb1x6choreohello", "hello (ballerinax/choreo)" },
    { "_Bb0m4lang5valuetoString", "toString (ballerina/lang.value)" },
    { "_B4wso2m10nballerinam5front6syntaxparse", "parse (wso2/nballerina.front.syntax)" },
    { "_B0m7foo_bar3bazhello", "hello (foo_bar.baz)" },
    { "_Bb1__2ioprintln", "println (ballerina_/io)" },
    { "_Bb1_22ioprintln", "println (ballerina2/io)" },
    { "_Bb2_232ioprintln", "println (ballerina23/io)" },
    { "_Bb10_1234_x12342ioprintln", "println (ballerina1234_x1234/io)" },
    { "_Bb10_1234_x1234m10nballerinam5front6syntaxparse", "parse (ballerina1234_x1234/nballerina.front.syntax)" },
    { "_B10_1234_x1234m10nballerinam5front6syntaxparse", "parse (1234_x1234/nballerina.front.syntax)" },
    { "_B1__m10nballerinam5front6syntaxparse", "parse (_/nballerina.front.syntax)" },
    { "_Bb0m1__2ioprintln", "println (ballerina/_.io)" },
    { "_Bb0m1_22ioprintln", "println (ballerina/2.io)" },
    { "_Bb0m7foo_bar2ioprintln", "println (ballerina/foo_bar.io)" },
    { "_Bb0m7foo_barm4__bar2ioprintln", "println (ballerina/foo_bar._bar.io)" },
    { "_Bb0m7foo_barm4_2bar2ioprintln", "println (ballerina/foo_bar.2bar.io)" },
    { "_Bb0m7foo_barm4_2bar3__ioprintln", "println (ballerina/foo_bar.2bar._io)" },
    { "_Bb0m7foo_barm4_2bar2io_println", "_println (ballerina/foo_bar.2bar.io)" },
    { "_Bb0m7foo_barm4_2bar2io_3println", "_3println (ballerina/foo_bar.2bar.io)" },
    { "_Bb0m7foo_barm4_2bar21new_nballerina_module_3println", "_3println (ballerina/foo_bar.2bar.new_nballerina_module)" },
    { "_Bb0m7foo_barm4_2bar20new_ballerina_module_3println", "_3println (ballerina/foo_bar.2bar.new_ballerina_module)" },
    { "foo", "foo" },
    { "_bal_rt_func", "_bal_rt_func" },
    { "", "" },
    { "_Bxyz", "_Bxyz" },
    { "_", "_" },
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
