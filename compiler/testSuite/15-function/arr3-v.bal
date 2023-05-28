import ballerina/io;
type F function(byte, byte) returns int;

public function main() {
    F[] funcs = [foo, bar, baz];
    int[] results = exec(funcs, 2, 3);
    io:println(results); // @output [6,5,5]
}

function exec(F[] funcs, byte a, byte b) returns int[] {
    int[] results = [];
    foreach int i in 0..< funcs.length() {
        F func = funcs[i];
        results.push(func(a, b));
    }
    return results;
}

function foo(int a, int b) returns int {
    return a * b;
}

function bar(byte... vals) returns int {
    int sum = 0;
    foreach int i in 0 ..< vals.length() {
        sum += vals[i];
    }
    return sum;
}

function baz(int... vals) returns int {
    int sum = 0;
    foreach int i in 0 ..< vals.length() {
        sum += vals[i];
    }
    return sum;
}
