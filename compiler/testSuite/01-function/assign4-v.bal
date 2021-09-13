// @productions boolean if-else-stmt boolean-literal function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    boolean b = false;
    printBoolean(b); // @output 0
    b = true;
    printBoolean(b); // @output 1
    b = false;
    printBoolean(b); // @output 0
}

function printBoolean(boolean b) {
    if b {
        io:println(1);
    }
    else {
        io:println(0);
    }
}