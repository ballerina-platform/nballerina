import ballerina/io;
public function main() {
    float f = 1.2e23d; // @error
    io:println(f);
}
