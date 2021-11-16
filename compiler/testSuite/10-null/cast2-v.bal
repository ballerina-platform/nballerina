import ballerina/io;

public function main() {
    int? i = null;
    null ufo = <null> i;
    io:println(ufo is null); // @output true
}
