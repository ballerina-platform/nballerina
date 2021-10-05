import ballerina/io;

public function main() {
    map<int> m1 = { x: 1 };
    map<int|string> m2 = m1;
    if m2 is map<int|boolean> {
        m2["x"] = 17;
        int? n = m2["x"];
        io:println(n); // @output 17
    }
}
