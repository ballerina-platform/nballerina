import ballerina/io;
public function main() {
    decimal|int d1 = 1;
    io:println(d1); // @output 1
    io:println(d1 is int); // @output true

    d1 = 1.2;
    io:println(d1); // @output 1.2
    io:println(d1 is decimal); // @output true

    decimal|float d3 = 1.22d;
    io:println(d3); // @output 1.22
    io:println(d3 is decimal); // @output true

    d3 = 1.2;
    io:println(d3 is float); // @output true
}
