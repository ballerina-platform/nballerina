import ballerina/io;
type T "a"|"b";

public function main() {
    T[5] a = ["a", "a", "b"]; // @error	
    io:println(a);
}
