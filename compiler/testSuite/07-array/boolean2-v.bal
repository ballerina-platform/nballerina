// @productions list-type-descriptor list-constructor-expr boolean-literal assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    boolean[] x = [];
    x[1] = true;
    x[3] = true;
    io:println(x); // @output [false,true,false,true]
}

