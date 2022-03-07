import ballerina/io;

public function main() {
    [int, boolean, int] x = [
        1,
        2, // @error
        3
    ]; 
    io:println(x[0] == 1);
}
