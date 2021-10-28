// @productions string string-literal type-cast-expr return-stmt any function-call-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    string s = <string>toAny("hello"); 
    io:println(s); // @output hello
}

function toAny(string s) returns any {
    return s;
}