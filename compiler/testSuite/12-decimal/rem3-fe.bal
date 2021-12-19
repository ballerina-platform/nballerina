import ballerina/io;
public function main() {
    io:println(9.999999999999999999999999999999998E6144d % 1E-2d); // @error
}
