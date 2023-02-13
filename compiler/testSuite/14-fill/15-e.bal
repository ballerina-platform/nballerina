import ballerina/io;
type T ["a", "a"|"b"];
public function main() {
    T[2] a = [["a", "b"]]; // @error
    io:println(a);
}
