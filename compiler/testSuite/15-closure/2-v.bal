import ballerina/io;
type F function(int) returns int;
public function main() {
    final int a = 5;
    F f = function(int x) returns int {
        final int b = a * 2;
        F g = function(int y) returns int {
            return x + y + a + b;
        };
        return g(x);
    };
    io:println(f(5)); // @output 25
}

