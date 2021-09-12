// @productions list-type-descriptor list-constructor-expr floating-point-literal additive-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    float[] v = [];
    v[0] = 2;
    io:println(v[0] + 0.5); // @output 2.5
}
