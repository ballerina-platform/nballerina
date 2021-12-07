import ballerina/io;

public function main() {
    int x = 1;
    record {| int x; |} r = {x:x};
    r = {x: x+r.x};
    io:println(r.x); // @output 2
    record {| int? x; |} _ = {x:io:println("hello")}; // @output hello
}
