import ballerina/io;
type F1 function(int) returns int;
type F2 function(int) returns string;

public function main() {
    F1|F2 f = foo;
    int|string ret = f(5);
    io:println(ret); // @output 5
    f = bar;
    ret = f(5);
    io:println(ret); // @output hello
}

function foo(int x) returns int {
    return x;
}

function bar(int x) returns string {
    return "hello";
}
