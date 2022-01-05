import ballerina/io;
public function main() {
    int i = 8;
    if i is int {
        io:println(i); // @output 8
    }
    int _ = i;

    if i is int {
        io:println(i); // @output 8
    }
    else {
        // unreachable
    }
    int _ = i;
    io:println(i); // @output 8
}
