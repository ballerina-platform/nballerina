import ballerina/io;

public function main() {
    io:println(mkInt(0) === mkNil()); // @output false
    io:println(0 !== mkNil()); // @output true
    io:println(mkBoolean(false) === mkNil()); // @output false
    io:println(mkBoolean(true) !== mkNil()); // @output true
    io:println(false !== mkNil()); // @output true
    io:println(mkNil() !== true); // @output true
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