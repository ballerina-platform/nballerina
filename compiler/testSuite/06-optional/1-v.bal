// @productions string-literal equality if-else-stmt equality-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int? n = 17;
    io:println(n); // @output 17
    n = ();
    if n == () {
        io:println("null"); // @output null
    }
    else {
        io:println("not null");
    }
}