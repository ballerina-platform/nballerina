import ballerina/io;

public function main() {
    io:println(8 + 5 - 11); // @output 2
    io:println(8 - 11 + 5); // @output 2
    io:println(3 + 5 - 5 + 9); // @output 12
    io:println(add(3, 5, -5, 9)); // @output 12
    io:println(3 - 5 + 9 - 4); // @output 3
    io:println(add(3, -5, 9, -4)); // @output 3
}

function add(int a, int b, int c, int d) returns int {
    return a + b + c + d;
}
