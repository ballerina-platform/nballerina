// @productions string-literal local-var-decl-stmt
import ballerina/io;

public function main() {
    string s = "hello"; 
    io:println(s.length()); // @output 5
}
