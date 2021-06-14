import ballerina/io;

public function main() {
    io:println(foo(10)); // @output 0
}

function foo(int x) returns int {
    int i = x - 1;
    if (i != 0) {
        return foo(i);
    } 
    return i;
}
