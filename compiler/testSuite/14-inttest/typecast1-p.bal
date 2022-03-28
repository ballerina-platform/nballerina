import ballerina/io;

type I 2|3|4;

public function main() {
    I i = <I>foo(4); // @panic bad type cast
    io:println(i);
}

function foo(int y) returns int {
    return y + 1;
}
