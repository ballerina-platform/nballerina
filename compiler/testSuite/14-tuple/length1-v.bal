import ballerina/io;

type Ints [int, int...];
type Mixed [int, string...];

public function main() {
    Ints x = [1, 2, 3];
    io:println(x.length()); //@output 3
    Mixed y = [1, "foo"];
    io:println(y.length()); //@output 2
}
