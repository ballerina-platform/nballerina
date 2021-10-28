// @productions match-stmt string-literal unary-expr any function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int n = 1;
    foo(-n); // @output hit
}

function foo(any v) {
    match v {
        1 => {
            io:println("miss");
        }
        -1 => {
            io:println("hit");
        }
    }
}