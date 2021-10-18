import ballerina/io;

public function main() {
    int[] m = [0];
    int z = m.first; // @error
    io:println(z);
}
