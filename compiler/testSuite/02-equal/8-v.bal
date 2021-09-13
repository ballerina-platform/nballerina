// @productions equality boolean equality-expr boolean-literal return-stmt any function-call-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    io:println(mkInt(2) == 2); // @output true
    io:println(17 != mkInt(17)); // @output false
    io:println(mkBoolean(true) == true); // @output true
    io:println(false != mkBoolean(false)); // @output false
    int n = 2;
    io:println(mkInt(2) == n); // @output true
    n = 17;
    io:println(n != mkInt(17)); // @output false
    boolean b = true;
    io:println(mkBoolean(true) == b); // @output true
    b = false;
    io:println(b != mkBoolean(false)); // @output false
}

function mkInt(int n) returns any {
    return n;
}

function mkBoolean(boolean b) returns any {
    return b;
}
