import ballerina/io;

public function main() {

    int[] x = [
        17,
        "str", // @error
        12
    ]; 
    io:println(x[0] == 1);
}
