import ballerina/io;
type F function(int, int, int...);

public function main() {
    F f = foo;
    f(1, 2, 3, 4, 5); // @output 15
    F g = bar;
    g(1, 2, 3, 4, 5); // @output 120
}

function foo(int init, int... rest) {
    int result = init;
    foreach int i in 0..< rest.length() {
        result += rest[i];
    }
    io:println(result);
}

function bar(int... rest) {
    int result = 1;
    foreach int i in 0..< rest.length() {
        result *= rest[i];
    }
    io:println(result);
}
