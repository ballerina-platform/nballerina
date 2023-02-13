import ballerina/io;

public function main() {
    foo({a: 2, b: 3 }); // @output working
    foo1({a: 2, "b": 3 }); // @output working
    foo2({a: 2, "b": 3 }); // @output working
    foo2({a: 2, b: 3 }); // @output working
}

// function call arguments get thier expected type from the function type
function foo(any b) {
    if b is record {| int a; int b; |} {
        io:println("unexpected");
    }
    io:println("working");
}

function foo1(record { any a; } c) {
    if c is record {| int a; int b; |} {
        io:println("unexpected");
    }
    if c is record {| 2 a; 3 b; |} {
        io:println("unexpected");
    }
    io:println("working");
}

function foo2(record {| any a; any b; |} c) {
    if c is record {| int a; int b; |} {
        io:println("unexpected");
    }
    if c is record {| 2 a; 3 b; |} {
        io:println("unexpected");
    }
    io:println("working");
}

function foo3(record {| int a; int b; |} c) {
    if c is record {| int a; int b; |} {
        io:println("working");
    }
    if c is record {| 2 a; 3 b; |} {
        io:println("unexpected");
    }
}
