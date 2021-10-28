// @productions list-type-descriptor list-constructor-expr floating-point-literal assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    float[] x = [];
    x[1] = 1.5;
    x[3] = 2.5;
    io:println(x); // @output [0.0,1.5,0.0,2.5]
}
