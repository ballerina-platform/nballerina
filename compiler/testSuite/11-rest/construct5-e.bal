import ballerina/io;

type R record {|
    int x;
    string...;
|};

public function main() {
    R r = { "x": "str" }; // @error
    io:println(r);
}
