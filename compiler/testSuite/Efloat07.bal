
import ballerina/io;

public function main() {
    float f = 10f;
    int i = 2;
    io:println(f / i); // @error

}
