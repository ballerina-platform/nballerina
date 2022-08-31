import ballerina/io;
type M map<M>;

public function main() {
    M m = {};
    io:println(m); // @output {}
}
