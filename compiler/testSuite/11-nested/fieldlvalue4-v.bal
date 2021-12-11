import ballerina/io;
type R record {|
    map<int> m;
|};

public function main() {
    R r = { m: {} };
    r.m["x"] = 32;
    io:println(r); // @output {"m":{"x":32}}
}
