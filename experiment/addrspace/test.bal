import ballerina/io;

public function main() {
    any v = 1;
    int n = <int>v;
    io:println(n); // @output 1
}
