import ballerina/io;

function stringFoo(string s) {
    io:println("This is " + s);
}

function intFoo(int i) {
    io:println("This is integer");
}

function foo(int|string x) {
    if x is int {
        intFoo(x);
    }
    else {
        string _ = x;
        stringFoo(x);
    }
}

public function main() {
    foo(2);          // @output This is integer
    foo("test str"); // @output This is test str
}
