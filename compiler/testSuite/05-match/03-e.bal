// @productions match-stmt string-literal any function-call-expr int-literal
import ballerina/io;

public function main() {
    foo(1);
}

function foo(any v) {
    match v {
        1|2|1 => { // @error
            io:println("hit");
        }
    }
}
