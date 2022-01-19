import ballerina/io;

type Sign -1|1;

public function main() {
    Sign s = 1;
    int v = s;
    io:println(v is Sign); // @output true
    v = 0;
    io:println(v is Sign); // @output false
    v = -1;
    io:println(v is Sign); // @output true
}
