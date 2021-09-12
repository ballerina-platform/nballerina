import ballerina/io;
public function main() {
    any[] v = [17, 42, -11];
    int i = 3;
    io:println(v[i]); // @panic index out of bounds
}
