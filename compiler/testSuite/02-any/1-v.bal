// @productions local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int n = 1;
    any v = n;
    io:println(v); // @output 1
}
