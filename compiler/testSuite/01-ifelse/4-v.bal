// @productions equality if-else-stmt equality-expr relational-expr function-call-expr int-literal
import ballerina/io;

public function main() {
    printBranch(5); // @output 0
    printBranch(10); // @output 1
    printBranch(15); // @output 2
}

function printBranch(int x) {
    if (x<10) {
        io:println(0);
    } else if(x == 10){
        io:println(1);
    } else {
        io:println(2);
    }
}
