// @productions continue-stmt while-stmt equality if-else-stmt equality-expr relational-expr additive-expr assign-stmt local-var-decl-stmt int-literal
import ballerina/io;

public function main() {
    int i = 0;
    while i < 4 {
        i = i + 1;
        if i == 2 {
            continue;
        }
        // @output 1
        // @output 3
        // @output 4
        io:println(i);
    }
}