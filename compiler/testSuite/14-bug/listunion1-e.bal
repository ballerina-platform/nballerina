import ballerina/io;
public function main() {
    int?[]|string?[] v = [()]; // @error
    io:println(v[0] == ());
}