import ballerina/io;

type R record {
    int x;
    int y;
};

public function main() {
    R r = { x: 17, y: 42 };
    string s = "x";
    io:println(r[s]); // @output 17
    s = "y";
    io:println(r[s]); // @output 42
}
