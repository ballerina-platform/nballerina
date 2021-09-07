import ballerina/io;

public function main() {
    io:println(true); // @output true
    io:println(false); // @output false
    boolean b = true;
    io:println(b); // @output true
    b = false;
    io:println(b); // @output false
}