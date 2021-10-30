import ballerina/io;

public function main() {
    string[]|string v1 = "o";
    any[]|string v2 = v1;
    string v3 = <string>v2;
    io:println(v3); // @output o
}
