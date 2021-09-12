// @productions match-stmt string-literal equality if-else-stmt equality-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    foo(1);
}

public function foo(int x) {
    match x {
        1 => {
            if x == 1 {
                io:println("expected");

            }
            else {
                io:println("unreachable"); // @error
            }
        }
    }
}
