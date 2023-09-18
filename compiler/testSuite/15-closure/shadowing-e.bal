import ballerina/io;
type F function(int) returns int;

function foo(boolean flag, int offset) returns F {
    return function(int x) returns int {
        int offset = 10; // @error
        if (flag) {
            return x + offset;
        }
        else {
            return x - offset;
        }
    };
}

public function main() {
    F f = foo(true, 10);
    io:println(f(5));
    f = foo(false, 10);
    io:println(f(5));
}
