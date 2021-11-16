import ballerina/io;

type A readonly & record {|
    int|string a;
|};

type B readonly & record {|
    int|boolean a;
|};

public function main() {
    B x = { a : true };
    A|B y = x;
    if y is A {
        // ignore
    }
    else {
        boolean b = y.a;
        io:println(b); // @output true
    }
}
