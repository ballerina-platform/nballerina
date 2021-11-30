import ballerina/io;

type R record {|
    int x;
    boolean y;
    string...;
|};

public function main() {
    R r = { x: 1, y: false };
    r["stuff"] = "xyzzy";
    r["stuff"] = "abc";
    r.x = 2;
    r.y = true;
    io:println(r.x); // @output 2
    io:println(r.y); // @output true
    io:println(r["stuff"]); // @output abc
}

