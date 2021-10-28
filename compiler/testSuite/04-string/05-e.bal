// @productions string-literal equality if-else-stmt equality-expr return-stmt additive-expr
import ballerina/io;
public function main() {
    if "abc" == "a" + "b" + "c" {
        return;
    }
    io:println("impossible"); // @error
}
