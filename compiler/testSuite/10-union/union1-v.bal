import ballerina/io;

type A record {|
    int a;
|};

type B record {|
    boolean a;
|};

type AB A|B;

public function main() {
    B x = { a: true };
    AB y = x;
    if y is B {
        boolean b = y.a;
        io:println(b);  // @output true
    }
}
