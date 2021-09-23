import ballerina/io;
public function main() {
    io:println("before"); // @output before
    check check noOp(); // @output inside
    io:println("after"); // @output after
}


function noOp() {
    io:println("inside");
}
