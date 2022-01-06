import ballerina/io;
public function main() {
    decimal&int x = 2.3d; // @error
    io:println(x);
}
