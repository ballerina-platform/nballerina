// @productions list-type-descriptor list-constructor-expr return-stmt any function-call-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    any[] v = foo();
    io:println(v); // @output []
}

// Does not modify v
function foo() returns any[] {
    return [];
}
 