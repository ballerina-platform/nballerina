import ballerina/io;
type F function(int, int) returns int;
public function main() {
    F f = function (int a, int b) returns int {
        return a + b;
    };
    io:println(f(1, 2)); // @output 3
}
