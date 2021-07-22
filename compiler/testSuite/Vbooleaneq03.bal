import ballerina/io;

public function main() {
    // Type of !true is boolean, so this is valid.
    io:println(true == !true); // @output false
}