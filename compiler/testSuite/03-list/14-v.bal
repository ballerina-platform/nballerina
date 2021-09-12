// @productions list-type-descriptor list-constructor-expr boolean-literal local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    any[] v = [(), 1234567890123456789, true];
    io:println(v[2]); // @output true
    io:println(v[1]); // @output 1234567890123456789
    io:println([v[0]]); // @output [null]
}
