import ballerina/io;

public function main() {
    any x = [17];
    io:println(x === 1); // @output false
    io:println(x !== true); // @output true
    io:println(x === ()); // @output false
}