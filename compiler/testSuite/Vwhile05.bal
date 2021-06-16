import ballerina/io;

public function main() {
    printWhile(); // @output 0
}

function printWhile() {
    while false {
        io:println(1);
        return;
    }
    io:println(0);
}
