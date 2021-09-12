// @productions float string-literal type-cast-expr equality if-else-stmt equality-expr floating-point-literal function-call-expr
import ballerina/io;

public function main() {
    foo(0.0);
}

function foo(float f) {
    if f == 0.0 {
        if <float>f != 0.0 {
            io:println("unreached"); // @error
        }
    }
}
