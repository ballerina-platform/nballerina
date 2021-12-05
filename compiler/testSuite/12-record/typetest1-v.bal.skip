import ballerina/io;

type R1 record {
    int n;
    float x;
};

type R2 record {
    int? n;
    float? x;
};

type R3 record {
    int n;
    float x;
    float y;
};

public function main() {
    R1 r1 = { n: 1, x: 1.5 };
    map<int|float?> m = r1;
    io:println(m is R1); // @output true
    io:println(m is R2); // @output true
    io:println(m is R3); // @output false
    R2 r2 = { n: 1, x: 1.5 };
    m = r2;
    io:println(m is R1); // @output false
    io:println(m is R2); // @output true
    m = { n: 1, x: 1.5 };
    io:println(m is R1); // @output false
    io:println(m is R2); // @output false
    any v = r1;
    io:println(v is map<int|float>); // @output true
    io:println(v is map<int|float?>); // @output true
    v = r2;
    io:println(v is map<int|float>); // @output false
    io:println(v is map<int|float?>); // @output true
}
