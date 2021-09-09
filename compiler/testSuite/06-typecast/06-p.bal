import ballerina/io;

public function main() {
    float f = <float>g(); // @panic bad type cast
    io:println(f);
}

function g() returns int|boolean {
    return true;
}
