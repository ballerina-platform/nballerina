// @productions module-const-decl int-literal
import ballerina/io;

const X = 9223372036854775808; // @error

public function main() {
    io:println(X);
}