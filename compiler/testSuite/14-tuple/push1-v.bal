import ballerina/io;

type Ints [int, int...];

public function main() {
    Ints x = [1];
    x.push(2);
    io:println(x); //@output [1,2]
}
