// @productions error-constructor-expr string-literal local-var-decl-stmt
import ballerina/io;
public function main() {
    any x = error("whoops");
    io:println(x);
}
