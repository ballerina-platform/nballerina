// @productions exact-equality boolean equality-expr boolean-literal return-stmt any function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(mkInt(2) === 2); // @output true
    io:println(17 !== mkInt(17)); // @output false
    io:println(mkBoolean(true) === true); // @output true
    io:println(false !== mkBoolean(false)); // @output false
}

function mkNil() returns any {
    return ();
}

function mkInt(int n) returns any {
    return n;
}

function mkBoolean(boolean b) returns any {
    return b;
}