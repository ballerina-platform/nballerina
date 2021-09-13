// @productions multiplicative-expr floating-point-literal unary-expr assign-stmt local-var-decl-stmt
import ballerina/io;

public function main() {
    float f = 10f;
    io:println(-f); // @output -10.0

    f = 0.0;
    io:println(-f); // @output -0.0

    f = -0.0;
    io:println(-f); // @output 0.0

    f = 1.0 / 0.0;
    io:println(-f); // @output -Infinity

    f = 0.0 / 0.0;
    io:println(-f); // @output NaN
}
