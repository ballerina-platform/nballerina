import ballerina/io;

public function main() {
    printBranch(5); // @output 1
    printBranch(10); // @output 0
    printBranch(15); // @output 0
}

function printBranch(int x) {
    if (x<10) {
        io:println(1);
    }
    else {
        io:println(0);
    }
}
