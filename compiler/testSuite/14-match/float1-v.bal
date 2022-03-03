// @productions list-type-descriptor list-constructor-expr boolean-literal assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    float x = 1.0;
    match x {
        1 => {
            io:println(x); // @output 1.0
        }
    }
}