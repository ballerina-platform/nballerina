import ballerina/io;
public function main() {
    int|float x = 2;
    int i = <int>x;
    io:println(i); // @output 2

    x = 4.0;
    i = <int>x;
    io:println(i); // @output 4
}
