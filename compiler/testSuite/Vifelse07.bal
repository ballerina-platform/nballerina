import ballerina/io;

public function main() {
    printTrue(); // @output 1
    printFalse(); // @output 0
}

function printTrue() {
    if true {
        io:println(1);
    }
}

function printFalse() {
    if false {
        io:println(1);
    } else {
        io:println(0);
    }
}