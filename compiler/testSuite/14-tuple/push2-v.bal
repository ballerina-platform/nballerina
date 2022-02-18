import ballerina/io;

type Mixed [int, string...];

public function main() {
    Mixed x = [1];
    x.push("foo");
    io:println(x); //@output [1,"foo"]
}
