import ballerina/io;
type T ["a", "a"|"b"];
public function main() {
    T[] a = [];
    a[1] = ["a", "b"]; //@panic no filler value
    io:println(a);
}
