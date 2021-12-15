import ballerina/io;

type R record {
    int x;
    float y;
};

public function main() {
    R r = { x: 17, y: 1, "z": 10 };
    string s = "z";
    io:println(r[s]); // @output 10
    s = "y";
    io:println(r[s]); // @output 1.0
}
