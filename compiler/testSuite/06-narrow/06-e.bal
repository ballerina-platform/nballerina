// @productions float string-literal equality if-else-stmt equality-expr floating-point-literal relational-expr function-call-expr
import ballerina/io;

public function main() {
    foo(0.0);
}

function foo(float f) {
    if f == 0.0 {
        if f > 1.0 {
            io:println("unreached"); // @error
        }
    }
}