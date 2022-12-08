import ballerina/io;
public function main() {
    io:println(<decimal>0.0f); // @output 0
    io:println(<decimal>1.0f); // @output 1
    io:println(<decimal>1.00000f); // @output 1
    io:println(<decimal>1234567891.0f); // @output 1234567891
}
