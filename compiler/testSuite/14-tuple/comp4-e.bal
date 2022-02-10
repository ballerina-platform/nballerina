import ballerina/io;
type A [int, int];
type B [int, string];

public function main() {
    A a = [5, 6];
    B b = [5, "4"];
    io:println(a < b); // @error
}
