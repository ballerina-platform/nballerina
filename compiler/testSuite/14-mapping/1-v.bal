import ballerina/io;

type BroadType record {|
    int a;
    float b;
|};

public function main() {
    io:println({a: 1, b: 2} == {a: 1, b: 2}); // @output true
    io:println({a: 1, b: 2} === {a: 1, b: 2}); // @output false
    if {a: 1, b: 2.0 } is BroadType {
        io:println("correct"); // @output correct
    }
}
