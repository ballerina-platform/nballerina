import ballerina/io;

public function main() {
    while true {
        io:println(0); // @output 0
        break;
    }
    io:println(1); // @output 1
}