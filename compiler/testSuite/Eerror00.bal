import ballerina/io;
public function main() {
    any x = error("whoops");
    io:println(x);
}
