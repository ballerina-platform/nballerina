import ballerina/io;
type Op function(int, int) returns int;

type BinaryOperation record {|
    Op op;
    int left;
    int right;
|};

public function main() {
    BinaryOperation a = { op: ternary, left: 1, right: 2 }; // @error
    io:println(a);
}

function ternary(int a, int b, int c) returns int {
    return a + b + c;
}
