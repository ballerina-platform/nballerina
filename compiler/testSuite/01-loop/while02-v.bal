// @productions while-stmt relational-expr additive-expr function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    printInts(5);
    // @output 0
    // @output 1
    // @output 2
    // @output 3
    // @output 4
}

function printInts(int maxExclusive) {
    int i = 0;
    while i < maxExclusive {
        io:println(i);
        i = i + 1;
    }
}