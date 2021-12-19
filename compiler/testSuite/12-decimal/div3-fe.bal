import ballerina/io;
public function main() {
    io:println(9.999999999999999999999999999999999E6144d / 0d); // @error
}
