import ballerina/io;
type F function(int) returns int;

function foo(int x, int z, boolean flag) returns F {
    if flag {
        return function(int y) returns int {
            return x + y + z;
        };
    }
    return function(int y) returns int {
        return x + y;
    };
}

public function main() {
    F bar = foo(2, 3, true);
    io:println(bar(1)); // @output 6
    bar = foo(2, 3, false);
    io:println(bar(1)); // @output 3
}
