import ballerina/io;
type F function(int);
public function main() {
    F f = foo;
    f(1); // @output 1
}

function foo(int|boolean val) {
    io:println(val);
}
