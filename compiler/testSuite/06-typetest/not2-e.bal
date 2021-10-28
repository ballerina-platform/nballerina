// @productions is-not-expr is-expr string string-literal boolean if-else-stmt boolean-literal any function-call-expr int-literal
import ballerina/io;

public function main() {
    foo("hello"); 
    foo(23);
    foo(true);
}

function foo(any x) {
    if x !is int {
        
    }
    else if x !is string {
        
    }
    else if x !is boolean {
        io:println("unreachable"); // @error
    }
}