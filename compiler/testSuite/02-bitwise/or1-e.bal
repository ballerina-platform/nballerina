// @productions bitwise-or-expr boolean-literal local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    int i = 5;
    boolean j = true;
    io:println(i | j); // @error
}
