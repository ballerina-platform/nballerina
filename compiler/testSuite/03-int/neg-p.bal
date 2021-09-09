import ballerina/io;

public function main() {
    int INT_MIN = -9223372036854775807 - 1;
    io:println(neg(INT_MIN));
}

function neg(int x) returns int {
    return -x; // @panic arithmetic overflow
}
