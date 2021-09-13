// @productions module-const-decl string-literal additive-expr
import ballerina/io;

const H = "Hello";
const C = ", ";
const S = H + C + T;
const T = "there";

public function main() {
    io:println(S); // @output Hello, there
}
