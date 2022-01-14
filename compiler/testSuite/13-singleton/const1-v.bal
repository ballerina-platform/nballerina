import ballerina/io;

type Color R|G|B;
const R = "red";
const G = "green";
const B = "blue";

public function main() {
    Color c = R;
    c = G;
    c = "green";
    c = B;
    io:println(c); // @output blue
}
