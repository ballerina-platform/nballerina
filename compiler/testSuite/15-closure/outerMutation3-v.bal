import ballerina/io;
type F function(int) returns int;

function runner(F f, int val) returns int {
    return f(val);
}

public function main() {
    int v1 = 10;
    int v2 = 20;
    int res = v1 + runner(function(int a) returns int {
        v1 += a;
        return 5;
    }, 2) + v1 + v2 + runner(function(int b) returns int {
        v2 += v1;
        return 0;
    }, 2);
    io:println(res); // @output 47
    io:println(v1); // @output 12
    io:println(v2); // @output 32
}
