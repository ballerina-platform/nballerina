import ballerina/io;

public function main() {
    float f = <float>g();
    io:println(f); // @output 4.86
}

function g() returns float|boolean {
    return 4.86;
}
