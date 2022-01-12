import ballerina/io;
public function main() {
    boolean b1 = true;
    if b1 is any {
        boolean b2 = b1;
        io:println(b2); // @output true
    }
    boolean b3 = b1;
    io:println(b3); // @output true
}
