import ballerina/io;

public function main() {
    boolean[] v = [true];
    io:println(!v[0]); // @output false
}
