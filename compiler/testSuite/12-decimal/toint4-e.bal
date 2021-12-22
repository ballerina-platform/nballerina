import ballerina/io;
public function main() {
    io:println(<int>9223372036854775808d); // @error
}
