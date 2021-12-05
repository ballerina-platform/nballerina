import ballerina/io;

type R record {
    int x;
    float y;
};

public function main() {
    R r = { x: 17, y: 1 };
    string s = "x";
    io:println(r[s]); // @output 17
    s = "y";
    io:println(r[s]); // @output 1.0
}
