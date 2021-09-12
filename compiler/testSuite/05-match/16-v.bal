// @productions match-stmt return-stmt unary-expr additive-expr any function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(foo(1)); // @output 0
    io:println(foo(2)); // @output 1
    io:println(foo(3)); // @output 2
    io:println(foo(4)); // @output -1
}

public function foo(any x) returns int {
    match x {
        1|2|3 => {
            return x - 1;
        }
    }
    return -1;
}
