// @productions list-type-descriptor list-constructor-expr floating-point-literal additive-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    float[] v = [1];
    io:println(v[0] + 0.5 ); // @output 1.5
}

