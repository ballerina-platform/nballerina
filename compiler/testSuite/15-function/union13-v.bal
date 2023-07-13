import ballerina/io;
type F function(int) returns int;
type G function(int);

type FG F|G;

public function main() {
    FG f = foo;
    int? res = f(1);
    io:println(res); // @output 2
    f = bar;
    res = f(10); // @output 10
    io:println(res); // @output  
}

function foo(int x) returns int {
    return x + 1;
}

function bar(int x) {
    io:println(x);
}
