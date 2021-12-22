import ballerina/io;
public function main() {
    decimal d1 = 1.2f; // @error
    io:println(d1);
}
