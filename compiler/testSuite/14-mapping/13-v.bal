import ballerina/io;

type BroadType record {|
    int a;
    float b;
|};

public function main() {
    if { a: 1, b: 2.0 } is BroadType {
        io:println("correct"); // @output correct
    }
    if { x: { a: 2, b: 3.0 } }.x is BroadType {
        io:println("correct"); // @output correct
    }
}
