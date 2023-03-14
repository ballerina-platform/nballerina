import ballerina/io;
import root.functions;
type F function(int, int) returns int;

public function main() {
    F foo = functions:sum;
    io:println(foo(1, 2)); // @output 3
    functions:BinaryFn bar = functions:sum;
    io:println(bar(2, 2)); // @output 4
}
