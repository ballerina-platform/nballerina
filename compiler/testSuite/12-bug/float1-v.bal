import ballerina/io;
public function main() {
    int|float x = 1;
    float f = <float>x;
    io:println(f); // @output 1.0

    x = 2.0;
    f = <float>x;
    io:println(f); // @output 2.0
}
