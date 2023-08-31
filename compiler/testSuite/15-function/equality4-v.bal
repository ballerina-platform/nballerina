import ballerina/io;
type F1 function(int, int) returns int;

function foo(int a, int b) returns int {
    return a + b;
}

function bar(int a, int b) returns int {
    return a + b;
}

public function main() {
    F1 f1 = foo;
    F1 f2 = foo;
    io:println(f1 === f2); // @output true
    F1 f3 = bar;
    io:println(f1 === f3); // @output false
}
