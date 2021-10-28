// @productions is-expr while-stmt break-stmt if-else-stmt boolean-literal additive-expr any function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
   foo(1); // @output 2
}

function foo(any v) {
    any x = v;
    if x is int {
        boolean b = true;
        while true {
            if b {
                x = x + 1;
                break;
            }
        }
    }
    io:println(x);
}
