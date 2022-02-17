import ballerina/io;
type A [A]|int;

public function main() {
    A a = [5];
    A b = 6;
    io:println(a < b); // @error
}
