import ballerina/io;

type R record {|
    int x;
    int y;
    int...;
|};
public function main() {
    R r = {x: 1, y: 2};
    r["z"] = 17;
    io:println(r["z"]); // @output 17
}
