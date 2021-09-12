// @productions is-expr string-literal list-constructor-expr if-else-stmt any local-var-decl-stmt
import ballerina/io;

type AE (any|error)[];

public function main() {
    any x = [];
    if x is any[] {
        io:println("any[]");
    }
    if x is AE {
        io:println("AE"); // @output AE
    }
}
