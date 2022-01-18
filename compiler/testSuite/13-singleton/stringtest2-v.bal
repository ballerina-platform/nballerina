import ballerina/io;

type Color "r"|"g"|"b";

public function main() {
    Color c = "r";
    string s = c;
    io:println(s is Color); // @output true
    s = "z";
    io:println(s is Color); // @output false
}
