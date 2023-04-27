import ballerina/io;
type F function(int) returns int;
type G function(int) returns string;

type FG F|G;

public function main() {
    FG f = foo;
    int|string res = f(1);
    io:println(res); // @output 2
    f = bar;
    res = f(10);
    io:println(res); // @output bar
}

function foo(int x) returns int {
    return x + 1;
}

function bar(int x) returns string {
    return "bar";
}
