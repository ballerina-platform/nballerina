import ballerina/io;
public function main() {
    int|string x = 1;
    boolean a = true;
    boolean b = true;
    if true || x == 1 && a && b {
        io:println("x is 1"); // @output x is 1
    }
}
