import ballerina/io;

public function main() {
    map<any> m = { };
    any x = m;
    io:println(x); // @output {}
}
