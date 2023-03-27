import ballerina/io;

type P function(int) returns int;
type Q function(int, int) returns int;
type R function(P, Q, int, int...) returns int;

public function main() {
    R x = fooBar;
    io:println(x(foo, bar, 1)); // @output 2
    io:println(x(foo, bar, 1, 2)); // @output 3
    io:println(x(foo, bar, 1, 2, 3)); // @output 6
    io:println(x(foo, bar, 1, 2, 3, 4)); // @output 10
}

function bar(int x, int y) returns int {
    return x + y;
}

function foo(int x) returns int {
    return x + 1;
}

function fooBar(P single, Q pair, int x, int... y) returns int {
    if y.length() == 0 {
        return single(x);
    }
    int curr = pair(x, y[0]);
    foreach int i in 1 ..< y.length() {
        curr = pair(curr, y[i]);
    }
    return curr;
}
