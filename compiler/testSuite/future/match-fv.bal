// @productions match-stmt string-literal any function-call-expr int-literal
import ballerina/io;

// This fails because of https://github.com/ballerina-platform/ballerina-lang/issues/32098

public function main() {
    io:println(foo(0)); // @output zero
    io:println(foo(())); // @output nil
}

function foo(any v) {
    match v {
        0 => {
            io:println("zero");
        }
        () => {
            io:println("nil");
        }
    }
}
