// @productions string-literal equality if-else-stmt equality-expr return-stmt
import ballerina/io;
public function main() {
    if "a" == "a" {
        return;
    }
    io:println("impossible"); // @error
}
