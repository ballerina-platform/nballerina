import ballerina/io;

type R1 record {|
    int[] x;
|};

type R2 record {|
    R1 x;
|};

type R3 record {|
    R2 x;
|};

public function main() {
    R3 r = {x: { x: { x: [] }}};
    r.x.x.x.push(11);
    io:println(r.x.x.x[0]); // @output 11
}


