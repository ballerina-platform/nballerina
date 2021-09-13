// @productions float module-const-decl type-cast-expr floating-point-literal
import ballerina/io;

const ONEi = <int>1.2;
const ONEf = <float>1;

public function main() {
    io:println(ONEi); // @output 1
    io:println(ONEf); // @output 1.0
}
