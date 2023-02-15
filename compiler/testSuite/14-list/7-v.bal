import ballerina/io;

public function main() {
    foo([2, 2]); // @output working
    foo([2, 3]); // @output working
    foo1([2, 3]); // @output working
    foo2([2, 3]);
}

// function call arguments get their expected type from the function type
function foo(any a) {
    if a is [2, 3] {
        io:println("unexpected");
    }
    if a is [int, int] {
        io:println("unexpected");
    }
    else {
        io:println("working");
    }
}

function foo1(int[] a) {
    if a is [2, 3] {
        io:println("unexpected");
    }
    if a is [int, int] {
        io:println("unexpected");
    }
    else {
        io:println("working");
    }
}

function foo2([2,3] a) {
    if a is [2, 3] {
        io:println("working"); // @output working
    }
    if a is [int, int] {
        io:println("working"); // @output working
    }
}
