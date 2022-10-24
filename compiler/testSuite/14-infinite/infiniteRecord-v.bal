import ballerina/io;
type A record {|
    int x;
    A a;
|} | ();

public function main() {
    A a = { x:10, a: () };	
    io:println(a); // @output {"a":null,"x":10}
}

