// @productions match-stmt string-literal equality if-else-stmt equality-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    foo(1);
}

function foo(int v) {
    if v == 1 {
        match v {
            1 => {
                io:println("one");
            }
            2 => { // @error
                io:println("two");
            }
        }
    }
}