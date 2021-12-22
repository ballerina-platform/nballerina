import ballerina/io;
public function main() {
    io:println(<int>-9.999999999999999999999999999999999E6144d); // @error
}
