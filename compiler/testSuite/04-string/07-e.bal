// @productions string-literal additive-expr int-literal
import ballerina/io;
public function main() {
    io:println("ok" + 1); // @error
}
