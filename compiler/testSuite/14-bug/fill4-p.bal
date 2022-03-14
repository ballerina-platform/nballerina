import ballerina/io;

type Sign "+"|"-";

public function main() {
    Sign[] signs = [];
    signs[1] = "+"; // @panic no filler value
    io:println(signs[0]); 
}
