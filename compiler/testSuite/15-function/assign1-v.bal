import ballerina/io;
type F function() returns boolean;
type B function(int, int) returns boolean;

public function main() {
    F f = foo;
    boolean x = f();
    io:println(x); // @output true

    B b = bar;
    boolean y = b(1, 2);
    io:println(y); // @output false
    io:println(b(2, 1)); // @output true
    io:println(FB(foo, bar, 1, 2)); // @output true
    io:println(FB(notFoo, bar, 1, 2)); // @output false
    io:println(FB(notFoo, bar, 2, 1)); // @output true

    B b2 = bar;
    io:println(b2(2, 1)); // @output true
}

function foo() returns boolean {
    return true;
}

function notFoo() returns boolean {
    return false;
}

function bar(int a, int b) returns boolean {
    return a > b;
}

function FB(F a, B b, int x, int y) returns boolean {
    return a() || b(x, y);
}
