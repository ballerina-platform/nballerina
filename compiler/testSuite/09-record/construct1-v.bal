import ballerina/io;

type R record {|
    int x;
    int y;
|};

public function main() {
    R r = { x: 17, y: 42 };
    string s = "x";
    int? x = r[s];
    io:println(x); // @output 17
    s = "y";
    int? y = r[s];
    io:println(y); // @output 42
}
