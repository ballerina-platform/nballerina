import ballerina/io;
type R record {|
    int a;
|};

public function main() {
    [R, int, int] a = []; // @error
    io:println(a);
}
