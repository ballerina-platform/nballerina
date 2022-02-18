import ballerina/io;

public function main() {
    ()[] n1 = [];
    ()[][] n2 = [];
    ()[]?[] n3 = [];
    io:println(n1 < n2); // @output false
    io:println(n3 < n2); // @output false
    io:println(n1 < n3); // @output false
}
