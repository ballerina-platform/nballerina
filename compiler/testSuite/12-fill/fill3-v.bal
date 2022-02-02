import ballerina/io;

public function main() {
    map<map<map<int>>> m = {};
    m["foo"]["bar"]["baz"] = 42;
    io:println(m["foo"]); // @output {"bar":{"baz":42}}
}

