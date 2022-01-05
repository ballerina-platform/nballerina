import ballerina/io;

public function main() {
    int|boolean x = 2;
    if x is boolean {
        io:println("b");
        boolean b = x;
        io:println(b);
        return;
    }
    else {
        io:println("i"); // @output i
    }
    int i = x;
    io:println(i); // @output 2
}
