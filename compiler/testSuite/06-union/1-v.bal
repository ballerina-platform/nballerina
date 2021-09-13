// @productions string-literal assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    boolean|int|string x = 17;
    io:println(x); // @output 17
    x = "hello";
    io:println(x); // @output hello
}
