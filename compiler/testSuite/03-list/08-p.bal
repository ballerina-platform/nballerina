import ballerina/io;
public function main() {
    any[] v = [];
    int i = 0;
    io:println(v[i]); // @panic index out of bounds
}
