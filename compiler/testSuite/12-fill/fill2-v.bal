import ballerina/io;

public function main() {
    map<map<int>> m = {};
    m["foo"]["bar"] = 42;
    io:println(m["foo"]); // @output {"bar":42}
}
