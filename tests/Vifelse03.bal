import ballerina/io;

public function main() {
    printBranch(true, true); // @output 0
    printBranch(true, false); // @output 1
    printBranch(false, true); // @output 2
    printBranch(false,false); // @output 3
}

function printBranch(boolean x, boolean y) {
    if (x){
        if (y){
            io:println(0);
        } else {
            io:println(1);
        }
    } else {
        if (y){
            io:println(2);
        } else {
            io:println(3);
        }
    }
}
