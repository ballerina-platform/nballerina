import ballerina/io;

public function main() {
    any x = mkInt(2);
    any y = x;
    io:println(x === y); // @output true
    io:println(x !== y); // @output false
}

function mkInt(int n) returns any {
    return n;
}
