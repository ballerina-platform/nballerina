// @productions string-literal equality multiplicative-expr if-else-stmt equality-expr floating-point-literal return-stmt unary-expr
import ballerina/io;

public function main() {
    if 0.0 / 0.0 == -0.0 / 0.0 {
        return;
    }
    io:println("impossible"); // @error
}
