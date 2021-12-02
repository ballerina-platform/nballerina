import ballerina/io;

type R record {|
    int x;
    string...;
|};

public function main() {
    R r = {
        x: 1,
        y: 2 // @error
    }; 
    io:println(r);
}
