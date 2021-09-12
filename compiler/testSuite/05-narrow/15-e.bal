// @productions string-literal equality if-else-stmt equality-expr local-var-decl-stmt
import ballerina/io;

public function main() {
    string v = "x";
    if v == "x" {
        // Narrowed type of `v` is a singleton and type of `"x"`` is a singleton,
        // so type of `v != x` is singleton false, which means this is unreachable.
        if v != "x" {            
            io:println("unreachable"); // @error
        }
        else {
            io:println("x");
        }
    }
}
