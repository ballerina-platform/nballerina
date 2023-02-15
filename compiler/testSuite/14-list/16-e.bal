import ballerina/io;
public function main() {
    io:println([1, 0.3] < [1, 3]); // @error	
}
