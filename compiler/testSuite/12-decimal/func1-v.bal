import ballerina/io;

function foo(decimal d) returns decimal {
    return d;
}
public function main() {
    decimal d = foo(23.3d);
    io:println(d); // @output 23.3
}
