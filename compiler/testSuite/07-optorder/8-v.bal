// @productions string-literal relational-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    string? a = "abc";
    io:println(a <= ()); // @output false
    io:println(a < ()); // @output false
    io:println(a >= ()); // @output false
    io:println(a > ()); // @output false

    io:println(() <= a); // @output false
    io:println(() < a); // @output false
    io:println(() >= a); // @output false
    io:println(() > a); // @output false
}
