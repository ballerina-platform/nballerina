import ballerina/io;
type F function(int) returns int;

function foo(int a) returns F {
    return function(int x) returns int {
        final int b = a * 2;
        F g = function(int y) returns int {
            return x + y + a + b;
        };
        return g(x);
    };
}
public function main() {
    F f = foo(5);
    io:println(f(5)); // @output 25
}

