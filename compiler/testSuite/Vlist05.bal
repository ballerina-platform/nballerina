import ballerina/io;

public function main() {
    any[] v = [true, false, ()];
    io:println(v.length()); // @output 3
}