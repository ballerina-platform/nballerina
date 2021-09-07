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