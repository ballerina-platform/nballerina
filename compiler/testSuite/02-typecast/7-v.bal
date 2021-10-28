// @productions type-cast-expr boolean if-else-stmt boolean-literal return-stmt any function-call-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    io:println(ifElse(true, 17, false)); // @output 17
    io:println(ifElse(false, 32, true)); // @output true
    io:println(<int>ifElse(true, 32, true)); // @output 32
    int x = <int>ifElse(true, 42, false);
    io:println(x); // @output 42
    io:println(<boolean>ifElse(false, 21, true)); // @output true
    boolean b = <boolean>ifElse(false, 21, false);
    io:println(b); // @output false
}

function ifElse(boolean t, int n, boolean b) returns any {
    if t {
        return n;
    }
    else {
        return b;
    }
}
