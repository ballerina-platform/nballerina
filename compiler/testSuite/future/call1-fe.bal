import ballerina/io;

public function main() {
    int[] v = [];
    (v.push(48)); // @error
    io:println(v);
}
