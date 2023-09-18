import ballerina/io;
type F function(int) returns int;

function runner(F f, int val) returns int {
    return f(val);
}

public function main() {
    int val = 10;
    int res = val + runner(function(int a) returns int {
        val += a;
        return 5;
    }, 2);
    io:println(res); // @output 15
    io:println(val); // @output 12
}
