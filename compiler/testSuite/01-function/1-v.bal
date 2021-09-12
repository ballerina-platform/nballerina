import ballerina/io;

public function main() {
    io:println(0); // @output 0
    nothing();
    io:println(1); // @output 1
}

function nothing() { }
