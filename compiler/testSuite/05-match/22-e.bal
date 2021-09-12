// @productions match-stmt string-literal equality if-else-stmt equality-expr any function-call-expr int-literal
import ballerina/io;

public function main() {
    foo(1);
}

public function foo(any x) {
    match x {
        "foo"|true|42 => {
            // Next line is an error because operand types are disjoint
            if x == "bar" { // @error
                io:println("unexpected");
            }
        }
    }
}
