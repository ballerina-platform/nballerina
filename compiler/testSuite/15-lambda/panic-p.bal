import ballerina/io;
type F function(int) returns int;
function foo() returns F {
    return function(int x) returns int {
        F f = function(int y) returns int {
            return 10 / y; // @panic divide by zero
        };
        return f(x);
    };
}

public function main() {
    F f = foo();
    int a = f(0);
    io:println(a);
}
