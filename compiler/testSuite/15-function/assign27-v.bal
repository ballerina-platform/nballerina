import ballerina/io;
type F function(int) returns int?;

public function main() {
    F f = foo;
    int? i = f(10); // @output 10
    if (i is ()) {
        io:println("working"); // @output working
    }
    else {
        io:println("unexpected");
    }
    f = bar;
    int? j = f(10);
    if (j is int) {
        io:println(j); // @output 11
    }
    else {
        io:println("unexpected");
    }
}

function foo(int i) {
    io:println(i);
}

function bar(int i) returns int {
    return i + 1;
}
