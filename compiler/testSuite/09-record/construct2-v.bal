import ballerina/io;

type R record {|
    int x;
    float y;
|};

public function main() {
    R r = { x: 17, y: 1 };
    string s = "x";
    float|int? x = r[s];
    io:println(x); // @output 17
    s = "y";
    float|int? y = r[s];
    io:println(y); // @output 1.0
}
