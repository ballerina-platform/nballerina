import ballerina/io;

public function main() {
    map<int> m1 = { x: 1 };
    m1["x"] = 17;
    io:println(m1["x"]); // @output 17
}
