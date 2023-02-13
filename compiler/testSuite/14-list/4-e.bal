import ballerina/io;
public function main() {
    io:println([[1,2], 3] == [[1, 2], 4]); // @error
}
