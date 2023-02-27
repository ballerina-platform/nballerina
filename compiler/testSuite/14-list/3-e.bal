import ballerina/io;
public function main() {
    io:println([1, 2] + [1, 2]); // @error
}
