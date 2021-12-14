import ballerina/io;

type A record {|
    B b;
|};

type B record {|
    C c;
|};

type C record {|
    int i;
|};

public function main() {
    A a = { b: { c: { i: 0 } } };
    string m = "i";
    a.b.c[m] = 8;
    io:println(a.b.c.i); // @output 8
}
