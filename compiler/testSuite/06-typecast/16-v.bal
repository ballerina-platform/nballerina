import ballerina/io;

public function main() {
    float f = <float>g();
    io:println(f); // @output 8.0
}

function g() returns int|boolean {
    return 8;
}
