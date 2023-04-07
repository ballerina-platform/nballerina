import ballerina/io;
type F function(int, int, int...) returns int;
type G function(int, int, int...) returns int[];

public function main() {
    F f = foo;
    int result = f(1, 2, 3, 4, 5);
    io:println(result); // @output 15
    F g = bar;
    io:println(g(1, 2, 3, 4, 5)); // @output 120
    io:println(f(g(1,2), g(3,4), 5)); // @output 19
    G h = baz;
    io:println(h(1, 2, 3)); // @output [1,3,6]
}

function foo(int init, int... rest) returns int {
    int result = init;
    foreach int i in 0..< rest.length() {
        result += rest[i];
    }
    return result;
}

function bar(int... rest) returns int {
    int result = 1;
    foreach int i in 0..< rest.length() {
        result *= rest[i];
    }
    return result;
}

function baz(int init, int... rest) returns int[] {
    int[] result = [init];
    int current = init;
    foreach int i in 0..< rest.length() {
        current += rest[i];
        result.push(current);
    }
    return result;
}
