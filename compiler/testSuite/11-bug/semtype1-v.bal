
import ballerina/io;

// If A follows B, the bug goes away.
type A int?[];

type B int[];

//type A map<int?>;
//type B map<int>;

type C A|B;

function foo(C v) returns A {
    return v; // this used to get a type check error
}

public function main() {
    int[] x = [17];
    io:println(foo(x)); // @output [17]
}

