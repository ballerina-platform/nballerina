import ballerina/io;

public function main() {
    map<map<int>>[] m = [];
    m[0]["bar"]["baz"] = 42;
    io:println(m[0]); // @output {"bar":{"baz":42}}
}
