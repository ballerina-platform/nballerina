// @productions list-type-descriptor list-constructor-expr boolean-literal any function-call-expr local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    any[] v = [1, 2, false];
    foo(v); // @output [1,2,false]
}

function foo(any[] v) {
    io:println(v);
}
