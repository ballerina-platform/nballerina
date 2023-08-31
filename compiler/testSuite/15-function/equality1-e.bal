import ballerina/io;
type F1 function(int) returns string;
type F2 function(string) returns int;

function foo(int a) returns string {
    return "foo";
}

function bar(string a) returns int {
    return 5;
}

public function main() {
    F1 f1 = foo;
    F2 f2 = bar;
    boolean test = f1 == f2; // @error
    io:println(test);
}
