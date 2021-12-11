import ballerina/io;

type R1 record {|
    int x;
    int y;
    float...;
|};

type R2 record {|
    int x;
    int z;
    any...;
|};

public function main() {
    R1|R2 r = {"x": 1, "y": 2, "other": 17 };
    io:println(r["other"]); // @output 17.0
}
