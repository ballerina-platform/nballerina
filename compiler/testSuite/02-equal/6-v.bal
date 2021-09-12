// @productions exact-equality boolean equality-expr boolean-literal return-stmt any function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(mkInt(2) === mkBoolean(true)); // @output false
    io:println(mkInt(0) !== mkBoolean(false)); // @output true
    io:println(mkBoolean(true) === mkInt(1)); // @output false
    io:println(false !== mkInt(0)); // @output true
    io:println(1 === mkBoolean(true)); // @output false
    io:println(0 !== mkBoolean(false)); // @output true
    io:println(true === mkInt(1)); // @output false
    io:println(false !== mkInt(0)); // @output true
}

function mkInt(int n) returns any {
    return n;
}

function mkBoolean(boolean b) returns any {
    return b;
}