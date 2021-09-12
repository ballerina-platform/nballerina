// @productions exact-equality boolean equality-expr boolean-literal return-stmt any function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(mkNil() === mkNil()); // @output true
    io:println(mkInt(1) !== mkInt(1)); // @output false
    io:println(mkBoolean(true) === mkBoolean(true)); // @output true
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