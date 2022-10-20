import ballerina/io;

type NN record {|
    int x;
    int y;
|};

type SS record {|
    string x;
    string y;
|};

type NS record {|
    int x;
    string y;
|};

type SN record {|
    string x;
    int y;
|};

type UU record {|
    int|string x;
    int|string y;
|};

type U NN|SS|NS|SN;

public function main() {
    SN ns = { x: "str", y:3 };
    U u = ns;

    if u is NN {
        io:println("NN");
    } else if u is SS {
        io:println("SS");
    } else if u is NS {
        io:println("NS");
    } else {
        SN _ = u;
        io:println("SN"); //  @output SN
    }
}
