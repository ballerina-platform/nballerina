import ballerina/io;

public function main() {
    int n = <int>foo(1017);
    io:println(n); // @output 1017
}

function foo(int n) returns any {
    return n;
}
