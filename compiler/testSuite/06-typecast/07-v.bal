// @productions string string-literal type-cast-expr equality boolean if-else-stmt equality-expr boolean-literal assign-stmt local-var-decl-stmt
import ballerina/io;

public function main() {
    any x = true;
    io:println(<boolean?>x); // @output true
    x = ();
    if <boolean?>x == () {
        io:println("nil"); // @output nil
    }
    x = "hello";
    io:println(<string|boolean>x); // @output hello
}
