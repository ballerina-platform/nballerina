import ballerina/io;
public function main() {
    any[] v = [];
    int i = -1;
    v[i] = 0;  // @panic index out of bounds
    io:println(v.length());
}

