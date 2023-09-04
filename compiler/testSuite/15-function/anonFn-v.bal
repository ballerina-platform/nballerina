import ballerina/io;
type F function(int, int) returns int;
public function main() {
    F f = function (int a, int b) returns int {
        return a + b;
    };
    F g = function (int a, int b) returns int {
        F mul = function (int x, int y) returns int {
            return x * y;
        };
        return mul(a, b);
    };
    io:println(f(1, 2)); // @output 3
    io:println(g(4, 2)); // @output 8
}
