import ballerina/io;
type R1 record {
    (int|float) l1;
};

type R2 record {|
    int l1;
|};

type R1R2 R1&R2;

public function main() {
    R1R2 r = { l1: 1, "l2": "a" }; // @error
}
