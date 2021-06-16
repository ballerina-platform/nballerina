import ballerina/io;

public function main() {
    io:println(foo(1, 1)); // @output 0
    io:println(foo(1, 10)); // @output -1
    io:println(foo(11, 1)); // @output 1
}

function foo(int x, int y) returns int {
    if (bar(x) == baz(y)) {
        return 0;
    } else {
        if (bar(x) > baz(y)) {
            return 1;
        } else {
            return -1;
        }
    }
}

function bar(int x) returns int {
    return x;
}

function baz(int x) returns int {
    return x;
}
