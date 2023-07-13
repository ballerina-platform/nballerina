import ballerina/io;

public function main() {
    function f = foo;
    any a = f(); // @error
    io:println(a);
}

function foo() returns int {
    io:println("unexpected");
    return 0;
}
