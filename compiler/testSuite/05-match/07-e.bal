// @productions match-stmt string-literal additive-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    foo();
}

function foo() {
    match 1 + 2 {
        3 => { 
            io:println("three");
        }
        4 => { // @error
            io:println("four");
        }
    }
}