import ballerina/io;

type Never string & int;
function foo() returns Never {
    panic error("never returns");
}

public function main() {
    io:println("hello"); // @output hello
}
