// @productions match-stmt string-literal any function-call-expr int-literal
import ballerina/io;

public function main() {
    foo(1);
}

function foo(any v) {
    match v {
        1 => {
            io:println("one");
        }
        _ => { 
            io:println("any");
        }
        _ => {  // @error
            io:println("any");
        }   
    }
}