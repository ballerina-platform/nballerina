import ballerina/io;

type Color "red"|"green"|"blue";

public function main() {
    Color c = "red";
    string s = c;
    io:println(s is Color); // @output true
    s = "yummy";
    io:println(s is Color); // @output false
}
