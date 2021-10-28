// @productions exact-equality boolean equality-expr boolean-literal return-stmt any function-call-expr int-literal
import ballerina/io;

public function main() {
    io:println(mkNil() === mkNil()); // @output true
    io:println(mkInt(1) !== mkInt(1)); // @output false
    io:println(mkBoolean(true) === mkBoolean(true)); // @output true

    // following are the boundaries of immediate vs heap int
    io:println(mkInt(-36028797018963969) === mkInt(-36028797018963969)); // @output true
    io:println(mkInt(-36028797018963968) === mkInt(-36028797018963968)); // @output true
    io:println(mkInt(36028797018963967) === mkInt(36028797018963967)); // @output true
    io:println(mkInt(36028797018963968) === mkInt(36028797018963968)); // @output true
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
