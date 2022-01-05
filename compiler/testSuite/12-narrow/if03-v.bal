import ballerina/io;

public function main() {
    int|boolean x = false;
    if x is boolean {
        boolean b1 = x;
        io:println(b1); // @output false
    }
    else {
        return;
    }
    boolean b2 = x;
    io:println(b2); // @output false
}
