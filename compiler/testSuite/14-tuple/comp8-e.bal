import ballerina/io;
type T1 [int, string, string, int];
type T2 [int, string, int];

public function main() {
    T1 a = [0 , "a", "b", 1];
    T2 b = [0 , "c", 1];

    io:println(a < b); // @error
}
