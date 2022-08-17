import ballerina/io;
type L ()|[L];

public function main() {
    L l = [[[()]]];
    io:println(l); // @output [[[null]]]
    l = [()];
    io:println(l); // @output [null]
    l = ();
    io:println(l); // @output  
}
