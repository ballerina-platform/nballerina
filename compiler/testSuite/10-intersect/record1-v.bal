import ballerina/io;

type R1 record {|
    int? x;
    float? y;
|};

type R2 record {|
    int|string x;
    float|string y;
|};

type R record {|
    int x;
    float y;
|};

public function main() {
    R r = {x:3,y:2.5};
    R1&R2 rr = r;
    r = rr;
    _ = r;
    int x = rr.x;
    io:println(x); // @output 3
    float y = rr.y;
    io:println(y); // @output 2.5
}