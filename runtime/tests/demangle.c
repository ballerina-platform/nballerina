#include "../balrt.h"
#include "../hash.h"
#include <stdio.h>
#include <assert.h>

#define NAMES_COUNT 25

HASH_DEFINE_KEY;

const char input[NAMES_COUNT][60] = {
    "_Bb02ioprintln",                                       // ballerina/io.println
    "_B_foo",                                               // foo
    "_B_foo_bar_baz",                                       // foo_bar_baz
    "_B_foo23",                                             // foo23
    "_Bb1x6choreohello",                                    // ballerinax/choreo.hello
    "_Bb0m4lang5valuetoString",                             // ballerina/lang.value.toString
    "_B4wso2m10nballerinam5front6syntaxparse",              // wso2/nballerina.front.syntax.parse
    "_B0m7foo_bar3bazhello",                                // foo_bar.baz.hello
    "_Bb1__2ioprintln",                                     // ballerina_/io.println
    "_Bb1_22ioprintln",                                     // ballerina2/io.println
    "_Bb2_232ioprintln",                                    // ballerina23/io.println
    "_Bb10_1234_x12342ioprintln",                           // ballerina1234_x1234/io.println
    "_Bb10_1234_x1234m10nballerinam5front6syntaxparse",     // ballerina1234_x1234/nballerina.front.syntax.parse
    "_B10_1234_x1234m10nballerinam5front6syntaxparse",      // 1234_x1234/nballerina.front.syntax.parse
    "_B1__m10nballerinam5front6syntaxparse",                // _/nballerina.front.syntax.parse
    "_Bb0m1__2ioprintln",                                   // ballerina/_.io.println
    "_Bb0m1_22ioprintln",                                   // ballerina/2.io.println
    "_Bb0m7foo_bar2ioprintln",                              // ballerina/foo_bar.io.println
    "_Bb0m7foo_barm4__bar2ioprintln",                       // ballerina/foo_bar._bar.io:println
    "_Bb0m7foo_barm4_2bar2ioprintln",                       // ballerina/foo_bar.2bar.io:println
    "_Bb0m7foo_barm4_2bar3__ioprintln",                     // ballerina/foo_bar.2bar._io:println
    "_Bb0m7foo_barm4_2bar2io_println",                      // ballerina/foo_bar.2bar.io:_println
    "_Bb0m7foo_barm4_2bar2io_3println",                     // ballerina/foo_bar.2bar.io:_println
    "_Bb0m7foo_barm4_2bar21new_nballerina_module_3println", // ballerina/foo_bar.2bar.new_nballerina_module:_3println
    "_Bb0m7foo_barm4_2bar20new_ballerina_module_3println"   // ballerina/foo_bar.2bar.new_ballerina_module:_3println
};

const char expectedOutput[NAMES_COUNT][50] = {
    "io:println\n",
    "foo\n",
    "foo_bar_baz\n",
    "foo23\n",
    "choreo:hello\n",
    "lang.value:toString\n",
    "nballerina.front.syntax:parse\n",
    "foo_bar.baz:hello\n",
    "io:println\n",
    "io:println\n",
    "io:println\n",
    "io:println\n",
    "nballerina.front.syntax:parse\n",
    "nballerina.front.syntax:parse\n",
    "nballerina.front.syntax:parse\n",
    "_.io:println\n",
    "2.io:println\n",
    "foo_bar.io:println\n",
    "foo_bar._bar.io:println\n",
    "foo_bar.2bar.io:println\n",
    "foo_bar.2bar._io:println\n",
    "foo_bar.2bar.io:_println\n",
    "foo_bar.2bar.io:_3println\n",
    "foo_bar.2bar.new_nballerina_module:_3println\n",
    "foo_bar.2bar.new_ballerina_module:_3println\n"
};

int main() {
    FILE *fp = fopen("/tmp/demangle.txt", "w+");
    assert(fp != NULL);

    for (int i = 0; i < NAMES_COUNT; i++) {
        _bal_print_mangled_name(input[i], fp);
        // The new line is considered as the end of demangled name
        fputc('\n', fp);
    }
    
    rewind(fp);
    int line = 0;
    int column = 0;
    while (true) {
        char c = fgetc(fp);
        if (c == EOF) {
            break;
        }
        assert(expectedOutput[line][column] == c);
        if (c == '\n') {
            line++;
            column = 0;
            continue;
        }
        column++;
    }
    fclose(fp);
}
