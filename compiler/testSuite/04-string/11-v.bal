import ballerina/io;

public function main() {
    string s = "a\u{62}c"; 
    io:println(s); // @output abc
    io:println(s.length()); // @output 3
}
