import ballerina/io;

type Sign 1|-1;

public function main() {
    Sign[] signs = [];
    signs[1] = 1; // @panic no filler value
    io:println(signs[0]); 
}
