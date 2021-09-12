// @productions is-not-expr is-expr string string-literal if-else-stmt local-var-decl-stmt
import ballerina/io;

public function main() {
    string s = "x";
    if s !is int {
        
    } 
    else if s !is string {
        io:println("unreachable"); // @error
    } 

}
