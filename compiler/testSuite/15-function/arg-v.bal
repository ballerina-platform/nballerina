import ballerina/io;
type F function(int, int) returns int;

public function main() {
    int result = exec(1, 2, function(int a, int b) returns int {
        return a + b;
    });
    io:println(result); // @output 3
}

function exec(int a, int b, F f) returns int {
    return f(a, b);
}
