import ballerina/io;

public function main() {
    any x = [42];
    io:println((<any[]>x)[0]); // @output 42
}