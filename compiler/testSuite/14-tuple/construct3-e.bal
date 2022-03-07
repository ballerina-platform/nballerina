import ballerina/io;

public function main() {
    [int, string] x = [
        1,
        "hi", 
        3 // @error
    ]; 
    io:println(x[0] == 1);
}
