import ballerina/io;

public function main() {
    io:println(exactlyEq(0d, 0d)); // @output true
    io:println(exactlyEq(0d, 0.0d)); // @output false
    io:println(exactlyEq(0.0d, 0.00d)); // @output false

    io:println(eq(0d, 0d)); // @output true
    io:println(eq(0d, 0.0d)); // @output true
    io:println(eq(0.0d, 0.00d)); // @output true

    io:println(exactlyEq(1d, 1d)); // @output true
    io:println(exactlyEq(1d, 1.0d)); // @output false

    io:println(eq(1d, 1d)); // @output true
    io:println(eq(1d, 1.0d)); // @output true

    io:println(exactlyEq(9007199254740992d, 9007199254740992d)); // @output true
    io:println(exactlyEq(9007199254740992d, 9007199254740992.0d)); // @output false

    io:println(eq(9007199254740992d, 9007199254740992d)); // @output true
    io:println(eq(9007199254740992d, 9007199254740992.0d)); // @output true
}

function exactlyEq(decimal d1, decimal d2) returns boolean {
    return d1 === d2;
}

function eq(decimal d1, decimal d2) returns boolean {
    return d1 == d2;
}
