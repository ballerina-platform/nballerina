import ballerina/io;

public function main() {
    map<int> m1 = { x: 1 };
    map<int|string> m2 = m1;
    if m2 is map<int> {
        int? i = m2["x"];
        io:println(i); // @output 1
    }
}
