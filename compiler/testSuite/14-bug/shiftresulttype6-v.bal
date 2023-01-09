import ballerina/io;

type T 250;
public function main() {
    int:Unsigned8 x = 250;
    if x is T {
        int:Unsigned8 y = x >> 1;
        io:println(y); // @output 125
    }
}
