import ballerina/io;

type Color R|G|B;
const R = "red";
const G = "green";
const B = "blue";

public function main() {
    string s = "red";
    Color c = <Color>s;
    io:println(c); // @output red
}
