// @productions type-cast-expr boolean if-else-stmt boolean-literal return-stmt any function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int n = <int>ifElse(true, true, 17); // @panic bad type cast
    io:println(n);
}

function ifElse(boolean t, boolean b, int n) returns any {
    if t {
        return b;
    }
    else {
        return  n;
    }
}
