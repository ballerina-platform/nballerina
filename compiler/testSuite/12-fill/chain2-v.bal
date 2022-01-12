import ballerina/io;
type R record {|
    int i;
|};

public function main() {
    map<R> m = {};
    m["x"] = { i: 4 };
    m["x"].i = 2;
    io:println(m["x"]); // @output {"i":2}
}
