// @productions string-literal
import ballerina/io;

public function main() {
    io:println("x\"y\\z"); // @output x"y\z
}
