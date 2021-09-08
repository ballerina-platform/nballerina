import ballerina/io;

public function main() {
    map<boolean> m = { x: true, y: false };
    io:println(m["x"]); // @output true
    io:println(m["y"]); // @output false
    if m["z"]  == () {
        io:println("nil"); // @output nil
    }
}
