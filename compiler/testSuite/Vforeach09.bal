import ballerina/io;

public function main() {
    io:println(0); // @output 0
    foreach int i in 0 ..< 1000 {
        // empty block
    }
    io:println(1); // @output 1
}
