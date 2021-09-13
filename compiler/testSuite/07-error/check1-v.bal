import ballerina/io;

public function main() {
    io:println(div(6, 2)); // @output 3
    io:println(div(5, 0)); // @output error("zero")
}

function div(int x, int y) returns int|error {
    return x / check nonZero(y);
}

function nonZero(int n) returns int|error {
    if n == 0 {
        return error("zero");
    }
    return n;
}