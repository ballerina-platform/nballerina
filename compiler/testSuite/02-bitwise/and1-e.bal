// @productions bitwise-and-expr local-var-decl-stmt int-literal
import ballerina/io;
public function main() {
    any i = 5;
    int j = 4;
    io:println(i & j); // @error
}
