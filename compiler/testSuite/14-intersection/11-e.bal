import ballerina/io;
type R1 record {|
    int l1;
    1|2...;
|};

type R2 record {|
    1|2 l1;
    int...;
|};

type T R1 & R2;

public function main() {
    T a = { l1: 1, "l2": 5 }; // @error
    1|2|() l2 = a["l2"];
    io:println(l2);
}
