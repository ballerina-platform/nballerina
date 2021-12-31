// @productions string-literal equality multiplicative-expr if-else-stmt equality-expr floating-point-literal return-stmt unary-expr
import ballerina/io;

public function main() {
    // x/0.0 has type float
    if 0.0 / 0.0 == -0.0 / 0.0 {
        io:println("same"); // @output same
        return;
    }
    io:println("impossible");
}
