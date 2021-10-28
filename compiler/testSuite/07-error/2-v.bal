// @productions error-constructor-expr string-literal
import ballerina/io;

public function main() {
    io:println(error("whoops")); // @output error("whoops")
}
