import ballerina/io;


type R1 record {|
    int x;
    string...;
|};

type R2 record {|
    int y;
    int...;
|};

public function main() {
    R1|R2 r = {x: 1};
    r["z"] = "hello";
    io:println(r["z"]); // @output hello
}
