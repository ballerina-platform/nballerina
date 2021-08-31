import ballerina/io;

public function main() {
    int? n1 = 1;
    int? n2 = 2;
    io:println(n1 < n1); // @output true
}
