import ballerina/io;

public function main() {
    foo();
}

function foo() {
    boolean b = false;
    while b {
        io:println(0);
    }
}
