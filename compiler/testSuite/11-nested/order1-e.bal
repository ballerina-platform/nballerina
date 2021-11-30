import ballerina/io;

public function main() {
    int?[] j = [];
    boolean?[] k = [];
    io:println(j < k); // @error
}
