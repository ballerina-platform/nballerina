import ballerina/io;
type A [int, float, decimal, int...];
type B [byte, float...];

public function main() {
    A a = [1, 6.4, 100, 10, 11];
    B b = [5];

    io:println(a < b); // @error
}
