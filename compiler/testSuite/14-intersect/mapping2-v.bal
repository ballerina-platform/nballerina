import ballerina/io;
type R1 record {
    (int|float) l1;
};

type R2 record {
    int l1;
};

type R3 record {|
    int l1;
|};

public function main() {
    R1 & R2 r = { l1: 1 };
    if r is R3 {
        io:println("r is R3"); // @output r is R3
    }
    else {
        io:println("unexpected");
    }
}
