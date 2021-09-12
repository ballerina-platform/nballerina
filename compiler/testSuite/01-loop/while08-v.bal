// @productions while-stmt boolean-literal function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    foo();
}

function foo() {
    boolean b = false;
    while b {
        io:println(0);
    }
}
