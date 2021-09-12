// @productions relational-expr boolean-literal local-var-decl-stmt
import ballerina/io;

public function main() {
    boolean? a = false;
    io:println(a <= ()); // @output false
    io:println(a < ()); // @output false
    io:println(a >= ()); // @output false
    io:println(a > ()); // @output false

    io:println(() <= a); // @output false
    io:println(() < a); // @output false
    io:println(() >= a); // @output false
    io:println(() > a); // @output false
}
