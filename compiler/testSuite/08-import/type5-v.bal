import root.level1;
import ballerina/io;

type T level1:A;

public function main() {
    T i = 2;
    io:println(i is int); // @output true
    io:println(5 is T); // @output true
}
