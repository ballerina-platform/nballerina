import ballerina/io;
type F function() returns boolean;

public function main() {
    F fp = foo;
    boolean b = fp();
    io:println(b); // @output true
}

function foo() returns boolean {
    return true;
}
