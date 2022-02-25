import ballerina/io;

public function main() {
    [string, int...] si = ["x", 17, 21];
    any[] v = si;
    io:println(v is [string, int...]); // @output true
    io:println(v is (int|string)[]); // @output true
    io:println(v is anydata[]); // @output true
    io:println(v is anydata); // @output true
    io:println(v is int[]); // @output false
    io:println(v is string[]); // @output false
}