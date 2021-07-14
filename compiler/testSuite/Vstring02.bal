import ballerina/io;

public function main() {
    greet("hello"); // @output hello
    io:println(greeting()); // @output hi
}

function greet(string s) {
    io:println(s);
}

function greeting() returns string {
    return "hi";
}
