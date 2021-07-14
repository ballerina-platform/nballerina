import ballerina/io;

public function main() {
    string s = <string>toAny("hello"); 
    io:println(s); // @output hello
}

function toAny(string s) returns any {
    return s;
}