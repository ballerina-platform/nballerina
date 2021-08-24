
import ballerina/io;

public function main() {
    float f = 1.0;
    int i = 0;
    io:println(i > f); // @error
}
