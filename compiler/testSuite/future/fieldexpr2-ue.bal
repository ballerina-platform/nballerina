import ballerina/io;

public function main() {
    int[] m = [0];
    int z = m.'0; // @error
    io:println(z);
}
