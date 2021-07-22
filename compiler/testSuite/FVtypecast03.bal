import ballerina/io;

public function main() {
    any a = [0, 1, 2];
    any[] v = <any[]>a;
    io:println(v[2]); // @output 2
}