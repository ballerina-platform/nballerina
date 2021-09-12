// @productions float type-cast-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int i = 10;
    float f = <float>i;
    io:println(f); // @output 10.0

    i = 9223372036854775807;
    // xxx print in hex to be more portable 
    io:println(<float>i); // @output 9223372036854776000.0
}
