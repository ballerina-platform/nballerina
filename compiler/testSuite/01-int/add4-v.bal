// @productions return-stmt additive-expr function-call-expr int-literal
import ballerina/io;
public function main() {
    io:println(add(3, 5)); // @output 8
    io:println(add(add(3, 5), 11)); // @output 19
    io:println(add(add(3, 5), add(5, 9))); // @output 22
    io:println(add(add(add(3, 5), add(5, 9)), 12)); // @output 34
    io:println(add(add(add(3, 5), add(5, 9)), add(4, 7))); // @output 33
    io:println(add(add(add(3, 5), add(5, 9)), add(add(4, 7), 5))); // @output 38
    io:println(add(add(add(3, 5), add(5, 9)), add(add(4, 7), add(23, 50)))); // @output 106
}

function add(int x, int y) returns int {
    return x + y;
}
