// @productions string-literal list-type-descriptor list-constructor-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    string[] x = [];
    x[1] = "x";
    x[3] = "y";
    io:println(x); // @output ["","x","","y"]
}
