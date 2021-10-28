import ballerina/io;

type A record {|
    int|string a;
|};

type B record {|
    int|boolean a;
|};

public function main() {
    B x = { a : true };
    A|B y = x;
    if x is A {
        // ignore
    }
    else {
        boolean b = x.a;
        io:println(b); // @output true
    }
}
