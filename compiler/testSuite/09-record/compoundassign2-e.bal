
import ballerina/io;

public function main() {
    map<int?> m1 = { x: 1 };
    // intersection is empty map
    if m1 is map<string> {
        m1["x"] += "s"; // @error
        io:println(m1["x"]);
    }
    else {
        io:println("no");
    }
}
