// @productions float is-expr if-else-stmt floating-point-literal return-stmt any function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(foo(1.5)); // @output 1.5
    io:println(foo(0.5)); // @output 0.5
    io:println(foo(17)); // @output 2.5
}

function foo(any v) returns float {
    if v is float {
        return v;
    }
    else {
        return 2.5;
    }
}
