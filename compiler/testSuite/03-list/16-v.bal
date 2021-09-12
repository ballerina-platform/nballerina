// @productions list-type-descriptor list-constructor-expr boolean-literal local-var-decl-stmt
import ballerina/io;

public function main() {
    any[] v = [true, false, ()];
    io:println(v.length()); // @output 3
}