// @productions module-const-decl match-stmt string-literal function-call-expr int-literal
import ballerina/io;

public function main() {
    foo(1); // @output one
    foo(0); // @output none
    foo(2); // @output two
    foo(17); // @output many
}

const ZERO = 0;
const ONE = 1;
const TWO = 2;

function foo(int v) {
    match v {
        ZERO => {
            io:println("none");
        }
        ONE => {
            io:println("one");
        }
        TWO => {
            io:println("two");
        }
        _ => {
            io:println("many");
        }
    }
}