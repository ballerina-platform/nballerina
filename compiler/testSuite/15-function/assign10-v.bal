import ballerina/io;
import root.functions;
type F function(int, int) returns int;
type FooFn function(int) returns int;

public function main() {
    F x = functions:sum;
    io:println(x(1, 2)); // @output 3
    functions:BinaryFn y = functions:sum;
    io:println(y(2, 2)); // @output 4

    FooFn f = functions:foo;
    io:println(f(1)); // @output 2
    f = foo;
    io:println(f(1)); // @output 3
}

function foo(int i) returns int {
    return i + 2;
}
