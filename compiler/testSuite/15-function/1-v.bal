import ballerina/io;
type F1 function() returns boolean;
type F2 function();
type F3 function(int...);

public function main() {
    F1|boolean a = true;
    io:println(a is function); // @output false
    a = foo;
    io:println(a is function); // @output true
    F2? b = ();
    io:println(b is function); // @output false
    b = bar;
    io:println(b is function); // @output true
    F3|int[] c = [1, 2, 3];
    io:println(c is function); // @output false
    c = baz;
    io:println(c is function); // @output true
    function|boolean d = true;
    io:println(d is function); // @output false
    io:println(d is boolean); // @output true
    d = foo;
    io:println(d is function); // @output true
}

function foo() returns boolean {
    return true;
}

function bar() {
}

function baz(int... i) {
}
