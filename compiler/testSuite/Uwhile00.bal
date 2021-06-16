import ballerina/io;

public function main() {
    printWhile(); //@output 0
}

function printWhile() {
    while true {
        io:println(0); 
        break;
    }
}