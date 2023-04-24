
import ballerina/io;

public function main() {
    function f = foo;
    f(); // @error
}

function foo() {
    io:println("unexpected");
}
