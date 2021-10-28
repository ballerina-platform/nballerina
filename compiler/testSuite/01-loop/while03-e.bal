// @productions while-stmt boolean-literal
import ballerina/io;
public function main() {
    while true {

    }
    // This is unreachable
    io:println(1); // @error
}
