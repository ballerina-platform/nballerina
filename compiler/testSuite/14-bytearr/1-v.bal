import ballerina/io;
public function main() {
    byte[] b1 = [];
    b1[0] = 42;
    b1[1] = 43;
    b1[3] = 44;
    io:println(b1[0]); // @output 42
    io:println(b1[1]); // @output 43
    io:println(b1[2]); // @output 0
    io:println(b1[3]); // @output 44

    byte[] b2 = [88, 89, 90];
    io:println(b2[0]); // @output 88
    io:println(b2[1]); // @output 89
    io:println(b2[2]); // @output 90
}
