import ballerina/io;

public function main() {
    [record { int x; }] v = []; // @error
    io:println(v[0].x == 1);
}
