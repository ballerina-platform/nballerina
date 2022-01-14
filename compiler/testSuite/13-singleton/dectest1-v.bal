import ballerina/io;

type Integer 1d|2d|3d;

public function main() {
    any v = 1d;
    io:println(v is Integer); // @output true
    v = 2d;
    io:println(v is Integer); // @output true
    v = 2.000d;
    io:println(v is Integer); // @output true
    v = 2;
    io:println(v is Integer); // @output false
    v = 3d;
    io:println(v is Integer); // @output true
    v = 4d;
    io:println(v is Integer); // @output false
}
