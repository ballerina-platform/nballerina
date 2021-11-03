import ballerina/io;

type X record {|
    int x;
|};

type Y record {|
    int y;
|};

type XY X|Y;

public function main() {
    XY x = { x: 17 };
    if x is X {
        io:println(x.x); // @output 17
    }
}


