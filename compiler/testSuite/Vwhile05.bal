import ballerina/io;

public function main() {
    foo();
}

function foo() {
    while false {
        io:println(0);
    }
}
