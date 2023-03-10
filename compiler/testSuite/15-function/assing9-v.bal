import ballerina/io;
type F function() returns int;
type I F|int;
public function main() {
    I a = 5;
    printI(a); // @output 5
    I b = foo;
    printI(b); // @output 10
}

function printI(I i) {
    if i is int {
        io:println(i);
    }
    else {
        io:println(i());
    }
}

function foo() returns int {
    return 10;
}
