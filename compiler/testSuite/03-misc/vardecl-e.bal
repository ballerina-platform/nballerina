// @productions local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int x = 1;
    int x = 2;
    io:println(x);
}