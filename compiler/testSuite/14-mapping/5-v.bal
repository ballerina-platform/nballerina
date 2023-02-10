import ballerina/io;
public function main() {
    io:println({a: 1, b: 2, "c":3}.c); // @output 3
}
