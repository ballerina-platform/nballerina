import ballerina/io;
public function main() {
    (function() returns int) a = foo;
    io:println(a()); // @output 5
}

function foo() returns int {
    return 5;
}
