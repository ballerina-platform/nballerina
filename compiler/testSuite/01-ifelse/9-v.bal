// @productions if-else-stmt boolean-literal function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    printTrue(); // @output 1
    printFalse(); // @output 0
}

function printTrue() {
    if true {
        io:println(1);
    }
}

function printFalse() {
    boolean b = false;
    if b {
        io:println(1);
    } else {
        io:println(0);
    }
}