import ballerina/io;
public function main() {
    float f = 1.4f;
    io:println(<int|decimal>f); // @error
}
