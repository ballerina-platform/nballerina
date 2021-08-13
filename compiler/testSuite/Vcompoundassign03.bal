import ballerina/io;

public function main() {
    int x = 1;
    x += 2 + foo(x);
    io:println(x); // @output 7
}

function foo(int i) returns int{
    return i+3;
}