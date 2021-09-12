// @productions float type-cast-expr floating-point-literal local-var-decl-stmt
import ballerina/io;

public function main() {
    any x = 1.5f;
    io:println(<float>x); // @output 1.5
    float? f = 2.5f;
    io:println(<float>f); // @output 2.5
}
