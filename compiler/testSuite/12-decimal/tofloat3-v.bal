import ballerina/io;

public function main() {
    int|decimal x1 = 2d;
    io:println(<float>x1); // @output 2.0

    int|float|decimal x2 = 2.1e23d;
    io:println(<float>x2); // @output 2.1e23

    int|boolean x3 = 2;
    io:println(<float>x3); // @output 2.0
}
