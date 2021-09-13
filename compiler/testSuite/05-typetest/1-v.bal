// @productions is-expr string string-literal if-else-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    any x = 1;
    if x is int {
        io:println("int"); // @output int
    }
    if x is string {
        io:println("string");
    }
}
