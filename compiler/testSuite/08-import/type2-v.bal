import root.mod;
import ballerina/io;

type T mod:T;

public function main() {
    T local = 1;
    mod:T foreign = 2;
    local = foreign;
    io:println(local); // @output 2
    io:println(foreign is int); // @output true
}
