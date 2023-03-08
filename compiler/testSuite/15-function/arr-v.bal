import ballerina/io;
type F function(int, int) returns int;

public function main() {
    io:println(fold(sum, [1, 2, 3, 4, 5], 0)); // @output 15
    io:println(fold(mul, [1, 2, 3, 4, 5], 1)); // @output 120
}

function fold(F f, int[] a, int init) returns int {
    int result = init;
    foreach int i in 0..<a.length() {
        result = f(result, a[i]);
    }
    return result;
}

function sum(int a, int b) returns int {
    return a + b;
}

function mul(int a, int b) returns int {
    return a * b;
}
