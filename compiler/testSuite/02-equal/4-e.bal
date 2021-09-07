import ballerina/io;

public function main() {
    any x = 1;
    any y = true;
    if x != y { // @error
        io:println(true);
    }
}