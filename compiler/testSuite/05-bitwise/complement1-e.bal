// @productions boolean-literal unary-expr
import ballerina/io;
public function main() {
    io:println(~true); // @error
}
