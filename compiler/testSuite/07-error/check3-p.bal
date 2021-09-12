import ballerina/io;

public function main() {
    io:println(div(5, 0));
}

function div(int x, int y) returns int {
    return x / checkpanic nonZero(y);
}

function nonZero(int n) returns int|error {
    if n == 0 {
        return error("zero"); // @panic zero
    }
    return n;
}
