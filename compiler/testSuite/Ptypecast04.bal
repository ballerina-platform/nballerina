import ballerina/io;

public function main() {
    float f = <float>g(); // @panic bad type cast
    io:println(f);
}

public function g() returns float|boolean {
    return false;
}
