// @productions list-type-descriptor list-constructor-expr local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    any[] v = [1, 2, 3, 4];
    v.push(5);
    io:println(v); // @output [1,2,3,4,5]
    io:println(v.length()); // @output 5
}
