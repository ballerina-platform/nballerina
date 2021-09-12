// @productions boolean-literal unary-expr additive-expr any function-call-expr int-literal
import ballerina/io;
public function main() {
    foo(57); // @output 57
    foo(true); // @output true
    foo(()); // @output 
    foo(9223372036854775807); // @output 9223372036854775807
    foo(-9223372036854775807 - 1); // @output -9223372036854775808
}

function foo(any x) {
    io:println(x);
}

