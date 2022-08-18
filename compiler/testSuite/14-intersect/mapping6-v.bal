import ballerina/io;
type R1 record {
    (int|float) l1;
};

type R2 record {|
    (int|string) l1;
    string l2;
|};

public function main() {
    R1&R2 r = { l1: 1, "l2": "a" };
    io:println(r); // @output {"l1":1,"l2":"a"}
}
