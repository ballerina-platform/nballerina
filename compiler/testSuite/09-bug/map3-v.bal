import ballerina/io;

public function main() {
    map<int> m1 = { x: 1 };
    // intersection is empty map
    if m1 is map<string> {
        string? x = m1["x"];
        if x is () {
            io:println("nil");
        }
    }
    else {
        io:println("no"); // @output no
    }
}
