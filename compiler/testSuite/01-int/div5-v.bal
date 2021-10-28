// @productions multiplicative-expr return-stmt function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(60 / 2); // @output 30
    io:println((120 / 3) / 4); // @output 10
    io:println((120 / 3) / (16 / 4)); // @output 10
    io:println((120 / 3) / (16 / 4)); // @output 10
    io:println(((120 / 3) / (16 / 4)) / 2); // @output 5
    io:println(((120 / 3) / (16 / 4)) / (10 / 5)); // @output 5
    io:println(((120 / 3) / (16 / 4)) / ((400 / 20 / (100 / 10)))); // @output 5
    io:println(div(div(div(120, 3), div(16, 4)), div(div(400, 20), div(100, 10)))); // @output 5
}

function div(int i, int j) returns int {
    return i/j;
}
