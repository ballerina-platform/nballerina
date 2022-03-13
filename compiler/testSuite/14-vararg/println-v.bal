import ballerina/io;
public function main() {
    io:println(); //@output 
    io:println(1); //@output 1
    io:println(1, 2); //@output 12

    io:println([10, 20]); //@output [10,20]
    io:println([10, 20], ["a", "b"]); //@output [10,20]["a","b"]
}

