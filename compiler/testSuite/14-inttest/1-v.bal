import ballerina/io;

type I 2|3|4;

public function main() {
    io:println(foo(1) is I); // @output true
    io:println(foo(3) is I); // @output true
    io:println(foo(2) is I); // @output true
    io:println(foo(4) is I); // @output false
    io:println(foo(0) is I); // @output false
}

function foo(int y) returns int {
    return y + 1;
}
