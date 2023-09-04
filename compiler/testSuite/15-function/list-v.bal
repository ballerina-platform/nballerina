import ballerina/io;
type F function(int, int) returns int;

function foo(int... vals) returns int {
    return vals[0];
}

public function main() {
	F[] fs = [foo, function (int a, int b) returns int { return a + b; },
             function(int... vals) returns int { return vals[0] * vals[1]; }];

    F f = fs[0];
    io:println(f(1, 2)); //  @output 1
    f = fs[1];
    io:println(f(1, 2)); //  @output 3
    f = fs[2];
    io:println(f(1, 2)); //  @output 2
}

