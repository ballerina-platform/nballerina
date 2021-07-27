import ballerina/io;

public function main() {
    any x = 1;
    if x is int {
        io:println("int"); // @output int
    }
    if x is string {
        io:println("string");
    }
}
