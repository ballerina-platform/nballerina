import ballerina/io;

type R record {|
    int x;
    boolean y;
    string...;
|};

public function main() {
    R r = { x: 1, y: false };
    map<any> m = r;
    m["stuff"] = "xyzzy";
    m["stuff"] = "abc";
    m["x"] = 2;
    m["y"] = true;
    io:println(r.x); // @output 2
    io:println(r.y); // @output true
    io:println(r["stuff"]); // @output abc
    io:println(m === r); // @output true
}

