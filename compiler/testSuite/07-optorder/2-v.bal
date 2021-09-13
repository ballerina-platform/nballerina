// @productions relational-expr local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int? a = 5;
    io:println(a <= ()); // @output false
    io:println(a < ()); // @output false
    io:println(a >= ()); // @output false
    io:println(a > ()); // @output false

    io:println(() <= a); // @output false
    io:println(() < a); // @output false
    io:println(() >= a); // @output false
    io:println(() > a); // @output false
}
