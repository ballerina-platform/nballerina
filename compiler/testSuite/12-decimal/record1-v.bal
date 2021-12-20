import ballerina/io;
type R1 record {
    decimal d;
};

type R2 record {|
    decimal d;
    decimal...;
|};

type R3 record {
    record {
        decimal d1;
    } d;
};

public function main() {
    R1 r1 = { d: 1.2e34d };
    io:println(r1); // @output {"d":1.2E+34}

    R2 r2 = { d: 2d, "d1": 34, "d2": 1.2d };
    io:println(r2); // @output {"d":2,"d1":34,"d2":1.2}
    r2["d3"] = 1.2e3d;
    io:println(r2); // @output {"d":2,"d1":34,"d2":1.2,"d3":1.2E+3}

    R3 r3 = { d: { d1: 23d }};
    io:println(r3); // @output {"d":{"d1":23}}

    r3.d.d1 = 23.1d;
    io:println(r3); // @output {"d":{"d1":23.1}}
}
