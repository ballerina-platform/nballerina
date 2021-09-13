// @productions list-type-descriptor list-constructor-expr exact-equality equality equality-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int[] v1 = [1, 2, 3];
    int[] v2 = [1, 2, 3];
    int[] v3 = [1, 2, 4];
    int[] v4 = [1, 2, 3, 4];

    io:println(v1 == v1); // @output true
    io:println(v1 == v2); // @output true
    io:println(v1 == v3); // @output false
    io:println(v1 == v4); // @output false
    io:println(v4 == v1); // @output false
    io:println(v1 === v1); // @output true
    io:println(v1 === v2); // @output false
}