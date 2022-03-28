import ballerina/io;

type I 2|3|4;

public function main() {
    I i = <I>foo(2);
    io:println(i); // @output 3
}

function foo(int y) returns int {
    return y + 1;
}
