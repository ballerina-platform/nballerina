import ballerina/io;

public function main() {
    int i = 42;
    string s = i.toHexString();
    io:println(s); // @output 2a

    io:println(0.toHexString());    // @output 0
    io:println((-1).toHexString()); // @output -1

    io:println(0xff.toHexString());    // @output ff
    io:println((-0xaa).toHexString()); // @output -aa

    io:println(9223372036854775807.toHexString());        // @output  7fffffffffffffff
    io:println((-9223372036854775807 - 1).toHexString()); // @output -8000000000000000
}
