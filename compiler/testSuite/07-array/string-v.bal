import ballerina/io;

public function main() {
    string[] x = [];
    x[1] = "x";
    x[3] = "y";
    io:println(x); // @output ["","x","","y"]
}
