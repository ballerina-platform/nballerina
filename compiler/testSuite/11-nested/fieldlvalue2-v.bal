import ballerina/io;

type A record {|
    B b;
|};

type B record {|
    int i;
|};

public function main() {
    A a = { b: { i: 0 } };
    a.b.i += 4;
    a.b.i -= 2;
    io:println(a.b.i); // @output 2
}
