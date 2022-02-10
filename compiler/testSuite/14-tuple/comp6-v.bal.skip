import ballerina/io;
type A [A]|int;

public function main() {
    A a = [5];
    A b = [[6]];
    A c = 7;
    io:println(a < b); // @output true
    io:println(a < c); // @output true
}
