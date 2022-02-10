import ballerina/io;

type I 2|3|4|7;

public function main() {
    io:println(foo(1) is I); // @output true
    io:println(foo(6) is I); // @output true
    io:println(foo(5) is I); // @output false
    io:println(foo(7) is I); // @output false
}

function foo(int y) returns int {
    return y + 1;
}
