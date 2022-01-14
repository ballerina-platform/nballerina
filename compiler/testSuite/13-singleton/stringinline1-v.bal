import ballerina/io;
public function main() {
    "X"|"Y" xy = "X";
    io:println(xy); // @output X
    "Z"|"X"|"Y" xyz = xy;
    xyz = "Z";
    io:println(xyz); // @output Z
}