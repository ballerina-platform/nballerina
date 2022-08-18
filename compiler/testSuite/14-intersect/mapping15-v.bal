import ballerina/io;
type R1 record {
    int l1;
    1|2 l2;
};

type R2 record {
    byte l1;
    2|3 l2;
};

public function main() {
    R1&R2 r = { l1: 5, l2: 2, "l3": "l" };
    byte? l1 = r.l1;
    io:println(l1); // @output 5
    io:println(r.l2); // @output 2
    io:println(r["l3"]); // @output l
}
