import ballerina/io;
type Arr Arr[];

public function main() {
    Arr a = [];
    io:println(a); // @output []
}
