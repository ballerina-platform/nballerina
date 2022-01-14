import ballerina/io;

type Color R|G|B;
const R = "red";
const G = "green";
const B = "blue";

public function main() {
    string s = "gren";
    Color c = <Color>s; // @panic bad type cast
    io:println(c);
}
