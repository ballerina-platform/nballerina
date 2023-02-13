import ballerina/io;
type T "a"|"b";
public function main() {
    T[] a = [];
    a[1] = "b"; //@panic no filler value
    io:println(a);
}
