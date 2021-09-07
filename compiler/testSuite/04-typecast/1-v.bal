import ballerina/io;

public function main() {
    any[] x = [42];
    any y = x;
    io:println((<any[]>y)[0]); // @output 42
}