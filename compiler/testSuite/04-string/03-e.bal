// @productions string-literal equality if-else-stmt equality-expr
import ballerina/io;
public function main() {
    if "a" == "b" { // @error
        io:println("impossible");
    }
}
