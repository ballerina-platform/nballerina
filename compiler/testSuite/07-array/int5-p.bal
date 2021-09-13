// @productions list-type-descriptor list-constructor-expr additive-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    int[] vi = [];
    any[] va = vi;
    va[0] = (); // @panic bad list store
    io:println(vi[0] + 1);
}