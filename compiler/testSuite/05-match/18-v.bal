// @productions match-stmt string-literal equality if-else-stmt equality-expr any function-call-expr int-literal
import ballerina/io;

public function main() {
    foo("foo"); // @output foo!
}

public function foo(any x) {
    match x {
        "foo"|true|42 => {
            if x == "foo" {
                io:println("foo!");
            }
        }
    }
}
