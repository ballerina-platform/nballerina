import ballerina/io;

public function main() {
    any x = { v: true };
    io:println(x == 1); // @output false
    io:println(x == true); // @output false
    io:println(x == ()); // @output false
    x = {};
    io:println(x != 1); // @output true
    x = {x: 1, y:2, z:3};
    io:println(x != true); // @output true
    io:println(x != ()); // @output true
}
