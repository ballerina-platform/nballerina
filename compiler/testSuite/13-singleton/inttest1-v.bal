import ballerina/io;

type Sign -1|1;

public function main() {
    Sign s = 1;
    any v = s;
    io:println(v is Sign); // @output true
    v = 0;
    io:println(v is Sign); // @output false
    v = "hello";
    io:println(v is Sign); // @output false
}
