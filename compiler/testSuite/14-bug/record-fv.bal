import ballerina/io;

type A record {|
    string a;
|};

type B record {|
    int a;
|};

type C A|B;

public function main() {
    C? b = {a: 1};
    io:println(b); // @output { a: 1 }
}
