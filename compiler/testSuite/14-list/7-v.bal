import ballerina/io;

public function main() {
    foo([2, 2]); // @output a is any
    foo([2, 3]); // @output a is any
    foo1([2, 3]); // @output a is int[]
    foo2([2, 3]); // @output a is [2,3]
}

// function call arguments get their expected type from the function type
function foo(any a) {
    if a is [2, 3] {
        io:println("unexpected");
    }
    if a is [int, int] {
        io:println("unexpected");
    }
    if a is int[] {
        io:println("unexpected");
    }
    else {
        io:println("a is any");
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
        io:println("a is int[]");
    }
}

function foo2([2,3] a) {
    if a is [2, 3] {
        io:println("a is [2,3]");
    }
}
