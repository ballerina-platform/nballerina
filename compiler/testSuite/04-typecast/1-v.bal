// @productions list-type-descriptor list-constructor-expr type-cast-expr any local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any[] x = [42];
    any y = x;
    io:println((<any[]>y)[0]); // @output 42
}