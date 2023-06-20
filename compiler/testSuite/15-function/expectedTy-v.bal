import ballerina/io;
type F1 function(float) returns boolean;
type F2 function(string) returns boolean;

type F F1&F2;

public function main() {
    F f = foo;
    float a = 1;
    io:println(f(a)); //@output true
    io:println(f(1)); //@output true
}

function foo(float|string a) returns boolean {
    return a is float;
}
