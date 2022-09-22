import ballerina/io;

type I record {|
    int x;
|};

type S record {|
    string x;
|};

type IorS I|S;

public function main() {
    S a = { x: "str" };
    IorS b = a;

    if b is I {
        I _ = b;
        io:println("I");
    } else {
        S _ = b;
        io:println("S"); //  @output S
    }
}
