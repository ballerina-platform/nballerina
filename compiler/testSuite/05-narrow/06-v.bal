// @productions is-expr string-literal type-cast-expr if-else-stmt boolean-literal return-stmt unary-expr additive-expr any function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    io:println(add(1, 2)); // @output 3
    io:println(add(2, false)); // @output 2
    io:println(add("hello", false)); // @output -1
}

function add(any x, any y) returns int {
    any n = x;
    if n is int {
        if y is int {
            n = n + y;
            return <int>n;
        }
        return n;
    }
    return -1;
}
