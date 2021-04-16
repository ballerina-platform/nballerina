import ballerina/io;

public function main() {
    boolean b = isSubtype(tuple(INT, INT), INT);
    io:println(b);
}