import ballerina/io;

public function main() {
    any[] v = foo();
    io:println(v); // @output []
}

// Does not modify v
function foo() returns any[] {
    return [];
}
 