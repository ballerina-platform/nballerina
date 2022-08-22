import ballerina/io;
type R1 record {|
    "a"|"b"|"c" l1;
    1|2|3...;
|};

type R2 record {|
    "b"|"c"|"d" l1;
    2|3|4...;
|};

type R3 record {|
    "c"|"d"|"e" l1;
    3|4|5...;
|};

type T R1 & R2 & R3;

public function main() {
    T a = { l1: "c", "other": 3 };
    "c" l1 = a["l1"];
    3? l2 = a["other"];
    io:println(l1); // @output c
    io:println(l2); // @output 3
}
