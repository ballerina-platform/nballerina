import ballerina/io;

const a = ();
const b = null;

public function main() {
    io:println(a == b); // @output true

    io:println(a is ()); // @output true
    io:println(b is ()); // @output true
    io:println(a is null); // @output true
    io:println(b is null); // @output true
}
