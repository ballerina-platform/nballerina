import ballerina/io;

public function main() {
    io:println(foo()); // @output 17
    io:println(bar()); // @output false
}

function foo() returns any {
    return 17;
}

function bar() returns any {
    return false;
}