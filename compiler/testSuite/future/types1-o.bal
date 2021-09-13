// @productions function-call-expr int-literal
import ballerina/io;

public function main() {
    foo(17); // @output 17
}

function foo(int|int n) returns () {
    io:println(n); 
}
