// @productions string-literal equality if-else-stmt equality-expr unary-expr int-literal
import ballerina/io;
public function main() {
    if -1 != ~0 {
        io:println("impossible"); // @error
    }
}
