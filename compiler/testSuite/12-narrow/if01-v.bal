import ballerina/io;

public function main() {
    int|boolean x = 2;
    if x is boolean {
        boolean b = x;
        io:println(b);
        return;
    }
    int i = x;
    io:println(i); // @output 2
}
