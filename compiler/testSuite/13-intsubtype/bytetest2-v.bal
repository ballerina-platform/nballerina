import ballerina/io;

public function main() {
    b(0); // @output true
    b(1); // @output true
    b(254); // @output true
    b(255); // @output true
    b(128); // @output true
    b(127); // @output true
    b(-1); // @output false
    b(256); // @output false
    b(257); // @output false
    b(-2); // @output false
    b(0x10000); // @output false
    b(0x100000000); // @output false
    b(null); // @output false
    b(0f); // @output false
    b(0d); // @output false
}

function b(any n) {
    io:println(n is byte);
}
