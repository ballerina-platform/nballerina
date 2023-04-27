import ballerina/io;
type F function(int);
type G function(byte);

public function main() {
    F|G f = foo;
    f(1); //@output 1
}

function foo(int x) {
    io:println(x);
}
