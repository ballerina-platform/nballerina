import ballerina/io;

public function main() {
    foo({ a: 2, b: 3 }); // @output any
    foo({ a: 2, "b": 3 }); // @output any
    foo1({ a: 2, "b": 3 }); // @output { any a; }
    foo2({ a: 2, b: 3 }); // @output {| any a; any b; |}
    foo2({ a: 2, "b": 3 }); // @output {| any a; any b; |}
    foo3({ a: 2, b: 3 }); // @output {| int a; int b; |}
    foo3({ a: 2, "b": 3 }); // @output {| int a; int b; |}
}

// function call arguments get their expected type from the function type
function foo(any a) {
    if a is record {| int a; int b; |} {
        io:println("unexpected");
    }
    io:println("any");
}

function foo1(record { any a; } c) {
    if c is record {| int a; int b; |} {
        io:println("unexpected");
    }
    if c is record {| 2 a; 3 b; |} {
        io:println("unexpected");
    }
    io:println("{ any a; }");
}

function foo2(record {| any a; any b; |} c) {
    if c is record {| int a; int b; |} {
        io:println("unexpected");
    }
    if c is record {| 2 a; 3 b; |} {
        io:println("unexpected");
    }
    io:println("{| any a; any b; |}");
}

function foo3(record {| int a; int b; |} c) {
    if c is record {| 2 a; 3 b; |} {
        io:println("unexpected");
    }
    else {
        io:println("{| int a; int b; |}");
    }
}
